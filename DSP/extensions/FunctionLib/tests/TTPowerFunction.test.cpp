/*
 * Unit tests for the Jamoma DSP PowerFunction of the FunctionLib 
 * Copyright © 2012, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFunction.h"
#include "TTPowerFunction.h"


/*
 
 Equations for the tests:
 
 We are using
 powerValue = 1
 
 mK = pow(2, powerValue) = pow(2, 1.) = 2;
 
 Test 1: Currently we only test for the simple no symmetry case:
 
 y = pow(x, mK);
 
 The coefficients are calculated in Octave using:
 
 x = linspace(0,1,128);
 printf("%.16e,\n", x);
 
 y = power(x, 2);
 printf("%.16e,\n", y)
 
 */
 

TTErr TTPowerFunction::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	

	TTFloat64 inputSignal1[128] = {
		0.0000000000000000e+00,
		7.8740157480314960e-03,
		1.5748031496062992e-02,
		2.3622047244094488e-02,
		3.1496062992125984e-02,
		3.9370078740157480e-02,
		4.7244094488188976e-02,
		5.5118110236220472e-02,
		6.2992125984251968e-02,
		7.0866141732283464e-02,
		7.8740157480314960e-02,
		8.6614173228346455e-02,
		9.4488188976377951e-02,
		1.0236220472440945e-01,
		1.1023622047244094e-01,
		1.1811023622047244e-01,
		1.2598425196850394e-01,
		1.3385826771653542e-01,
		1.4173228346456693e-01,
		1.4960629921259844e-01,
		1.5748031496062992e-01,
		1.6535433070866140e-01,
		1.7322834645669291e-01,
		1.8110236220472442e-01,
		1.8897637795275590e-01,
		1.9685039370078738e-01,
		2.0472440944881889e-01,
		2.1259842519685040e-01,
		2.2047244094488189e-01,
		2.2834645669291337e-01,
		2.3622047244094488e-01,
		2.4409448818897639e-01,
		2.5196850393700787e-01,
		2.5984251968503935e-01,
		2.6771653543307083e-01,
		2.7559055118110237e-01,
		2.8346456692913385e-01,
		2.9133858267716534e-01,
		2.9921259842519687e-01,
		3.0708661417322836e-01,
		3.1496062992125984e-01,
		3.2283464566929132e-01,
		3.3070866141732280e-01,
		3.3858267716535434e-01,
		3.4645669291338582e-01,
		3.5433070866141730e-01,
		3.6220472440944884e-01,
		3.7007874015748032e-01,
		3.7795275590551181e-01,
		3.8582677165354329e-01,
		3.9370078740157477e-01,
		4.0157480314960631e-01,
		4.0944881889763779e-01,
		4.1732283464566927e-01,
		4.2519685039370081e-01,
		4.3307086614173229e-01,
		4.4094488188976377e-01,
		4.4881889763779526e-01,
		4.5669291338582674e-01,
		4.6456692913385828e-01,
		4.7244094488188976e-01,
		4.8031496062992124e-01,
		4.8818897637795278e-01,
		4.9606299212598426e-01,
		5.0393700787401574e-01,
		5.1181102362204722e-01,
		5.1968503937007871e-01,
		5.2755905511811019e-01,
		5.3543307086614167e-01,
		5.4330708661417326e-01,
		5.5118110236220474e-01,
		5.5905511811023623e-01,
		5.6692913385826771e-01,
		5.7480314960629919e-01,
		5.8267716535433067e-01,
		5.9055118110236215e-01,
		5.9842519685039375e-01,
		6.0629921259842523e-01,
		6.1417322834645671e-01,
		6.2204724409448819e-01,
		6.2992125984251968e-01,
		6.3779527559055116e-01,
		6.4566929133858264e-01,
		6.5354330708661412e-01,
		6.6141732283464560e-01,
		6.6929133858267720e-01,
		6.7716535433070868e-01,
		6.8503937007874016e-01,
		6.9291338582677164e-01,
		7.0078740157480313e-01,
		7.0866141732283461e-01,
		7.1653543307086609e-01,
		7.2440944881889768e-01,
		7.3228346456692917e-01,
		7.4015748031496065e-01,
		7.4803149606299213e-01,
		7.5590551181102361e-01,
		7.6377952755905509e-01,
		7.7165354330708658e-01,
		7.7952755905511806e-01,
		7.8740157480314954e-01,
		7.9527559055118113e-01,
		8.0314960629921262e-01,
		8.1102362204724410e-01,
		8.1889763779527558e-01,
		8.2677165354330706e-01,
		8.3464566929133854e-01,
		8.4251968503937003e-01,
		8.5039370078740162e-01,
		8.5826771653543310e-01,
		8.6614173228346458e-01,
		8.7401574803149606e-01,
		8.8188976377952755e-01,
		8.8976377952755903e-01,
		8.9763779527559051e-01,
		9.0551181102362199e-01,
		9.1338582677165348e-01,
		9.2125984251968507e-01,
		9.2913385826771655e-01,
		9.3700787401574803e-01,
		9.4488188976377951e-01,
		9.5275590551181100e-01,
		9.6062992125984248e-01,
		9.6850393700787396e-01,
		9.7637795275590555e-01,
		9.8425196850393704e-01,
		9.9212598425196852e-01,
		1.0000000000000000e+00
	};

	TTFloat64 expectedSignal1[128] = { 
		0.0000000000000000e+00,
		6.2000124000247993e-05,
		2.4800049600099197e-04,
		5.5800111600223194e-04,
		9.9200198400396788e-04,
		1.5500031000062000e-03,
		2.2320044640089277e-03,
		3.0380060760121521e-03,
		3.9680079360158715e-03,
		5.0220100440200883e-03,
		6.2000124000248001e-03,
		7.5020150040300080e-03,
		8.9280178560357110e-03,
		1.0478020956041912e-02,
		1.2152024304048608e-02,
		1.3950027900055799e-02,
		1.5872031744063486e-02,
		1.7918035836071669e-02,
		2.0088040176080353e-02,
		2.2382044764089531e-02,
		2.4800049600099201e-02,
		2.7342054684109364e-02,
		3.0008060016120032e-02,
		3.2798065596131194e-02,
		3.5712071424142844e-02,
		3.8750077500154995e-02,
		4.1912083824167647e-02,
		4.5198090396180800e-02,
		4.8608097216194433e-02,
		5.2142104284208561e-02,
		5.5800111600223197e-02,
		5.9582119164238334e-02,
		6.3488126976253945e-02,
		6.7518135036270063e-02,
		7.1672143344286676e-02,
		7.5950151900303811e-02,
		8.0352160704321413e-02,
		8.4878169756339508e-02,
		8.9528179056358126e-02,
		9.4302188604377210e-02,
		9.9200198400396802e-02,
		1.0422220844441688e-01,
		1.0936821873643746e-01,
		1.1463822927645856e-01,
		1.2003224006448013e-01,
		1.2555025110050219e-01,
		1.3119226238452478e-01,
		1.3695827391654783e-01,
		1.4284828569657138e-01,
		1.4886229772459544e-01,
		1.5500031000061998e-01,
		1.6126232252464506e-01,
		1.6764833529667059e-01,
		1.7415834831669660e-01,
		1.8079236158472320e-01,
		1.8755037510075021e-01,
		1.9443238886477773e-01,
		2.0143840287680573e-01,
		2.0856841713683424e-01,
		2.1582243164486328e-01,
		2.2320044640089279e-01,
		2.3070246140492279e-01,
		2.3832847665695334e-01,
		2.4607849215698432e-01,
		2.5395250790501578e-01,
		2.6195052390104778e-01,
		2.7007254014508025e-01,
		2.7831855663711325e-01,
		2.8668857337714670e-01,
		2.9518259036518074e-01,
		3.0380060760121524e-01,
		3.1254262508525016e-01,
		3.2140864281728565e-01,
		3.3039866079732155e-01,
		3.3951267902535803e-01,
		3.4875069750139492e-01,
		3.5811271622543250e-01,
		3.6759873519747044e-01,
		3.7720875441750884e-01,
		3.8694277388554776e-01,
		3.9680079360158721e-01,
		4.0678281356562712e-01,
		4.1688883377766750e-01,
		4.2711885423770840e-01,
		4.3747287494574982e-01,
		4.4795089590179182e-01,
		4.5855291710583423e-01,
		4.6927893855787711e-01,
		4.8012896025792051e-01,
		4.9110298220596438e-01,
		5.0220100440200877e-01,
		5.1342302684605357e-01,
		5.2476904953809911e-01,
		5.3623907247814495e-01,
		5.4783309566619132e-01,
		5.5955111910223820e-01,
		5.7139314278628550e-01,
		5.8335916671833343e-01,
		5.9544919089838177e-01,
		6.0766321532643053e-01,
		6.2000124000247991e-01,
		6.3246326492652993e-01,
		6.4504929009858025e-01,
		6.5775931551863109e-01,
		6.7059334118668235e-01,
		6.8355136710273412e-01,
		6.9663339326678642e-01,
		7.0983941967883923e-01,
		7.2316944633889280e-01,
		7.3662347324694655e-01,
		7.5020150040300082e-01,
		7.6390352780705562e-01,
		7.7772955545911093e-01,
		7.9167958335916666e-01,
		8.0575361150722291e-01,
		8.1995163990327968e-01,
		8.3427366854733698e-01,
		8.4871969743939490e-01,
		8.6328972657945313e-01,
		8.7798375596751199e-01,
		8.9280178560357115e-01,
		9.0774381548763095e-01,
		9.2280984561969115e-01,
		9.3799987599975188e-01,
		9.5331390662781335e-01,
		9.6875193750387512e-01,
		9.8431396862793730e-01,
		1.0000000000000000e+00
	};	
	
	// Setup function
	this->setAttributeValue(TT("function"), TT("power"));
	
	// TEST 1: Default powerValue attribute
	TTFloat64 defaultPowerValue;
    this->getAttributeValue(TT("powerValue"), defaultPowerValue);
    TTTestAssertion("Default value for power attribute",
					TTTestFloatEquivalence(defaultPowerValue, 1.0),
					testAssertionCount,
					errorCount);
	
	// TEST 2: Default symmetry attribute
	TTSymbol defaultSymmetry;
    this->getAttributeValue(TT("symmetry"), defaultSymmetry);
    TTTestAssertion("Default value for power attribute",
					defaultSymmetry == "none",
					testAssertionCount,
					errorCount);
	
	// Create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// Create a signal to be transformed and then process it
	input->clear();
	for (int i=0; i<N; i++)
		input->mSampleVectors[0][i] = inputSignal1[i];
	this->process(input, output);
	
	// Now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], expectedSignal1[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], expectedSignal1[n]);
	}
	
    if (badSampleCount)
		TTTestLog("badSampleCount is %ld", badSampleCount);
    
	TTTestAssertion("Produces correct function values", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	// Wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}