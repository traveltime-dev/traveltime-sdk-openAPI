/*
 * ResponseGeocodingGeoJsonFeature.h
 *
 * 
 */

#ifndef _ResponseGeocodingGeoJsonFeature_H_
#define _ResponseGeocodingGeoJsonFeature_H_


#include <string>
#include "ResponseGeocodingGeometry.h"
#include "ResponseGeocodingProperties.h"
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

class ResponseGeocodingGeoJsonFeature : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseGeocodingGeoJsonFeature();
	ResponseGeocodingGeoJsonFeature(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseGeocodingGeoJsonFeature();

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
	ResponseGeocodingGeometry getGeometry();

	/*! \brief Set 
	 */
	void setGeometry(ResponseGeocodingGeometry  geometry);
	/*! \brief Get 
	 */
	ResponseGeocodingProperties getProperties();

	/*! \brief Set 
	 */
	void setProperties(ResponseGeocodingProperties  properties);

private:
	std::string type;
	ResponseGeocodingGeometry geometry;
	ResponseGeocodingProperties properties;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseGeocodingGeoJsonFeature_H_ */
