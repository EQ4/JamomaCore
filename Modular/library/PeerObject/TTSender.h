/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Sender Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_SENDER_H__
#define __TT_SENDER_H__

#include "TTModularIncludes.h"

/**	TTSender ... TODO : an explanation
	control a TTData
 
 */

class TTMODULAR_EXPORT TTSender : public TTObjectBase
{
	TTCLASS_SETUP(TTSender)

public:	// use public for quick acces during signal processing
	
	TTObjectBasePtr				mSignal;					///< any data structure to send complex signal
	
private:
	
	TTAddress                   mAddress;					///< ATTRIBUTE: the address to bind
	TTNodeDirectoryPtr			mDirectory;					///< a sender depends on a directory
	TTBoolean					mIsSending;					///< a flag to lock the object in case of infinite loop
	TTList                      mObjectCache;				///< ATTRIBUTE : a cache containing all binded objects for quick access
	TTCallbackPtr				mAddressObserver;			///< an address life cycle observer
	TTCallbackPtr				mApplicationObserver;		///< an application life cycle observer
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
    
    /**	Getter for mObjectCache attribute. */
	TTErr getObjectCache(TTValue& value);
	
	/** */
	TTErr Send(TTValue& valueToSend, TTValue& outputValue);				// to -- lower case in order to hide the message during the Class wrapping process
	
	/** */
	TTErr bindAddress();
	
	/** */
	TTErr unbindAddress();
	
	/** */
	TTErr bindApplication();
	
	/** */
	TTErr unbindApplication();
	
	friend TTErr TTMODULAR_EXPORT TTSenderDirectoryCallback(const TTValue& baton, const TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTSenderApplicationManagerCallback(const TTValue& baton, const TTValue& data);
	
};

typedef TTSender* TTSenderPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTSenderDirectoryCallback(const TTValue& baton, const TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTSenderApplicationManagerCallback(const TTValue& baton, const TTValue& data);

#endif // __TT_SENDER_H__
