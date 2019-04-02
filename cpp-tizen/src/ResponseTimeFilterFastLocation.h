/*
 * ResponseTimeFilterFastLocation.h
 *
 * 
 */

#ifndef _ResponseTimeFilterFastLocation_H_
#define _ResponseTimeFilterFastLocation_H_


#include <string>
#include "ResponseTimeFilterFastProperties.h"
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

class ResponseTimeFilterFastLocation : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTimeFilterFastLocation();
	ResponseTimeFilterFastLocation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTimeFilterFastLocation();

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
	std::list<ResponseTimeFilterFastProperties> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <ResponseTimeFilterFastProperties> properties);

private:
	std::string id;
	std::list <ResponseTimeFilterFastProperties>properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTimeFilterFastLocation_H_ */
