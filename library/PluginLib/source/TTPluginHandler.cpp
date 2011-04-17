#include "TTPluginHandler.h"

#define thisTTClass			TTPluginHandler
#define thisTTClassName		"PluginHandler"
#define thisTTClassTags		"plugin, handler"

TT_MODULAR_CONSTRUCTOR,
mPlugin(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mExploration(NO)
{
	arguments.get(0, (TTPtr*)&mPlugin);
	arguments.get(1, &mName);
	arguments.get(2, &mVersion);
	arguments.get(3, &mAuthor);
	arguments.get(4, mExploration);
	
	registerAttribute(TT("parameters"), kTypePointer, NULL, (TTGetterMethod)& TTPluginHandler::getParameters, (TTSetterMethod)& TTPluginHandler::setParameters);
	registerAttribute(TT("parameterNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTPluginHandler::getParameterNames);
	addAttributeProperty(parameterNames, readOnly, YES);
	
	registerAttribute(TT("name"), kTypeSymbol, mPlugin->mName);
	addAttributeProperty(name, readOnly, YES);
	
	registerAttribute(TT("version"), kTypeSymbol, mPlugin->mVersion);
	addAttributeProperty(version, readOnly, YES);
	
	registerAttribute(TT("author"), kTypeSymbol, mPlugin->mAuthor);
	addAttributeProperty(author, readOnly, YES);
	
	registerAttribute(TT("exploration"), kTypeBoolean, mPlugin->mExploration);
	addAttributeProperty(exploration, readOnly, YES);
	
	addMessage(Run);
}

TTPluginHandler::~TTPluginHandler()
{
	delete mPlugin;
}

TTErr TTPluginHandler::getParameters(TTValue& value)
{
	return mPlugin->getParameters(value);
}

TTErr TTPluginHandler::setParameters(const TTValue& value)
{
	return mPlugin->setParameters(value);
}

TTErr TTPluginHandler::getParameterNames(TTValue& value)
{
	TTValue v;
	TTHashPtr parameters;
	
	mPlugin->getParameters(v);
	v.get(0, (TTPtr*)&parameters);
	return parameters->getKeys(value);
}

TTErr TTPluginHandler::Run()
{
	mPlugin->Run();
	return kTTErrNone;
}
