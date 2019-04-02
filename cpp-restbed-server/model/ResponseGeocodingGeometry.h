/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.3.4.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ResponseGeocodingGeometry.h
 *
 * 
 */

#ifndef ResponseGeocodingGeometry_H_
#define ResponseGeocodingGeometry_H_



#include <string>
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseGeocodingGeometry
{
public:
    ResponseGeocodingGeometry();
    virtual ~ResponseGeocodingGeometry();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ResponseGeocodingGeometry members
    
    /// <summary>
    /// 
    /// </summary>
    std::string getType() const;
    void setType(std::string value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<double> getCoordinates() const;
    void setCoordinates(std::vector<double> value);

protected:
    std::string m_Type;
    std::vector<double> m_Coordinates;
};

}
}
}
}

#endif /* ResponseGeocodingGeometry_H_ */