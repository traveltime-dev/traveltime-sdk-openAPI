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


#import "OAIRequestLocation.h"
#import "OAIRequestRoutesArrivalSearch.h"
#import "OAIRequestRoutesDepartureSearch.h"
@protocol OAIRequestLocation;
@class OAIRequestLocation;
@protocol OAIRequestRoutesArrivalSearch;
@class OAIRequestRoutesArrivalSearch;
@protocol OAIRequestRoutesDepartureSearch;
@class OAIRequestRoutesDepartureSearch;



@protocol OAIRequestRoutes
@end

@interface OAIRequestRoutes : OAIObject


@property(nonatomic) NSArray<OAIRequestLocation>* locations;

@property(nonatomic) NSArray<OAIRequestRoutesDepartureSearch>* departureSearches;

@property(nonatomic) NSArray<OAIRequestRoutesArrivalSearch>* arrivalSearches;

@end
