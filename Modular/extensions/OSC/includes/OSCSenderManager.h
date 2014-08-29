/** @file
 *
 * @ingroup modularOSC
 *
 * @brief An OSC send object manager
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef OSC_SENDER_MANAGER
#define OSC_SENDER_MANAGER

#include "OSC.h"

class OSC;
typedef OSC* OSCPtr;

class OSCSenderManager {
	
private:
	TTHash   mSenders;
	
public:

	OSCSenderManager();
	virtual ~OSCSenderManager();
	
    // check if the parameter are still the same and change the parameter if not
    // if the sender doesn't exist it adds a sender
    TTObject     lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
    
private:
    // add a new sender for an application
	TTObject     add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
};
typedef OSCSenderManager* OSCSenderManagerPtr;

#endif // OSC_SENDER_MANAGER
