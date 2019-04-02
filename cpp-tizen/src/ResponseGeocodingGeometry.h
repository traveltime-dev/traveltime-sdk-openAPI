/*
 * ResponseGeocodingGeometry.h
 *
 * 
 */

#ifndef _ResponseGeocodingGeometry_H_
#define _ResponseGeocodingGeometry_H_


#include <string>
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

class ResponseGeocodingGeometry : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseGeocodingGeometry();
	ResponseGeocodingGeometry(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseGeocodingGeometry();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getType();

	/*! \brief Set 
	 */
	void setType(std::string  type);
	/*! \brief Get 
	 */
	std::list<double> getCoordinates();

	/*! \brief Set 
	 */
	void setCoordinates(std::list <double> coordinates);

private:
	std::string type;
	std::list <double>coordinates;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseGeocodingGeometry_H_ */
