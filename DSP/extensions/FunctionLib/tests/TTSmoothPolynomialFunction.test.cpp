/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief Unit tests for the Jamoma DSP #TTSmoothPolynomialFunction of the #TTFunctionLib
 *
 * @details
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2012 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFunction.h"
#include "TTSmoothPolynomialFunction.h"


/*
 * coefficients calculated in Matlab using:

 x = linspace(0,1,128);
 y = 6.*x.^5 - 15.*x.^4 + 10.*x.^3;
 printf("%.16e,\n", y)
 
 */

TTErr TTSmoothPolynomialFunction::test(TTValue& returnedTestInfo)
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
	1.3385826771653545e-01, 
	1.4173228346456693e-01, 
	1.4960629921259844e-01, 
	1.5748031496062992e-01, 
	1.6535433070866143e-01, 
	1.7322834645669291e-01, 
	1.8110236220472442e-01, 
	1.8897637795275590e-01, 
	1.9685039370078741e-01, 
	2.0472440944881889e-01, 
	2.1259842519685040e-01, 
	2.2047244094488189e-01, 
	2.2834645669291340e-01, 
	2.3622047244094488e-01, 
	2.4409448818897639e-01, 
	2.5196850393700787e-01, 
	2.5984251968503935e-01, 
	2.6771653543307089e-01, 
	2.7559055118110237e-01, 
	2.8346456692913385e-01, 
	2.9133858267716534e-01, 
	2.9921259842519687e-01, 
	3.0708661417322836e-01, 
	3.1496062992125984e-01, 
	3.2283464566929132e-01, 
	3.3070866141732286e-01, 
	3.3858267716535434e-01, 
	3.4645669291338582e-01, 
	3.5433070866141730e-01, 
	3.6220472440944884e-01, 
	3.7007874015748032e-01, 
	3.7795275590551181e-01, 
	3.8582677165354329e-01, 
	3.9370078740157483e-01, 
	4.0157480314960631e-01, 
	4.0944881889763779e-01, 
	4.1732283464566927e-01, 
	4.2519685039370081e-01, 
	4.3307086614173229e-01, 
	4.4094488188976377e-01, 
	4.4881889763779526e-01, 
	4.5669291338582679e-01, 
	4.6456692913385828e-01, 
	4.7244094488188976e-01, 
	4.8031496062992124e-01, 
	4.8818897637795278e-01, 
	4.9606299212598426e-01, 
	5.0393700787401574e-01, 
	5.1181102362204722e-01, 
	5.1968503937007871e-01, 
	5.2755905511811019e-01, 
	5.3543307086614178e-01, 
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
	6.6141732283464572e-01, 
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
	7.8740157480314965e-01, 
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
	9.1338582677165359e-01, 
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
		4.8244209039635314e-06, 
		3.8138443955198070e-05, 
		1.2718493906995618e-04, 
		2.9786651631526754e-04, 
		5.7476731875201535e-04, 
		9.8117481527801352e-04, 
		1.5391015934710839e-03, 
		2.2693071524321311e-03, 
		3.1913196956282223e-03, 
		4.3234579237356610e-03, 
		5.6828528274830668e-03, 
		7.2854694804944482e-03, 
		9.1461288321322883e-03, 
		1.1278529500340605e-02, 
		1.3695269564488044e-02, 
		1.6407868358210953e-02, 
		1.9426788262256446e-02, 
		2.2761456497325496e-02, 
		2.6420286916916010e-02, 
		3.0410701800165873e-02, 
		3.4739153644696097e-02, 
		3.9411146959453816e-02, 
		4.4431260057555426e-02, 
		4.9803166849129596e-02, 
		5.5529658634160470e-02, 
		6.1612665895330529e-02, 
		6.8053280090863921e-02, 
		7.4851775447369331e-02, 
		8.2007630752683164e-02, 
		8.9519551148712656e-02, 
		9.7385489924278826e-02, 
		1.0560267030795963e-01, 
		1.1416760726093299e-01, 
		1.2307612926982006e-01, 
		1.3232340013952798e-01, 
		1.4190394078609317e-01, 
		1.5181165102952443e-01, 
		1.6203983138664596e-01, 
		1.7258120486394016e-01, 
		1.8342793875039137e-01, 
		1.9457166641032828e-01, 
		2.0600350907626741e-01, 
		2.1771409764175598e-01, 
		2.2969359445421497e-01, 
		2.4193171510778244e-01, 
		2.5441775023615654e-01, 
		2.6714058730543810e-01, 
		2.8008873240697457e-01, 
		2.9325033205020234e-01, 
		3.0661319495549044e-01, 
		3.2016481384698270e-01, 
		3.3389238724544185e-01, 
		3.4778284126109205e-01, 
		3.6182285138646236e-01, 
		3.7599886428922880e-01, 
		3.9029711960505920e-01, 
		4.0470367173045396e-01, 
		4.1920441161559163e-01, 
		4.3378508855717035e-01, 
		4.4843133199125074e-01, 
		4.6312867328610041e-01, 
		4.7786256753503586e-01, 
		4.9261841534926576e-01, 
		5.0738158465073435e-01, 
		5.2213743246496436e-01, 
		5.3687132671389948e-01, 
		5.5156866800874915e-01, 
		5.6621491144282976e-01, 
		5.8079558838440848e-01, 
		5.9529632826954604e-01, 
		6.0970288039494136e-01, 
		6.2400113571077132e-01, 
		6.3817714861353769e-01, 
		6.5221715873890806e-01, 
		6.6610761275455821e-01, 
		6.7983518615301786e-01, 
		6.9338680504450978e-01, 
		7.0674966794979754e-01, 
		7.1991126759302526e-01, 
		7.3285941269456178e-01, 
		7.4558224976384357e-01, 
		7.5806828489221756e-01, 
		7.7030640554578467e-01, 
		7.8228590235824358e-01, 
		7.9399649092373314e-01, 
		8.0542833358967236e-01, 
		8.1657206124960879e-01, 
		8.2741879513605987e-01, 
		8.3796016861335465e-01, 
		8.4818834897047601e-01, 
		8.5809605921390641e-01, 
		8.6767659986047230e-01, 
		8.7692387073018008e-01, 
		8.8583239273906678e-01, 
		8.9439732969204044e-01, 
		9.0261451007572102e-01, 
		9.1048044885128654e-01, 
		9.1799236924731620e-01, 
		9.2514822455263168e-01, 
		9.3194671990913625e-01, 
		9.3838733410466979e-01, 
		9.4447034136584040e-01, 
		9.5019683315087100e-01, 
		9.5556873994244551e-01, 
		9.6058885304054709e-01, 
		9.6526084635530474e-01, 
		9.6958929819983375e-01, 
		9.7357971308308588e-01, 
		9.7723854350267647e-01, 
		9.8057321173774348e-01, 
		9.8359213164178971e-01, 
		9.8630473043551437e-01, 
		9.8872147049965875e-01, 
		9.9085387116786894e-01, 
		9.9271453051950509e-01, 
		9.9431714717251651e-01, 
		9.9567654207626521e-01, 
		9.9680868030437164e-01, 
		9.9773069284756843e-01, 
		9.9846089840652841e-01, 
		9.9901882518472185e-01, 
		9.9942523268124717e-01, 
		9.9970213348368553e-01, 
		9.9987281506093062e-01, 
		9.9996186155604327e-01, 
		9.9999517557909634e-01, 
		1.0000000000000000e+00
		};	
	
	// setup Function 
	this->setAttributeValue(TT("function"), TT("smoothPolynomial"));

	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// create a signal to be transformed and then process it)
	input->clear();	
	for (int i=0; i<N; i++)
		input->mSampleVectors[0][i] = inputSignal1[i]; 
	
	this->process(input, output);
	
	// now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], expectedSignal1[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], expectedSignal1[n]);
	}
	
	TTTestAssertion("Produces correct function values", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}