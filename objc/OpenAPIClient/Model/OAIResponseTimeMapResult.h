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


#import "OAIResponseShape.h"
#import "OAIResponseTimeMapProperties.h"
@protocol OAIResponseShape;
@class OAIResponseShape;
@protocol OAIResponseTimeMapProperties;
@class OAIResponseTimeMapProperties;



@protocol OAIResponseTimeMapResult
@end

@interface OAIResponseTimeMapResult : OAIObject


@property(nonatomic) NSString* searchId;

@property(nonatomic) NSArray<OAIResponseShape>* shapes;

@property(nonatomic) OAIResponseTimeMapProperties* properties;

@end
