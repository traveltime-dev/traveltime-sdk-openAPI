/*
 * ResponseTimeFilterPostcodes.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodes_H_
#define _ResponseTimeFilterPostcodes_H_


#include <string>
#include "ResponseTimeFilterPostcodesResult.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ResponseTimeFilterPostcodes : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodes();
	ResponseTimeFilterPostcodes(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodes();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterPostcodesResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeFilterPostcodesResult> results);

private:
	std::list <ResponseTimeFilterPostcodesResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodes_H_ */
