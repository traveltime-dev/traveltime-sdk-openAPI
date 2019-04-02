/*
 * ResponseRoutesLocation.h
 *
 * 
 */

#ifndef _ResponseRoutesLocation_H_
#define _ResponseRoutesLocation_H_


#include <string>
#include "ResponseRoutesProperties.h"
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

class ResponseRoutesLocation : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseRoutesLocation();
	ResponseRoutesLocation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseRoutesLocation();

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
	std::list<ResponseRoutesProperties> getProperties();

	/*! \brief Set 
	 */
	void setProperties(std::list <ResponseRoutesProperties> properties);

private:
	std::string id;
	std::list <ResponseRoutesProperties>properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseRoutesLocation_H_ */
