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


#import "OAIResponseDistanceBreakdownItem.h"
#import "OAIResponseFares.h"
#import "OAIResponseRoute.h"
@protocol OAIResponseDistanceBreakdownItem;
@class OAIResponseDistanceBreakdownItem;
@protocol OAIResponseFares;
@class OAIResponseFares;
@protocol OAIResponseRoute;
@class OAIResponseRoute;



@protocol OAIResponseTimeFilterProperties
@end

@interface OAIResponseTimeFilterProperties : OAIObject


@property(nonatomic) NSNumber* travelTime;

@property(nonatomic) NSNumber* distance;

@property(nonatomic) NSArray<OAIResponseDistanceBreakdownItem>* distanceBreakdown;

@property(nonatomic) OAIResponseFares* fares;

@property(nonatomic) OAIResponseRoute* route;

@end