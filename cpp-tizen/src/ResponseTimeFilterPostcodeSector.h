/*
 * ResponseTimeFilterPostcodeSector.h
 *
 * 
 */

#ifndef _ResponseTimeFilterPostcodeSector_H_
#define _ResponseTimeFilterPostcodeSector_H_


#include <string>
#include "ResponseTimeFilterPostcodeSectorProperties.h"
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

class ResponseTimeFilterPostcodeSector : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterPostcodeSector();
	ResponseTimeFilterPostcodeSector(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterPostcodeSector();

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
	ResponseTimeFilterPostcodeSectorProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseTimeFilterPostcodeSectorProperties  properties);

private:
	String code;
	ResponseTimeFilterPostcodeSectorProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterPostcodeSector_H_ */
