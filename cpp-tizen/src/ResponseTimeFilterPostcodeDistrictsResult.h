/*
 * ResponseTimeFilterPostcodeDistrictsResult.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeDistrictsResult_H_
#define _ResponseTimeFilterPostcodeDistrictsResult_H_


#include <string>
#include "ResponseTimeFilterPostcodeDistrict.h"
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

class ResponseTimeFilterPostcodeDistrictsResult : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeDistrictsResult();
	ResponseTimeFilterPostcodeDistrictsResult(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeDistrictsResult();

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
	std::list<ResponseTimeFilterPostcodeDistrict> getDistricts();

	/*! \brief Set 
	 */
	void setDistricts(std::list <ResponseTimeFilterPostcodeDistrict> districts);

private:
	std::string search_id;
	std::list <ResponseTimeFilterPostcodeDistrict>districts;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeDistrictsResult_H_ */
