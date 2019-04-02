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
 * ResponseMapInfoMap.h
 *
 * 
 */

#ifndef ResponseMapInfoMap_H_
#define ResponseMapInfoMap_H_


#include "ModelBase.h"

#include <string>
#include "ResponseMapInfoFeatures.h"

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseMapInfoMap
    : public ModelBase
{
public:
    ResponseMapInfoMap();
    virtual ~ResponseMapInfoMap();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    nlohmann::json toJson() const override;
    void fromJson(const nlohmann::json& json) override;

    /////////////////////////////////////////////
    /// ResponseMapInfoMap members

    /// <summary>
    /// 
    /// </summary>
    std::string getName() const;
    void setName(std::string const& value);
        /// <summary>
    /// 
    /// </summary>
    ResponseMapInfoFeatures getFeatures() const;
    void setFeatures(ResponseMapInfoFeatures const& value);
    
protected:
    std::string m_Name;

    ResponseMapInfoFeatures m_Features;

};

}
}
}
}

#endif /* ResponseMapInfoMap_H_ */