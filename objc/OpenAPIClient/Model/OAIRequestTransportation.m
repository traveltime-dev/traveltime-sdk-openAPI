#import "OAIRequestTransportation.h"

@implementation OAIRequestTransportation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"type": @"type", @"disableBorderCrossing": @"disable_border_crossing", @"ptChangeDelay": @"pt_change_delay", @"walkingTime": @"walking_time", @"drivingTimeToStation": @"driving_time_to_station", @"cyclingTimeToStation": @"cycling_time_to_station", @"parkingTime": @"parking_time", @"boardingTime": @"boarding_time" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"disableBorderCrossing", @"ptChangeDelay", @"walkingTime", @"drivingTimeToStation", @"cyclingTimeToStation", @"parkingTime", @"boardingTime"];
  return [optionalProperties containsObject:propertyName];
}

@end
