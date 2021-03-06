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


#include "ResponseTimeFilterPostcodeSectors.h"
#include "Helpers.h"

#include <sstream>

namespace org::openapitools::server::model
{

ResponseTimeFilterPostcodeSectors::ResponseTimeFilterPostcodeSectors()
{
    
}

void ResponseTimeFilterPostcodeSectors::validate() const
{
    std::stringstream msg;
    if (!validate(msg))
    {
        throw org::openapitools::server::helpers::ValidationException(msg.str());
    }
}

bool ResponseTimeFilterPostcodeSectors::validate(std::stringstream& msg) const
{
    return validate(msg, "");
}

bool ResponseTimeFilterPostcodeSectors::validate(std::stringstream& msg, const std::string& pathPrefix) const
{
    bool success = true;
    const std::string _pathPrefix = pathPrefix.empty() ? "ResponseTimeFilterPostcodeSectors" : pathPrefix;

         
    
    /* Results */ {
        const std::vector<ResponseTimeFilterPostcodeSectorsResult>& value = m_Results;
        const std::string currentValuePath = _pathPrefix + ".results";
                
        
        { // Recursive validation of array elements
            const std::string oldValuePath = currentValuePath;
            int i = 0;
            for (const ResponseTimeFilterPostcodeSectorsResult& value : value)
            { 
                const std::string currentValuePath = oldValuePath + "[" + std::to_string(i) + "]";
                        
        success = value.validate(msg, currentValuePath + ".results") && success;
 
                i++;
            }
        }

    }
    

    return success;
}

bool ResponseTimeFilterPostcodeSectors::operator==(const ResponseTimeFilterPostcodeSectors& rhs) const
{
    return
    
    
    (getResults() == rhs.getResults())
    
    
    ;
}

bool ResponseTimeFilterPostcodeSectors::operator!=(const ResponseTimeFilterPostcodeSectors& rhs) const
{
    return !(*this == rhs);
}

void to_json(nlohmann::json& j, const ResponseTimeFilterPostcodeSectors& o)
{
    j = nlohmann::json();
    j["results"] = o.m_Results;
    
}

void from_json(const nlohmann::json& j, ResponseTimeFilterPostcodeSectors& o)
{
    j.at("results").get_to(o.m_Results);
    
}

std::vector<ResponseTimeFilterPostcodeSectorsResult> ResponseTimeFilterPostcodeSectors::getResults() const
{
    return m_Results;
}
void ResponseTimeFilterPostcodeSectors::setResults(std::vector<ResponseTimeFilterPostcodeSectorsResult> const& value)
{
    m_Results = value;
}


} // namespace org::openapitools::server::model

