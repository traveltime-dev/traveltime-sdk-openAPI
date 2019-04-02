/*
 * ResponseSupportedLocation.h
 *
 * 
 */

#ifndef _ResponseSupportedLocation_H_
#define _ResponseSupportedLocation_H_


#include <string>
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

class ResponseSupportedLocation : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseSupportedLocation();
	ResponseSupportedLocation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseSupportedLocation();

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
	std::string getMapName();

	/*! \brief Set 
	 */
	void setMapName(std::string  map_name);

private:
	std::string id;
	std::string map_name;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseSupportedLocation_H_ */
