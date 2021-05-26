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
* DefaultApiImpl.h
*
* 
*/

#ifndef DEFAULT_API_IMPL_H_
#define DEFAULT_API_IMPL_H_


#include <pistache/endpoint.h>
#include <pistache/http.h>
#include <pistache/router.h>
#include <memory>

#include <DefaultApi.h>

#include <pistache/optional.h>

#include "RequestRoutes.h"
#include "RequestSupportedLocations.h"
#include "RequestTimeFilter.h"
#include "RequestTimeFilterFast.h"
#include "RequestTimeFilterPostcodeDistricts.h"
#include "RequestTimeFilterPostcodeSectors.h"
#include "RequestTimeFilterPostcodes.h"
#include "RequestTimeMap.h"
#include "ResponseError.h"
#include "ResponseGeocoding.h"
#include "ResponseMapInfo.h"
#include "ResponseRoutes.h"
#include "ResponseSupportedLocations.h"
#include "ResponseTimeFilter.h"
#include "ResponseTimeFilterFast.h"
#include "ResponseTimeFilterPostcodeDistricts.h"
#include "ResponseTimeFilterPostcodeSectors.h"
#include "ResponseTimeFilterPostcodes.h"
#include "ResponseTimeMap.h"
#include <string>

namespace org::openapitools::server::api
{

using namespace org::openapitools::server::model;

class DefaultApiImpl : public org::openapitools::server::api::DefaultApi {
public:
    explicit DefaultApiImpl(const std::shared_ptr<Pistache::Rest::Router>& rtr);
    ~DefaultApiImpl() override = default;

    void geocoding_reverse_search(const Pistache::Optional<double> &lat, const Pistache::Optional<double> &lng, const Pistache::Optional<std::string> &withinPeriodcountry, Pistache::Http::ResponseWriter &response);
    void geocoding_search(const Pistache::Optional<std::string> &query, const Pistache::Optional<double> &focusPeriodlat, const Pistache::Optional<double> &focusPeriodlng, const Pistache::Optional<std::string> &withinPeriodcountry, Pistache::Http::ResponseWriter &response);
    void map_info(Pistache::Http::ResponseWriter &response);
    void routes(const RequestRoutes &requestRoutes, Pistache::Http::ResponseWriter &response);
    void supported_locations(const RequestSupportedLocations &requestSupportedLocations, Pistache::Http::ResponseWriter &response);
    void time_filter(const RequestTimeFilter &requestTimeFilter, Pistache::Http::ResponseWriter &response);
    void time_filter_fast(const RequestTimeFilterFast &requestTimeFilterFast, Pistache::Http::ResponseWriter &response);
    void time_filter_postcode_districts(const RequestTimeFilterPostcodeDistricts &requestTimeFilterPostcodeDistricts, Pistache::Http::ResponseWriter &response);
    void time_filter_postcode_sectors(const RequestTimeFilterPostcodeSectors &requestTimeFilterPostcodeSectors, Pistache::Http::ResponseWriter &response);
    void time_filter_postcodes(const RequestTimeFilterPostcodes &requestTimeFilterPostcodes, Pistache::Http::ResponseWriter &response);
    void time_map(const RequestTimeMap &requestTimeMap, Pistache::Http::ResponseWriter &response);

};

} // namespace org::openapitools::server::api



#endif
