/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"


TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	

	
	
	{
		TTTestLog("\n");
		TTTestLog("Testing TTMatrix Basics...");
		
		TTMatrixPtr matrix = NULL;
		TTErr err;
		
		err = TTObjectInstantiate(TT("matrix"), (TTObjectPtr*)&matrix, kTTValNONE);
		TTTestAssertion("instantiates successfully", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
		
		
		
		TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
		matrix->setAttributeValue(TT("dimensions"), 16);
		matrix->setAttributeValue(TT("type"), TT("float64"));
		matrix->setAttributeValue(TT("elementCount"), 2);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat64) * 16 * 2, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mValueStride == sizeof(TTFloat64) * 2, 
						testAssertionCount,
						errorCount);

		// Test the clear message
		// first fill with arbitrary values
		for (uint i=0; i < matrix->mDataSize; i += matrix->mValueStride) {
			*((TTFloat64*)(matrix->mData+i)) = i*0.1;							// real
			*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) = i*0.2;	// imaginary
		}
		// For debugging, post the contents
		//for (uint i=0; i < matrix->mDataSize; i += matrix->mValueStride) {
		//	cout << "[" << *((TTFloat64*)(matrix->mData+i)) << "+";
		//	cout <<        *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) << "i] ";
		//}
		//cout << endl;
		
		matrix->sendMessage(kTTSym_clear);
		int count = 0;
		for (uint i=0; i < matrix->mDataSize; i += matrix->mTypeSizeInBytes) {
			if (*((TTFloat64*)(matrix->mData+i)) != 0.0)
				count++;
		}
		TTTestAssertion("clear message correctly zeroes all elements of all values", 
						count == 0, 
						testAssertionCount,
						errorCount);

		TTValue v(0, 1);// specify the index and real, but forgot the imaginary
		err = matrix->sendMessage(TT("set"), v);
		TTTestAssertion("set message -- error returned when not enough data provided to completely set value", 
						err, 
						testAssertionCount,
						errorCount);
		
		v.setSize(3);		
		v.set(0, 15);	// index
		v.set(1, 3.14);	// real (no imaginary)
		v.set(2, -2);	// real (no imaginary)
		matrix->sendMessage(TT("set"), v);
		v.set(0, 10);	// index
		v.set(1, 4);	// real
		v.set(2, 1.2);	// imaginary
		matrix->sendMessage(TT("set"), v);
		
		cout << "		";
		for (uint i=0; i < matrix->mDataSize; i += matrix->mValueStride) {
			cout << "[" << *((TTFloat64*)(matrix->mData+i));
			TTFloat64 imag = *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes));
			if (imag >= 0.0)
				cout << "+";
			cout <<        *((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) << "i] ";
		}
		cout << endl;
		
		// TODO: would be nice to have a method to compare two matrices!
		int index = 0;
		for (uint i=0; i < matrix->mDataSize; i += matrix->mValueStride) {
			if (index == 10) {
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i)), 4.0))
					count++;
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)), 1.2))
					count++;
			}
			else if (index == 15) {
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i)), 3.14))
					count++;
				if (!TTTestFloatEquivalence(*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)), -2))
					count++;
			}
			else {
				if (*((TTFloat64*)(matrix->mData+i)) != 0.0)
					count++;
				if (*((TTFloat64*)(matrix->mData+i+matrix->mTypeSizeInBytes)) != 0.0)
					count++;
			}
			//TTTestLog("count: %ld   @  %ld", count, index);
			index++;
		}
		TTTestAssertion("set message correctly sets compound values in a vector (1D matrix)", 
						count == 0, 
						testAssertionCount,
						errorCount);
		
		
		
		
		TTTestLog("");
		TTTestLog("Setting to a 2D image matrix (8-bit int, 4 elements per value for rgba color) with a size of 160 x 120");
		TTValue dims(160, 120);
		matrix->setAttributeValue(TT("dimensions"), dims);
		matrix->setAttributeValue(TT("type"), TT("uint8"));
		matrix->setAttributeValue(TT("elementCount"), 4);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTUInt8) * 160 * 120 * 4, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mValueStride == sizeof(TTUInt8) * 4, 
						testAssertionCount,
						errorCount);

		
		
		
		
		TTTestLog("");
		TTTestLog("Setting to a 3D matrix with a size of 5 x 3 x 4 using float32 data and a single element per value");
		dims.setSize(3);
		dims.set(0, 5);
		dims.set(1, 3);
		dims.set(2, 4);
		matrix->setAttributeValue(TT("dimensions"), dims);
		matrix->setAttributeValue(TT("type"), TT("float32"));
		matrix->setAttributeValue(TT("elementCount"), 1);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat32) * 5 * 3 * 4 * 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mValueStride == sizeof(TTFloat32) * 1, 
						testAssertionCount,
						errorCount);
		
		

		
		TTTestLog("");
		TTTestLog("Setting to a 4D matrix with a size of 6 x 7 x 8 x 9 using int32 data and a single element per value");
		dims.setSize(4);
		dims.set(0, 6);
		dims.set(1, 7);
		dims.set(2, 8);
		dims.set(3, 9);
		matrix->setAttributeValue(TT("dimensions"), dims);
		matrix->setAttributeValue(TT("type"), TT("int32"));
		matrix->setAttributeValue(TT("elementCount"), 1);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTInt32) * 6 * 7 * 8 * 9 * 1, 
						testAssertionCount,
						errorCount);
		TTTestAssertion("correct byte-stride between values calculated", 
						matrix->mValueStride == sizeof(TTInt32) * 1, 
						testAssertionCount,
						errorCount);
		
		
		err = TTObjectRelease((TTObjectPtr*)&matrix);
		TTTestAssertion("frees successfully", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
	}	
	
	
	
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
