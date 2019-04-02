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
 * DefaultApi.h
 *
 * 
 */

#ifndef DefaultApi_H_
#define DefaultApi_H_


#include <memory>
#include <corvusoft/restbed/session.hpp>
#include <corvusoft/restbed/resource.hpp>
#include <corvusoft/restbed/service.hpp>

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

namespace org {
namespace openapitools {
namespace server {
namespace api {

using namespace org::openapitools::server::model;

class  DefaultApi: public restbed::Service
{
public:
	DefaultApi();
	~DefaultApi();
	void startService(int const& port);
	void stopService();
};


/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4GeocodingReverseResource: public restbed::Resource
{
public:
	DefaultApiV4GeocodingReverseResource();
    virtual ~DefaultApiV4GeocodingReverseResource();
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4GeocodingSearchResource: public restbed::Resource
{
public:
	DefaultApiV4GeocodingSearchResource();
    virtual ~DefaultApiV4GeocodingSearchResource();
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Map-infoResource: public restbed::Resource
{
public:
	DefaultApiV4Map-infoResource();
    virtual ~DefaultApiV4Map-infoResource();
    void GET_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4RoutesResource: public restbed::Resource
{
public:
	DefaultApiV4RoutesResource();
    virtual ~DefaultApiV4RoutesResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Supported-locationsResource: public restbed::Resource
{
public:
	DefaultApiV4Supported-locationsResource();
    virtual ~DefaultApiV4Supported-locationsResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-filterResource: public restbed::Resource
{
public:
	DefaultApiV4Time-filterResource();
    virtual ~DefaultApiV4Time-filterResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-filterFastResource: public restbed::Resource
{
public:
	DefaultApiV4Time-filterFastResource();
    virtual ~DefaultApiV4Time-filterFastResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-filterPostcode-districtsResource: public restbed::Resource
{
public:
	DefaultApiV4Time-filterPostcode-districtsResource();
    virtual ~DefaultApiV4Time-filterPostcode-districtsResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-filterPostcode-sectorsResource: public restbed::Resource
{
public:
	DefaultApiV4Time-filterPostcode-sectorsResource();
    virtual ~DefaultApiV4Time-filterPostcode-sectorsResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-filterPostcodesResource: public restbed::Resource
{
public:
	DefaultApiV4Time-filterPostcodesResource();
    virtual ~DefaultApiV4Time-filterPostcodesResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};

/// <summary>
/// 
/// </summary>
/// <remarks>
/// 
/// </remarks>
class  DefaultApiV4Time-mapResource: public restbed::Resource
{
public:
	DefaultApiV4Time-mapResource();
    virtual ~DefaultApiV4Time-mapResource();
    void POST_method_handler(const std::shared_ptr<restbed::Session> session);
};


}
}
}
}

#endif /* DefaultApi_H_ */
