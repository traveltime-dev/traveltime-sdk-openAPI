/*
 * ResponseGeocodingProperties.h
 *
 * 
 */

#ifndef _ResponseGeocodingProperties_H_
#define _ResponseGeocodingProperties_H_


#include <string>
#include "ResponseMapInfoFeatures.h"
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

class ResponseGeocodingProperties : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseGeocodingProperties();
	ResponseGeocodingProperties(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseGeocodingProperties();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	double getScore();

	/*! \brief Set 
	 */
	void setScore(double  score);
	/*! \brief Get 
	 */
	std::string getHouseNumber();

	/*! \brief Set 
	 */
	void setHouseNumber(std::string  house_number);
	/*! \brief Get 
	 */
	std::string getStreet();

	/*! \brief Set 
	 */
	void setStreet(std::string  street);
	/*! \brief Get 
	 */
	std::string getRegion();

	/*! \brief Set 
	 */
	void setRegion(std::string  region);
	/*! \brief Get 
	 */
	std::string getRegionCode();

	/*! \brief Set 
	 */
	void setRegionCode(std::string  region_code);
	/*! \brief Get 
	 */
	std::string getNeighbourhood();

	/*! \brief Set 
	 */
	void setNeighbourhood(std::string  neighbourhood);
	/*! \brief Get 
	 */
	std::string getCounty();

	/*! \brief Set 
	 */
	void setCounty(std::string  county);
	/*! \brief Get 
	 */
	std::string getMacroregion();

	/*! \brief Set 
	 */
	void setMacroregion(std::string  macroregion);
	/*! \brief Get 
	 */
	std::string getCity();

	/*! \brief Set 
	 */
	void setCity(std::string  city);
	/*! \brief Get 
	 */
	std::string getCountry();

	/*! \brief Set 
	 */
	void setCountry(std::string  country);
	/*! \brief Get 
	 */
	std::string getCountryCode();

	/*! \brief Set 
	 */
	void setCountryCode(std::string  country_code);
	/*! \brief Get 
	 */
	std::string getContinent();

	/*! \brief Set 
	 */
	void setContinent(std::string  continent);
	/*! \brief Get 
	 */
	std::string getPostcode();

	/*! \brief Set 
	 */
	void setPostcode(std::string  postcode);
	/*! \brief Get 
	 */
	ResponseMapInfoFeatures getFeatures();

	/*! \brief Set 
	 */
	void setFeatures(ResponseMapInfoFeatures  features);

private:
	std::string name;
	std::string label;
	double score;
	std::string house_number;
	std::string street;
	std::string region;
	std::string region_code;
	std::string neighbourhood;
	std::string county;
	std::string macroregion;
	std::string city;
	std::string country;
	std::string country_code;
	std::string continent;
	std::string postcode;
	ResponseMapInfoFeatures features;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseGeocodingProperties_H_ */
