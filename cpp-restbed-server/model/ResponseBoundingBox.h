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
 * ResponseBoundingBox.h
 *
 * 
 */

#ifndef ResponseBoundingBox_H_
#define ResponseBoundingBox_H_



#include "ResponseBox.h"
#include <vector>
#include <memory>

namespace org {
namespace openapitools {
namespace server {
namespace model {

/// <summary>
/// 
/// </summary>
class  ResponseBoundingBox
{
public:
    ResponseBoundingBox();
    virtual ~ResponseBoundingBox();
    
    std::string toJsonString();
    void fromJsonString(std::string const& jsonString);

    /////////////////////////////////////////////
    /// ResponseBoundingBox members
    
    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<ResponseBox> getEnvelope() const;
    void setEnvelope(std::shared_ptr<ResponseBox> value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<std::shared_ptr<ResponseBox>> getBoxes() const;
    void setBoxes(std::vector<std::shared_ptr<ResponseBox>> value);

protected:
    std::shared_ptr<ResponseBox> m_Envelope;
    std::vector<std::shared_ptr<ResponseBox>> m_Boxes;
};

}
}
}
}

#endif /* ResponseBoundingBox_H_ */