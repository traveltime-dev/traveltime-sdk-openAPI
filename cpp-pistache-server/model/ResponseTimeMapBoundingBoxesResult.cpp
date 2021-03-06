/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.3
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#include "ResponseTimeMapBoundingBoxesResult.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeMapBoundingBoxesResult::ResponseTimeMapBoundingBoxesResult()
{
    m_Search_id = "";
    
}

void ResponseTimeMapBoundingBoxesResult::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeMapBoundingBoxesResult::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeMapBoundingBoxesResult::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeMapBoundingBoxesResult" : pathPrefix;

        
     
    
    /* Bounding_boxes */ {
        const std::vector<ResponseBoundingBox>& value = m_Bounding_boxes;
        const std::string currentValuePath = _pathPrefix + ".boundingBoxes";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseBoundingBox& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".boundingBoxes") && success;
 
                i++;
            }
        }

    }
    
    

    return success;
}

bool ResponseTimeMapBoundingBoxesResult::operator==(const ResponseTimeMapBoundingBoxesResult& rhs) const
{
    return
    
    
    (getSearchId() == rhs.getSearchId())
     &&
    
    (getBoundingBoxes() == rhs.getBoundingBoxes())
     &&
    
    (getProperties() == rhs.getProperties())
    
    
    ;
}

bool ResponseTimeMapBoundingBoxesResult::operator!=(const ResponseTimeMapBoundingBoxesResult& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeMapBoundingBoxesResult& o)
{
    j = nlohmann::json();
    j["search_id"] = o.m_Search_id;
    j["bounding_boxes"] = o.m_Bounding_boxes;
    j["properties"] = o.m_Properties;
    
}

void from_json(const nlohmann::json& j, ResponseTimeMapBoundingBoxesResult& o)
{
    j.at("search_id").get_to(o.m_Search_id);
    j.at("bounding_boxes").get_to(o.m_Bounding_boxes);
    j.at("properties").get_to(o.m_Properties);
    
}

std::string ResponseTimeMapBoundingBoxesResult::getSearchId() const
{
    return m_Search_id;
}
void ResponseTimeMapBoundingBoxesResult::setSearchId(std::string const& value)
{
    m_Search_id = value;
}
std::vector<ResponseBoundingBox> ResponseTimeMapBoundingBoxesResult::getBoundingBoxes() const
{
    return m_Bounding_boxes;
}
void ResponseTimeMapBoundingBoxesResult::setBoundingBoxes(std::vector<ResponseBoundingBox> const& value)
{
    m_Bounding_boxes = value;
}
ResponseTimeMapProperties ResponseTimeMapBoundingBoxesResult::getProperties() const
{
    return m_Properties;
}
void ResponseTimeMapBoundingBoxesResult::setProperties(ResponseTimeMapProperties const& value)
{
    m_Properties = value;
}


} // namespace org::openapitools::server::model

