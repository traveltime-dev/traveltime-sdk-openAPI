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


#include "ResponseTimeMapBoundingBoxes.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeMapBoundingBoxes::ResponseTimeMapBoundingBoxes()
{
    
}

void ResponseTimeMapBoundingBoxes::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeMapBoundingBoxes::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeMapBoundingBoxes::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeMapBoundingBoxes" : pathPrefix;

         
    
    /* Results */ {
        const std::vector<ResponseTimeMapBoundingBoxesResult>& value = m_Results;
        const std::string currentValuePath = _pathPrefix + ".results";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseTimeMapBoundingBoxesResult& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".results") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseTimeMapBoundingBoxes::operator==(const ResponseTimeMapBoundingBoxes& rhs) const
{
    return
    
    
    (getResults() == rhs.getResults())
    
    
    ;
}

bool ResponseTimeMapBoundingBoxes::operator!=(const ResponseTimeMapBoundingBoxes& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeMapBoundingBoxes& o)
{
    j = nlohmann::json();
    j["results"] = o.m_Results;
    
}

void from_json(const nlohmann::json& j, ResponseTimeMapBoundingBoxes& o)
{
    j.at("results").get_to(o.m_Results);
    
}

std::vector<ResponseTimeMapBoundingBoxesResult> ResponseTimeMapBoundingBoxes::getResults() const
{
    return m_Results;
}
void ResponseTimeMapBoundingBoxes::setResults(std::vector<ResponseTimeMapBoundingBoxesResult> const& value)
{
    m_Results = value;
}


} // namespace org::openapitools::server::model

