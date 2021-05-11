#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* TravelTime API
* No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
*
* The version of the OpenAPI document: 1.2.2
* Contact: support@igeolise.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIResponseTravelTimeStatistics
@end

@interface OAIResponseTravelTimeStatistics : OAIObject


@property(nonatomic) NSNumber* min;

@property(nonatomic) NSNumber* max;

@property(nonatomic) NSNumber* mean;

@property(nonatomic) NSNumber* median;

@end
