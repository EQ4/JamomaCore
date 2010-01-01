/* 
 * WindowFunctionLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place & Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "BartlettWindow.h"
#include "RectangularWindow.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	BartlettWindow::registerClass();
	RectangularWindow::registerClass();
	
	return kTTErrNone;
}

