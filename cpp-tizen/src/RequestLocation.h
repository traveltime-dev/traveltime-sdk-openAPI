/*
 * RequestLocation.h
 *
 * 
 */

#ifndef _RequestLocation_H_
#define _RequestLocation_H_


#include <string>
#include "Coords.h"
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

class RequestLocation : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestLocation();
	RequestLocation(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestLocation();

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
	Coords getCoords();

	/*! \brief Set 
	 */
	void setCoords(Coords  coords);

private:
	std::string id;
	Coords coords;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestLocation_H_ */
