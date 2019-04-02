/*
 * Coords.h
 *
 * 
 */

#ifndef _Coords_H_
#define _Coords_H_


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

class Coords : public Object {
public:
	/*! \brief Constructor.
	 */
	Coords();
	Coords(char* str);

	/*! \brief Destructor.
	 */
	virtual ~Coords();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	double getLat();

	/*! \brief Set 
	 */
	void setLat(double  lat);
	/*! \brief Get 
	 */
	double getLng();

	/*! \brief Set 
	 */
	void setLng(double  lng);

private:
	double lat;
	double lng;
	void __init();
	void __cleanup();

};
}
}

#endif /* _Coords_H_ */
