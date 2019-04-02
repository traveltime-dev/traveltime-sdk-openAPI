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
 * RequestRangeNoMaxResults.h
 *
 * 
 */

#ifndef RequestRangeNoMaxResults_H_
#define RequestRangeNoMaxResults_H_


#include "ModelBase.h"


namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  RequestRangeNoMaxResults
    : public ModelBase
{
public:
    RequestRangeNoMaxResults();
    virtual ~RequestRangeNoMaxResults();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(const nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// RequestRangeNoMaxResults members

    /// <summary>
    /// 
    /// </summary>
    bool isEnabled() const;
    void setEnabled(bool const value);
        /// <summary>
    /// 
    /// </summary>
    int32_t getWidth() const;
    void setWidth(int32_t const value);
    
protected:
    bool m_Enabled;

    int32_t m_Width;

};

}
}
}
}

#endif /* RequestRangeNoMaxResults_H_ */