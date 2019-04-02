/*
 * ResponseGeocoding.h
 *
 * 
 */

#ifndef _ResponseGeocoding_H_
#define _ResponseGeocoding_H_


#include <string>
#include "ResponseGeocodingGeoJsonFeature.h"
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

class ResponseGeocoding : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseGeocoding();
	ResponseGeocoding(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseGeocoding();

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
	std::list<ResponseGeocodingGeoJsonFeature> getFeatures();

	/*! \brief Set 
	 */
	void setFeatures(std::list <ResponseGeocodingGeoJsonFeature> features);

private:
	std::string type;
	std::list <ResponseGeocodingGeoJsonFeature>features;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseGeocoding_H_ */
