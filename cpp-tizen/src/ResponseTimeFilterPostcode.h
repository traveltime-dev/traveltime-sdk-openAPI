/*
 * ResponseTimeFilterPostcode.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcode_H_
#define _ResponseTimeFilterPostcode_H_


#include <string>
#include "ResponseTimeFilterPostcodesProperties.h"
#include "String.h"
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

class ResponseTimeFilterPostcode : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcode();
	ResponseTimeFilterPostcode(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcode();

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
	std::list<ResponseTimeFilterPostcodesProperties> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <ResponseTimeFilterPostcodesProperties> properties);

private:
	String code;
	std::list <ResponseTimeFilterPostcodesProperties>properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcode_H_ */
