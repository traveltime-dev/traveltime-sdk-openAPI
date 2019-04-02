/*
 * ResponseTimeFilterPostcodesResult.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodesResult_H_
#define _ResponseTimeFilterPostcodesResult_H_


#include <string>
#include "ResponseTimeFilterPostcode.h"
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

class ResponseTimeFilterPostcodesResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodesResult();
	ResponseTimeFilterPostcodesResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodesResult();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getSearchId();

	/*! \brief Set 
	 */
	void setSearchId(std::string  search_id);
	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterPostcode> getPostcodes();

	/*! \brief Set 
	 */
	void setPostcodes(std::list <ResponseTimeFilterPostcode> postcodes);

private:
	std::string search_id;
	std::list <ResponseTimeFilterPostcode>postcodes;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodesResult_H_ */
