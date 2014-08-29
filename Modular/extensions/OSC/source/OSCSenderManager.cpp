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


#include "OSCSenderManager.h"

OSCSenderManager::OSCSenderManager()
{}

OSCSenderManager::~OSCSenderManager()
{}

TTObject OSCSenderManager::lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     last, v;
    TTObject    lastObject;
    TTSymbol    lastIp;
    TTUInt16    lastPort;
    TTErr       err;
    
    err = mSenders.lookup(applicationName, last);
    
    if (err)
        return this->add(applicationName, ip, port);
    
    else {
        
        lastObject = last[0];
        lastIp = last[1];
        lastPort = last[2];
        
        if (lastIp == ip && lastPort == port)
            ;
        
        else {
            
            v.append(lastObject);
            v.append(ip);
            v.append(port);
            
            mSenders.remove(applicationName);
            mSenders.append(applicationName,v);
        }
    }
    
    return lastObject;
}

TTObject OSCSenderManager::add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     v;
    TTObject    anObject("osc.send");
    
    anObject.set("address", ip);
    anObject.set("port", port);
    
    v.append(anObject);
    v.append(ip);
    v.append(port);
    
    mSenders.append(applicationName, v);
    
    return anObject;
}