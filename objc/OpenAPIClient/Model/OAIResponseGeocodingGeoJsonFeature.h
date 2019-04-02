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


#import "OAIResponseGeocodingGeometry.h"
#import "OAIResponseGeocodingProperties.h"
@protocol OAIResponseGeocodingGeometry;
@class OAIResponseGeocodingGeometry;
@protocol OAIResponseGeocodingProperties;
@class OAIResponseGeocodingProperties;



@protocol OAIResponseGeocodingGeoJsonFeature
@end

@interface OAIResponseGeocodingGeoJsonFeature : OAIObject


@property(nonatomic) NSString* type;

@property(nonatomic) OAIResponseGeocodingGeometry* geometry;

@property(nonatomic) OAIResponseGeocodingProperties* properties;

@end