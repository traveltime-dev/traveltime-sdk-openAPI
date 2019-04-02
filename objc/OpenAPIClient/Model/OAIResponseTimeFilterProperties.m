#import "OAIResponseTimeFilterProperties.h"

@implementation OAIResponseTimeFilterProperties

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"travelTime": @"travel_time", @"distance": @"distance", @"distanceBreakdown": @"distance_breakdown", @"fares": @"fares", @"route": @"route" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"travelTime", @"distance", @"distanceBreakdown", @"fares", @"route"];
  return [optionalProperties containsObject:propertyName];
}

@end
