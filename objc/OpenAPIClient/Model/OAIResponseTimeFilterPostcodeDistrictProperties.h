#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAIResponseTravelTimeStatistics.h"
@protocol OAIResponseTravelTimeStatistics;
@class OAIResponseTravelTimeStatistics;



@protocol OAIResponseTimeFilterPostcodeDistrictProperties
@end

@interface OAIResponseTimeFilterPostcodeDistrictProperties : OAIObject


@property(nonatomic) OAIResponseTravelTimeStatistics* travelTimeReachable;

@property(nonatomic) OAIResponseTravelTimeStatistics* travelTimeAll;

@property(nonatomic) NSNumber* coverage;

@end