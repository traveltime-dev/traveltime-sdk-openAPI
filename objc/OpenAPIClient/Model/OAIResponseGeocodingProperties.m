#import "OAIResponseGeocodingProperties.h"

@implementation OAIResponseGeocodingProperties

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"label": @"label", @"score": @"score", @"houseNumber": @"house_number", @"street": @"street", @"region": @"region", @"regionCode": @"region_code", @"neighbourhood": @"neighbourhood", @"county": @"county", @"macroregion": @"macroregion", @"city": @"city", @"country": @"country", @"countryCode": @"country_code", @"continent": @"continent", @"postcode": @"postcode", @"features": @"features" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"score", @"houseNumber", @"street", @"region", @"regionCode", @"neighbourhood", @"county", @"macroregion", @"city", @"country", @"countryCode", @"continent", @"postcode", @"features"];
  return [optionalProperties containsObject:propertyName];
}

@end
