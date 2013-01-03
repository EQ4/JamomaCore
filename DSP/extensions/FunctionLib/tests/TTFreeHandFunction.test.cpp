/*
 * Unit tests for the Jamoma DSP FreeHand of the FunctionLib 
 * Copyright © 2012, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFunction.h"
#include "TTFreeHandFunction.h"


/*

 // We test using ... 
 */

TTErr TTFreeHandFunction::test(TTValue& returnedTestInfo)
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
		1.2888187396638967e-03,
		2.6555334980766371e-03,
		4.1046191017844510e-03,
		5.6407778689472497e-03,
		7.2689473805817705e-03,
		8.9943079966691569e-03,
		1.0822290024937141e-02,
		1.2758580438150710e-02,
		1.4809129022838886e-02,
		1.6980153828563840e-02,
		1.9278145772136265e-02,
		2.1709872235661093e-02,
		2.4282379481054574e-02,
		2.7002993686838356e-02,
		2.9879320395769886e-02,
		3.2919242144436624e-02,
		3.6130914028613001e-02,
		3.9522756941310036e-02,
		4.3103448204465565e-02,
		4.6881909300631561e-02,
		5.0867290398419938e-02,
		5.5068951355544245e-02,
		5.9496438876826693e-02,
		6.4159459502405897e-02,
		6.9067848104532648e-02,
		7.4231531580836022e-02,
		7.9660487448883086e-02,
		8.5364697072407431e-02,
		9.1354093284923915e-02,
		9.7638502222736095e-02,
		1.0422757923768325e-01,
		1.1113073883134192e-01,
		1.1835707863758407e-01,
		1.2591529757994183e-01,
		1.3381360844431853e-01,
		1.4205964523598882e-01,
		1.5066036583177095e-01,
		1.5962195059236411e-01,
		1.6894969776404256e-01,
		1.7864791667035329e-01,
		1.8871981986951353e-01,
		1.9916741562738066e-01,
		2.0999140222386417e-01,
		2.2119106576644540e-01,
		2.3276418332140286e-01,
		2.4470693328432372e-01,
		2.5701381498921211e-01,
		2.6967757959279937e-01,
		2.8268917426076395e-01,
		2.9603770161960280e-01,
		3.0971039631719888e-01,
		3.2369262035375795e-01,
		3.3796787860181460e-01,
		3.5251785563091254e-01,
		3.6732247459344242e-01,
		3.8235997851978554e-01,
		3.9760703392289520e-01,
		4.1303885613678470e-01,
		4.2862935532426499e-01,
		4.4435130160248815e-01,
		4.6017650726718884e-01,
		4.7607602366490365e-01,
		4.9202034988319643e-01,
		5.0797965011680357e-01,
		5.2392397633509635e-01,
		5.3982349273281116e-01,
		5.5564869839751174e-01,
		5.7137064467573495e-01,
		5.8696114386321530e-01,
		6.0239296607710491e-01,
		6.1764002148021446e-01,
		6.3267752540655764e-01,
		6.4748214436908746e-01,
		6.6203212139818535e-01,
		6.7630737964624199e-01,
		6.9028960368280123e-01,
		7.0396229838039714e-01,
		7.1731082573923599e-01,
		7.3032242040720063e-01,
		7.4298618501078784e-01,
		7.5529306671567631e-01,
		7.6723581667859719e-01,
		7.7880893423355446e-01,
		7.9000859777613575e-01,
		8.0083258437261939e-01,
		8.1128018013048653e-01,
		8.2135208332964671e-01,
		8.3105030223595744e-01,
		8.4037804940763583e-01,
		8.4933963416822900e-01,
		8.5794035476401109e-01,
		8.6618639155568145e-01,
		8.7408470242005831e-01,
		8.8164292136241584e-01,
		8.8886926116865805e-01,
		8.9577242076231667e-01,
		9.0236149777726393e-01,
		9.0864590671507606e-01,
		9.1463530292759254e-01,
		9.2033951255111701e-01,
		9.2576846841916405e-01,
		9.3093215189546741e-01,
		9.3584054049759413e-01,
		9.4050356112317335e-01,
		9.4493104864445576e-01,
		9.4913270960158014e-01,
		9.5311809069936848e-01,
		9.5689655179553446e-01,
		9.6047724305868998e-01,
		9.6386908597138710e-01,
		9.6708075785556336e-01,
		9.7012067960423010e-01,
		9.7299700631316166e-01,
		9.7571762051894551e-01,
		9.7829012776433899e-01,
		9.8072185422786373e-01,
		9.8301984617143623e-01,
		9.8519087097716118e-01,
		9.8724141956184930e-01,
		9.8917770997506294e-01,
		9.9100569200333088e-01,
		9.9273105261941830e-01,
		9.9435922213105277e-01,
		9.9589538089821561e-01,
		9.9734446650192343e-01,
		9.9871118126033609e-01,
		1.0000000000000000e+00,
	};	
	
	// setup Function 
	this->setAttributeValue(TT("function"), TT("freehand"));

	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
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
	
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}