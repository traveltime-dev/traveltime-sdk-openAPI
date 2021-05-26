#import <Foundation/Foundation.h>
#import "OAIObject.h"

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


#import "OAIRequestRangeFull.h"
#import "OAIRequestTimeFilterPostcodesProperty.h"
#import "OAIRequestTransportation.h"
@protocol OAIRequestRangeFull;
@class OAIRequestRangeFull;
@protocol OAIRequestTimeFilterPostcodesProperty;
@class OAIRequestTimeFilterPostcodesProperty;
@protocol OAIRequestTransportation;
@class OAIRequestTransportation;



@protocol OAIRequestTimeFilterPostcodesArrivalSearch
@end

@interface OAIRequestTimeFilterPostcodesArrivalSearch : OAIObject


@property(nonatomic) NSString* _id;

@property(nonatomic) OAIRequestTransportation* transportation;

@property(nonatomic) NSNumber* travelTime;

@property(nonatomic) NSDate* arrivalTime;

@property(nonatomic) NSArray<OAIRequestTimeFilterPostcodesProperty>* properties;

@property(nonatomic) OAIRequestRangeFull* range;

@end
