/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "TTPluginHandler.h"
#include "PluginFactories.h"

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplications(NULL),
mApplicationNames(kTTValNONE),
mPluginNames(kTTValNONE),
mCurrentApplication(NULL)
{	
	TTString pluginFolderPath;
	
	TT_ASSERT("Correct number of args to create TTApplicationManager", arguments.getSize() == 1);
	arguments.get(0, pluginFolderPath);
	
	addAttribute(Applications, kTypePointer);
	addAttributeProperty(applications, readOnly, YES);
	
	addAttributeWithGetter(ApplicationNames, kTypeLocalValue);
	addAttributeProperty(applicationNames, readOnly, YES);
	
	registerAttribute(TT("applicationLocalName"), kTypeSymbol, kTTSym_localApplicationName, (TTGetterMethod)& TTApplicationManager::getApplicationLocalName);
	addAttributeProperty(applicationLocalName, readOnly, YES);
	
	addAttributeWithGetter(PluginNames, kTypeLocalValue);
	addAttributeProperty(pluginNames, readOnly, YES);
	
	addMessageWithArgument(Add);
	addMessageWithArgument(Remove);
	addMessage(Scan);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mApplications = new TTHash();
	mPluginFactories = new PluginFactories();
	mPlugins = new TTHash();
	
	mPluginFactories->loadPlugins(pluginFolderPath.data());
	
	IteratorPluginNames it = mPluginFactories->getPluginNames();
	
	while (it.hasNext()) {
		TTString pluginName = it.next();
		TTPluginHandlerPtr aPluginObject = NULL;
		TTValue args;
		PluginPtr plugin = mPluginFactories->createPlugin(pluginName, (TTObjectPtr)this);
		
		if (plugin != 0) {
			
			// DEBUG
			TTLogDebug("%s plugin loaded", pluginName.data());
			
			// create an instance of TTPluginHandler object
			args = TTValue((TTPtr)plugin);
			TTObjectInstantiate(TT("PluginHandler"), TTObjectHandle(&aPluginObject), args);
			
			// add it to Modular plugins table
			args = TTValue((TTPtr)aPluginObject);
			mPlugins->append(TT(pluginName), args);
		}
	}
}

TTApplicationManager::~TTApplicationManager()
{
	delete mApplications;
}

TTErr TTApplicationManager::getApplicationNames(TTValue& value)
{
	return mApplications->getKeys(value);
}

TTErr TTApplicationManager::getApplicationLocalName(TTValue& value)
{
	value = kTTSym_localApplicationName;
	return kTTErrNone;
}

TTErr TTApplicationManager::getPluginNames(TTValue& value)
{
	return mPlugins->getKeys(value);
}

TTErr TTApplicationManager::Add(const TTValue& value)
{
	TTValue				v, allPluginNames;
	TTSymbolPtr			applicationName, pluginName;
	TTHashPtr			pluginParameters, parameters;
	TTApplicationPtr	anApplication;
	TTPluginHandlerPtr	aPlugin;
	TTErr				err;
	
	value.get(0, &applicationName);
	value.get(1, (TTPtr*) &anApplication);
	
	// add application to the manager
	mApplications->append(applicationName, (TTPtr)anApplication);
	
	// get all plugin names of the application 
	anApplication->getAttributeValue(TT("pluginParameters"), v);
	v.get(0, (TTPtr*)&pluginParameters);
	pluginParameters->getKeys(allPluginNames);
	
	// then for each plugin handled by the application
	for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {

		allPluginNames.get(i, &pluginName);
		err = mPlugins->lookup(pluginName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPlugin);
			
			// get parameters
			pluginParameters->lookup(pluginName, v);
			v.get(0, (TTPtr*)&parameters);
			
			// if local application : set plugin reception parameters
			if (applicationName == kTTSym_localApplicationName) {
				v = TTValue((TTPtr)parameters);
				aPlugin->setAttributeValue(TT("parameters"), v);
			}
			
			// else : add distant application to the plugin
			else
				;// TODO : aPlugin->applicationAdd(applicationName, parameters);
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::Remove(const TTValue& value)
{	
	TTValue				v, allPluginNames;
	TTSymbolPtr			applicationName, pluginName;
	TTHashPtr			pluginParameters;
	TTApplicationPtr	anApplication;
	TTPluginHandlerPtr			aPlugin;
	TTErr				err;
	
	value.get(0, &applicationName);
	
	// add application to the manager
	err = mApplications->lookup(applicationName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&anApplication);
		
		// get all plugin names of the application 
		anApplication->getAttributeValue(TT("pluginParameters"), v);
		v.get(0, (TTPtr*)&pluginParameters);
		pluginParameters->getKeys(allPluginNames);
		
		// then for each plugin handled by the application
		for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
			
			allPluginNames.get(i, &pluginName);
			err = mPlugins->lookup(pluginName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aPlugin);
				
				// if local application : forgive plugin reception parameters
				if (applicationName == kTTSym_localApplicationName)
					; // TODO
				
				// else : remove distant application from the plugin
				else
					; // TODO : aPlugin->applicationRemove(applicationName);
			}
		}
		
		return mApplications->remove(applicationName);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::Scan()
{
	TTValue			v, keys;
	TTSymbolPtr		pluginName;
	TTPluginHandlerPtr		aPlugin;
	
	// for each plugin
	mPlugins->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &pluginName);
			mPlugins->lookup(pluginName, v);
			v.get(0, (TTPtr*)&aPlugin);
			
			// TODO : scan the network to look for distant applications
			// and then add them to the ApplicationManager
	}

	return kTTErrNone;
}

TTErr TTApplicationManager::PluginRun(const TTValue& value)
{
	TTValue v;
	TTSymbolPtr pluginName;
	TTPluginHandlerPtr aPlugin;
	
	value.get(0, &pluginName);
	
	if (!mPlugins->lookup(pluginName, v)) {
		v.get(0, (TTPtr*)&aPlugin);
		aPlugin->sendMessage(TT("Run"));
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			applicationName, version;
	TTApplicationPtr	anApplication;
    TTValue				keys, v;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
    xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "TODO : a TTApplication Manager comment");
	
	// For each application
	mApplications->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
		
		keys.get(i, &applicationName);
		mApplications->lookup(applicationName, v);
		v.get(0, (TTPtr*)&anApplication);
		
		// Start "application" xml node
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "application");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST applicationName->getCString());
		
		anApplication->getAttributeValue(TT("version"), v);
		v.get(0, &version);
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "version", "%s", BAD_CAST version->getCString());
		
		v = TTValue(TTPtr(anApplication));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TT("Write"));
		
		// End "application" xml node
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbolPtr			applicationName, currentApplicationName, version;
	TTApplicationPtr	anApplication;
	TTValue				v, args;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		
		mCurrentApplication = NULL;
		
		// stop plugin reception threads
		mPlugins->iterate((TTPtr)this, TTApplicationManagerStopPlugins);

		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		
		// start plugin reception threads
		mPlugins->iterate((TTPtr)this, TTApplicationManagerStartPlugins);
		
		return kTTErrNone;
	}
	
	// comment node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// application node
	if (aXmlHandler->mXmlNodeName == TT("application")) {
		
		// get the application name 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &applicationName);
		}
		
		// if it is the end of a "application" xml node
		if (mCurrentApplication) {
			mCurrentApplication->getAttributeValue(kTTSym_name, v);
			v.get(0, &currentApplicationName);
			
			if (applicationName == currentApplicationName) {
				
				// if the application is not registered : add it
				if (mApplications->lookup(applicationName, v)) {
					v = TTValue(applicationName);
					v.append((TTPtr)mCurrentApplication);
					Add(v);
				}
				
				mCurrentApplication = NULL;
				return kTTErrNone;
			}
		}
		
		// get the application version 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &version);
		}
		
		// if the application exists : get it
		if (!mApplications->lookup(applicationName, v))
			v.get(0, (TTPtr*)&anApplication);
		
		// else create one
		else {
			anApplication = NULL;
			args = TTValue(applicationName);
			args.append(version);
			TTObjectInstantiate(TT("Application"), TTObjectHandle(&anApplication), args);
		}
		
		mCurrentApplication = anApplication;
		
		return kTTErrNone;
	}
	
	if (!mCurrentApplication) 
		return kTTErrNone;
	
	// pass the current application to the XmlHandler to fill plugin parameters
	v = TTValue((TTPtr)mCurrentApplication);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TT("Read"));
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTApplicationPtr TTApplicationManagerGetApplication(TTSymbolPtr anAddress)
{
	TTValue v;
	TTSymbolPtr applicationName;
	TTApplicationPtr anApplication;
	TTErr err;
	
	if (TTModularApplications) {
		// the address could be simply the name of the application name or a complete address
		// TODO : parse the application name from address
		
		err = TTModularApplications->mApplications->lookup(applicationName, v);
		
		if (err)
			err = TTModularApplications->mApplications->lookup(kTTSym_localApplicationName, v);
		
		if (err)
			return NULL;
		
		v.get(0, (TTPtr*)&anApplication);
		return anApplication;
	}
	
	return NULL;
}

TTPluginHandlerPtr TTApplicationManagerGetPlugin(TTSymbolPtr pluginName)
{
	TTValue v;
	TTPluginHandlerPtr aPlugin;
	TTErr err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mPlugins->lookup(pluginName, v);
		v.get(0, (TTPtr*)&aPlugin);
		return aPlugin;
	}
	
	return NULL;
}

TTErr TTApplicationManagerLocalApplicationDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTPluginHandlerPtr			aPlugin;
	TTApplicationPtr	anApplication;
	TTSymbolPtr			oscAddress;
	TTNodePtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTErr				err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	
	// unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// TODO : aPlugin->sendDirectoryNotification(anApplication, oscAddress, flag);
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerLocalApplicationAttributeCallback(TTPtr baton, TTValue& data)
{
	TTLogDebug("TTApplicationManagerAttributeCallback");
	
	TTValuePtr			b;
	TTPluginHandlerPtr			aPlugin;
	TTApplicationPtr	anApplication;
	TTSymbolPtr			oscAddress, attribute;
	TTErr				err;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aPlugin);
	b->get(1, (TTPtr*)&anApplication);
	b->get(2, &oscAddress);
	b->get(3, &attribute);
	
	// TODO : aPlugin->sendAttributeNotification(anApplication, oscAddress, attribute, data);
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerLocalApplicationDiscover(TTSymbolPtr whereToDiscover, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	TTLogDebug("TTApplicationManagerLocalApplicationDiscover");
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTSymbolPtr			nodeAddress, objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToDiscover)->Lookup(whereToDiscover, nodeList, &firstNode);
	firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	if (!err) {
		
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			childList.current().get(0, (TTPtr*)&aNode);
			
			// get the node osc absolute address
			// to -- if we change the way to exchange TTNodeDirectory description 
			// we should avoid to return the absolute address
			aNode->getOscAddress(&nodeAddress);
			
			// to -- is the leaves field is still good ? 
			// maybe something like an object type field would be more generic ? not sure...
			// but we have to think on a specific way to explore a TTNodeDirectory in order 
			// to don't loose the specificity of his structure but without sending too much request
			if (anObject = aNode->getObject()) {
				
				objectType = anObject->getName();
				
				if (objectType == TT("Data"))
					returnedLeaves.append(nodeAddress);
				else
					returnedNodes.append(nodeAddress);
			}
		}
	} 
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTApplicationManagerLocalApplicationListen(TTApplicationPtr appWhereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen, TTBoolean enableListening)
{
	TTLogDebug("TTApplicationManagerLocalApplicationListen");
	
	TTApplicationPtr	appWhereToListen;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject;
	TTErr				err;
	
	appWhereToListen = TTApplicationManagerGetApplication(whereToListen);
	err = appWhereToListen->mDirectory->getTTNodeForOSC(whereToListen, &nodeToListen);
	
	if (!err) 
	{
		
		anObject = nodeToListen->getObject();
		
		// add observer
		if (enableListening) {
			
			// start directory observation
			if (attributeToListen == TT("life")) { // TODO : find a better name
				
				; // TODO : prepare a callback based on TTApplicationManagerLocalApplicationDirectoryCallback
				; // TODO : add it to the appWhereToListen application directory using addObserverForNotifications
				; // TODO : cache the observer in a hashtable (into the appWhereToListen application, not into the applicationManager)
			}
			// start attribute observation
			else {
				
				; // TODO : prepare a callback based on TTApplicationManagerLocalApplicationAttributeCallback
				; // TODO : add it to the object using registerObserverForNotifications
				; // TODO : cache the observer in a hashtable (into the appWhereToListen application, not into the applicationManager)
			}
		}
		// remove observer
		else {
			
			// stop directory observation
			if (attributeToListen == kTTSymEmpty) {
				
				; // TODO : get the old observer from the observers cache of the appWhereToListen application
				; // TODO : remove it from the appWhereToListen application directory using removeObserverForNotifications
			}
			// stop attribute observation
			else {
				; // TODO : get the old observer from the observers cache of the appWhereToListen application
				; // TODO : prepare a callback using TTApplicationManagerLocalApplicationAttributeCallback
			}
		}
	}	
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTApplicationManagerLocalApplicationSet(TTSymbolPtr whereToSet, TTSymbolPtr attributeToSet, TTValue& value)
{
	TTLogDebug("TTApplicationManagerLocalApplicationSet");
	
	TTNodePtr			nodeToSet;
	TTSymbolPtr			objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToSet)->getTTNodeForOSC(whereToSet, &nodeToSet);
	
	if (!err) {
		
		anObject = nodeToSet->getObject();
		objectType = anObject->getName();
		
		// TTData case : for value attribute use Command message
		if (objectType == TT("Data")) {
			
			if (attributeToSet == kTTSym_value)
				anObject->sendMessage(kTTSym_Command, value);
			else
				anObject->setAttributeValue(attributeToSet, value);
		}
		else 
			anObject->setAttributeValue(attributeToSet, value);
	}
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTApplicationManagerLocalApplicationGet(TTSymbolPtr whereToGet, TTSymbolPtr attributeToGet, TTValue& returnedValue)
{
	TTLogDebug("TTApplicationManagerLocalApplicationGet");
	
	TTNodePtr			nodeToGet;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToGet)->getTTNodeForOSC(whereToGet, &nodeToGet);
	
	if (!err) {
		
		if (anObject = nodeToGet->getObject())
			anObject->getAttributeValue(attributeToGet, returnedValue);
	}
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

void TTApplicationManagerStartPlugins(const TTPtr target, const TTKeyVal& iter)
{
	TTPluginHandlerPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		pluginPtr->sendMessage(TT("Run"));
	}
}

void TTApplicationManagerStopPlugins(const TTPtr target, const TTKeyVal& iter)
{
	TTPluginHandlerPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		;// TODO : add a way to stop the reception thread
	}
}