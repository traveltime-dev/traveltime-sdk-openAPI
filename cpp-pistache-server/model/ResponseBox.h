/**
* TravelTime Platform API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* OpenAPI spec version: 1.0.0
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
/*
 * ResponseBox.h
 *
 * 
 */

#ifndef ResponseBox_H_
#define ResponseBox_H_


#include "ModelBase.h"


namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseBox
    : public ModelBase
{
public:
    ResponseBox();
    virtual ~ResponseBox();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(const nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// ResponseBox members

    /// <summary>
    /// 
    /// </summary>
    double getMinLat() const;
    void setMinLat(double const value);
        /// <summary>
    /// 
    /// </summary>
    double getMaxLat() const;
    void setMaxLat(double const value);
        /// <summary>
    /// 
    /// </summary>
    double getMinLng() const;
    void setMinLng(double const value);
        /// <summary>
    /// 
    /// </summary>
    double getMaxLng() const;
    void setMaxLng(double const value);
    
protected:
    double m_Min_lat;

    double m_Max_lat;

    double m_Min_lng;

    double m_Max_lng;

};

}
}
}
}

#endif /* ResponseBox_H_ */