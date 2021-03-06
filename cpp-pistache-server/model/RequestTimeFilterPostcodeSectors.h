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
 * RequestTimeFilterPostcodeSectors.h
 *
 * 
 */

#ifndef RequestTimeFilterPostcodeSectors_H_
#define RequestTimeFilterPostcodeSectors_H_


#include "RequestTimeFilterPostcodeSectorsArrivalSearch.h"
#include "RequestTimeFilterPostcodeSectorsDepartureSearch.h"
#include <vector>
#include <nlohmann/json.hpp>

namespace org::openapitools::server::model
{

/// <summary>
/// 
/// </summary>
class  RequestTimeFilterPostcodeSectors
{
public:
    RequestTimeFilterPostcodeSectors();
    virtual ~RequestTimeFilterPostcodeSectors() = default;


    /// <summary>
    /// Validate the current data in the model. Throws a ValidationException on failure.
    /// </summary>
    void validate() const;

    /// <summary>
    /// Validate the current data in the model. Returns false on error and writes an error
    /// message into the given stringstream.
    /// </summary>
    bool validate(std::stringstream& msg) const;

    bool operator==(const RequestTimeFilterPostcodeSectors& rhs) const;
    bool operator!=(const RequestTimeFilterPostcodeSectors& rhs) const;

    /////////////////////////////////////////////
    /// RequestTimeFilterPostcodeSectors members

    /// <summary>
    /// 
    /// </summary>
    std::vector<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches() const;
    void setDepartureSearches(std::vector<RequestTimeFilterPostcodeSectorsDepartureSearch> const& value);
    bool departureSearchesIsSet() const;
    void unsetDeparture_searches();
    /// <summary>
    /// 
    /// </summary>
    std::vector<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() const;
    void setArrivalSearches(std::vector<RequestTimeFilterPostcodeSectorsArrivalSearch> const& value);
    bool arrivalSearchesIsSet() const;
    void unsetArrival_searches();

    friend void to_json(nlohmann::json& j, const RequestTimeFilterPostcodeSectors& o);
    friend void from_json(const nlohmann::json& j, RequestTimeFilterPostcodeSectors& o);
protected:
    std::vector<RequestTimeFilterPostcodeSectorsDepartureSearch> m_Departure_searches;
    bool m_Departure_searchesIsSet;
    std::vector<RequestTimeFilterPostcodeSectorsArrivalSearch> m_Arrival_searches;
    bool m_Arrival_searchesIsSet;

    // Helper overload for validate. Used when one model stores another model and calls it's validate.
    bool validate(std::stringstream& msg, const std::string& pathPrefix) const;
};

} // namespace org::openapitools::server::model

#endif /* RequestTimeFilterPostcodeSectors_H_ */
