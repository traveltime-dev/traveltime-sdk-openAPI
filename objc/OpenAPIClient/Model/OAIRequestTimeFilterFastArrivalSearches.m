#import "OAIRequestTimeFilterFastArrivalSearches.h"

@implementation OAIRequestTimeFilterFastArrivalSearches

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"manyToOne": @"many_to_one", @"oneToMany": @"one_to_many" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"manyToOne", @"oneToMany"];
  return [optionalProperties containsObject:propertyName];
}

@end
