/*
 * ResponseTimeFilterPostcodeDistricts.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeDistricts_H_
#define _ResponseTimeFilterPostcodeDistricts_H_


#include <string>
#include "ResponseTimeFilterPostcodeDistrictsResult.h"
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

class ResponseTimeFilterPostcodeDistricts : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeDistricts();
	ResponseTimeFilterPostcodeDistricts(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeDistricts();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterPostcodeDistrictsResult> getResults();

	/*! \brief Set 
	 */
	void setResults(std::list <ResponseTimeFilterPostcodeDistrictsResult> results);

private:
	std::list <ResponseTimeFilterPostcodeDistrictsResult>results;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeDistricts_H_ */
