/*
 * ResponseTimeFilterPostcodeDistrict.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeDistrict_H_
#define _ResponseTimeFilterPostcodeDistrict_H_


#include <string>
#include "ResponseTimeFilterPostcodeDistrictProperties.h"
#include "String.h"
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

class ResponseTimeFilterPostcodeDistrict : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeDistrict();
	ResponseTimeFilterPostcodeDistrict(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeDistrict();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	String getCode();

	/*! \brief Set 
	 */
	void setCode(String  code);
	/*! \brief Get 
	 */
	ResponseTimeFilterPostcodeDistrictProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseTimeFilterPostcodeDistrictProperties  properties);

private:
	String code;
	ResponseTimeFilterPostcodeDistrictProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeDistrict_H_ */
