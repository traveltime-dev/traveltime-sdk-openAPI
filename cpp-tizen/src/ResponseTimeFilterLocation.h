/*
 * ResponseTimeFilterLocation.h
 *
 * 
 */

#ifndef _ResponseTimeFilterLocation_H_
#define _ResponseTimeFilterLocation_H_


#include <string>
#include "ResponseTimeFilterProperties.h"
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

class ResponseTimeFilterLocation : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterLocation();
	ResponseTimeFilterLocation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterLocation();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::list<ResponseTimeFilterProperties> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <ResponseTimeFilterProperties> properties);

private:
	std::string id;
	std::list <ResponseTimeFilterProperties>properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterLocation_H_ */
