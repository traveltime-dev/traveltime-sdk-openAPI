#import "OAIResponseError.h"

@implementation OAIResponseError

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"httpStatus": @"http_status", @"errorCode": @"error_code", @"_description": @"description", @"documentationLink": @"documentation_link", @"additionalInfo": @"additional_info" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"httpStatus", @"errorCode", @"_description", @"documentationLink", @"additionalInfo"];
  return [optionalProperties containsObject:propertyName];
}

@end
