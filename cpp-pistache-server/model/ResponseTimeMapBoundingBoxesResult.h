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
/*
 * ResponseTimeMapBoundingBoxesResult.h
 *
 * 
 */

#ifndef ResponseTimeMapBoundingBoxesResult_H_
#define ResponseTimeMapBoundingBoxesResult_H_


#include "ResponseBoundingBox.h"
#include <string>
#include "ResponseTimeMapProperties.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  ResponseTimeMapBoundingBoxesResult
{
public:
    ResponseTimeMapBoundingBoxesResult();
    virtual ~ResponseTimeMapBoundingBoxesResult() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const ResponseTimeMapBoundingBoxesResult& rhs) const;
    bool operator!=(const ResponseTimeMapBoundingBoxesResult& rhs) const;

    /////////////////////////////////////////////
    /// ResponseTimeMapBoundingBoxesResult members

    /// <summary>
    /// 
    /// </summary>
    std::string getSearchId() const;
    void setSearchId(std::string const& value);
    /// <summary>
    /// 
    /// </summary>
    std::vector<ResponseBoundingBox> getBoundingBoxes() const;
    void setBoundingBoxes(std::vector<ResponseBoundingBox> const& value);
    /// <summary>
    /// 
    /// </summary>
    ResponseTimeMapProperties getProperties() const;
    void setProperties(ResponseTimeMapProperties const& value);

    friend void to_json(nlohmann::json& j, const ResponseTimeMapBoundingBoxesResult& o);
    friend void from_json(const nlohmann::json& j, ResponseTimeMapBoundingBoxesResult& o);
protected:
    std::string m_Search_id;

    std::vector<ResponseBoundingBox> m_Bounding_boxes;

    ResponseTimeMapProperties m_Properties;


    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* ResponseTimeMapBoundingBoxesResult_H_ */
