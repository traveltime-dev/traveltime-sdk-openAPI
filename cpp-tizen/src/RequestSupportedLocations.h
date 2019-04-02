/*
 * RequestSupportedLocations.h
 *
 * 
 */

#ifndef _RequestSupportedLocations_H_
#define _RequestSupportedLocations_H_


#include <string>
#include "RequestLocation.h"
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

class RequestSupportedLocations : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestSupportedLocations();
	RequestSupportedLocations(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestSupportedLocations();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestLocation> getLocations();

	/*! \brief Set 
	 */
	void setLocations(std::list <RequestLocation> locations);

private:
	std::list <RequestLocation>locations;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestSupportedLocations_H_ */
