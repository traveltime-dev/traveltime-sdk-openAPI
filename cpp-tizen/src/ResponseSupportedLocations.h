/*
 * ResponseSupportedLocations.h
 *
 * 
 */

#ifndef _ResponseSupportedLocations_H_
#define _ResponseSupportedLocations_H_


#include <string>
#include "ResponseSupportedLocation.h"
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

class ResponseSupportedLocations : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseSupportedLocations();
	ResponseSupportedLocations(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseSupportedLocations();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ResponseSupportedLocation> getLocations();

	/*! \brief Set 
	 */
	void setLocations(std::list <ResponseSupportedLocation> locations);
	/*! \brief Get 
	 */
	std::list<std::string> getUnsupportedLocations();

	/*! \brief Set 
	 */
	void setUnsupportedLocations(std::list <std::string> unsupported_locations);

private:
	std::list <ResponseSupportedLocation>locations;
	std::list <std::string>unsupported_locations;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseSupportedLocations_H_ */
