/*
 * TTRegex
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRegex.h"

#if BOOST_REGEX
#include <boost/regex.hpp>
using namespace boost;
typedef boost::regex	TTExpression;
typedef boost::match_results <TTRegexStringPosition> TTRegexStringResult;
#else
#include <regex>
using namespace std;
typedef std::regex	TTExpression;
typedef std::match_results <TTRegexStringPosition> TTRegexStringResult;
#endif

#define EXPRESSION  ((TTExpression*)(mExpression))
#define mEXPRESSION (*EXPRESSION)
	
#define RESULT  ((TTRegexStringResult*)(mResult))
#define mRESULT (*RESULT)

TTRegex::TTRegex(const char* anExpression):
mExpression(NULL), mResult(NULL)
{
	try {
		
		mExpression = new TTExpression(anExpression, regex_constants::extended);
		
	}
	catch (const regex_error& e) {
		std::cout << e.what() << " caught: " << anExpression << '\n';
		if (e.code() == regex_constants::error_brack)
			std::cout << "The code was error_brack\n";
	}
	
	mResult = new TTRegexStringResult();
}

TTRegex::~TTRegex()
{
	delete EXPRESSION;
	delete RESULT;
}

TTErr TTRegex::parse(TTRegexStringPosition& begin, TTRegexStringPosition& end)
{
	if (regex_search(begin, end, mRESULT, mEXPRESSION))
		return kTTErrNone;

	return kTTErrGeneric;
}

/** Get where start the result */
TTRegexStringPosition TTRegex::begin()
{
	return mRESULT[1].first;
}

/** Get where end the result */
TTRegexStringPosition TTRegex::end()
{
	return mRESULT[1].second;
}
