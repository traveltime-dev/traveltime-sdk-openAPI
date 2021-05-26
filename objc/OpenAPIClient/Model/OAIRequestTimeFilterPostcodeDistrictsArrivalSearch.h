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
#import "OAIRequestTimeFilterPostcodeDistrictsProperty.h"
#import "OAIRequestTransportation.h"
@protocol OAIRequestRangeFull;
@class OAIRequestRangeFull;
@protocol OAIRequestTimeFilterPostcodeDistrictsProperty;
@class OAIRequestTimeFilterPostcodeDistrictsProperty;
@protocol OAIRequestTransportation;
@class OAIRequestTransportation;



@protocol OAIRequestTimeFilterPostcodeDistrictsArrivalSearch
@end

@interface OAIRequestTimeFilterPostcodeDistrictsArrivalSearch : OAIObject


@property(nonatomic) NSString* _id;

@property(nonatomic) OAIRequestTransportation* transportation;

@property(nonatomic) NSNumber* travelTime;

@property(nonatomic) NSDate* arrivalTime;

@property(nonatomic) NSNumber* reachablePostcodesThreshold;

@property(nonatomic) NSArray<OAIRequestTimeFilterPostcodeDistrictsProperty>* properties;

@property(nonatomic) OAIRequestRangeFull* range;

@end
