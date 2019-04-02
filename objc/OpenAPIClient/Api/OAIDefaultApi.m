#import "OAIDefaultApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIRequestRoutes.h"
#import "OAIRequestSupportedLocations.h"
#import "OAIRequestTimeFilter.h"
#import "OAIRequestTimeFilterFast.h"
#import "OAIRequestTimeFilterPostcodeDistricts.h"
#import "OAIRequestTimeFilterPostcodeSectors.h"
#import "OAIRequestTimeFilterPostcodes.h"
#import "OAIRequestTimeMap.h"
#import "OAIResponseError.h"
#import "OAIResponseGeocoding.h"
#import "OAIResponseMapInfo.h"
#import "OAIResponseRoutes.h"
#import "OAIResponseSupportedLocations.h"
#import "OAIResponseTimeFilter.h"
#import "OAIResponseTimeFilterFast.h"
#import "OAIResponseTimeFilterPostcodeDistricts.h"
#import "OAIResponseTimeFilterPostcodeSectors.h"
#import "OAIResponseTimeFilterPostcodes.h"
#import "OAIResponseTimeMap.h"


@interface OAIDefaultApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIDefaultApi

NSString* kOAIDefaultApiErrorDomain = @"OAIDefaultApiErrorDomain";
NSInteger kOAIDefaultApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// 
/// 
///  @param focusLat  
///
///  @param focusLng  
///
///  @param withinCountry  (optional)
///
///  @returns OAIResponseGeocoding*
///
-(NSURLSessionTask*) geocodingReverseSearchWithFocusLat: (NSNumber*) focusLat
    focusLng: (NSNumber*) focusLng
    withinCountry: (NSString*) withinCountry
    completionHandler: (void (^)(OAIResponseGeocoding* output, NSError* error)) handler {
    // verify the required parameter 'focusLat' is set
    if (focusLat == nil) {
        NSParameterAssert(focusLat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"focusLat"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'focusLng' is set
    if (focusLng == nil) {
        NSParameterAssert(focusLng);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"focusLng"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/geocoding/reverse"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (focusLat != nil) {
        queryParams[@"focus.lat"] = focusLat;
    }
    if (focusLng != nil) {
        queryParams[@"focus.lng"] = focusLng;
    }
    if (withinCountry != nil) {
        queryParams[@"within.country"] = withinCountry;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseGeocoding*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseGeocoding*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param query  
///
///  @param withinCountry  (optional)
///
///  @param focusLat  (optional)
///
///  @param focusLng  (optional)
///
///  @returns OAIResponseGeocoding*
///
-(NSURLSessionTask*) geocodingSearchWithQuery: (NSString*) query
    withinCountry: (NSString*) withinCountry
    focusLat: (NSNumber*) focusLat
    focusLng: (NSNumber*) focusLng
    completionHandler: (void (^)(OAIResponseGeocoding* output, NSError* error)) handler {
    // verify the required parameter 'query' is set
    if (query == nil) {
        NSParameterAssert(query);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"query"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/geocoding/search"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (withinCountry != nil) {
        queryParams[@"within.country"] = withinCountry;
    }
    if (focusLat != nil) {
        queryParams[@"focus.lat"] = focusLat;
    }
    if (focusLng != nil) {
        queryParams[@"focus.lng"] = focusLng;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseGeocoding*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseGeocoding*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @returns OAIResponseMapInfo*
///
-(NSURLSessionTask*) mapInfoWithCompletionHandler: 
    (void (^)(OAIResponseMapInfo* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/map-info"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseMapInfo*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseMapInfo*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestRoutes  
///
///  @returns OAIResponseRoutes*
///
-(NSURLSessionTask*) routesWithRequestRoutes: (OAIRequestRoutes*) requestRoutes
    completionHandler: (void (^)(OAIResponseRoutes* output, NSError* error)) handler {
    // verify the required parameter 'requestRoutes' is set
    if (requestRoutes == nil) {
        NSParameterAssert(requestRoutes);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestRoutes"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/routes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestRoutes;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseRoutes*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseRoutes*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestSupportedLocations  
///
///  @returns OAIResponseSupportedLocations*
///
-(NSURLSessionTask*) supportedLocationsWithRequestSupportedLocations: (OAIRequestSupportedLocations*) requestSupportedLocations
    completionHandler: (void (^)(OAIResponseSupportedLocations* output, NSError* error)) handler {
    // verify the required parameter 'requestSupportedLocations' is set
    if (requestSupportedLocations == nil) {
        NSParameterAssert(requestSupportedLocations);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestSupportedLocations"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/supported-locations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestSupportedLocations;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseSupportedLocations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseSupportedLocations*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeFilter  
///
///  @returns OAIResponseTimeFilter*
///
-(NSURLSessionTask*) timeFilterWithRequestTimeFilter: (OAIRequestTimeFilter*) requestTimeFilter
    completionHandler: (void (^)(OAIResponseTimeFilter* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeFilter' is set
    if (requestTimeFilter == nil) {
        NSParameterAssert(requestTimeFilter);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeFilter"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-filter"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeFilter;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeFilter*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeFilter*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeFilterFast  
///
///  @returns OAIResponseTimeFilterFast*
///
-(NSURLSessionTask*) timeFilterFastWithRequestTimeFilterFast: (OAIRequestTimeFilterFast*) requestTimeFilterFast
    completionHandler: (void (^)(OAIResponseTimeFilterFast* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeFilterFast' is set
    if (requestTimeFilterFast == nil) {
        NSParameterAssert(requestTimeFilterFast);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeFilterFast"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-filter/fast"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeFilterFast;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeFilterFast*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeFilterFast*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeFilterPostcodeDistricts  
///
///  @returns OAIResponseTimeFilterPostcodeDistricts*
///
-(NSURLSessionTask*) timeFilterPostcodeDistrictsWithRequestTimeFilterPostcodeDistricts: (OAIRequestTimeFilterPostcodeDistricts*) requestTimeFilterPostcodeDistricts
    completionHandler: (void (^)(OAIResponseTimeFilterPostcodeDistricts* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeFilterPostcodeDistricts' is set
    if (requestTimeFilterPostcodeDistricts == nil) {
        NSParameterAssert(requestTimeFilterPostcodeDistricts);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeFilterPostcodeDistricts"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-filter/postcode-districts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeFilterPostcodeDistricts;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeFilterPostcodeDistricts*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeFilterPostcodeDistricts*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeFilterPostcodeSectors  
///
///  @returns OAIResponseTimeFilterPostcodeSectors*
///
-(NSURLSessionTask*) timeFilterPostcodeSectorsWithRequestTimeFilterPostcodeSectors: (OAIRequestTimeFilterPostcodeSectors*) requestTimeFilterPostcodeSectors
    completionHandler: (void (^)(OAIResponseTimeFilterPostcodeSectors* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeFilterPostcodeSectors' is set
    if (requestTimeFilterPostcodeSectors == nil) {
        NSParameterAssert(requestTimeFilterPostcodeSectors);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeFilterPostcodeSectors"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-filter/postcode-sectors"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeFilterPostcodeSectors;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeFilterPostcodeSectors*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeFilterPostcodeSectors*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeFilterPostcodes  
///
///  @returns OAIResponseTimeFilterPostcodes*
///
-(NSURLSessionTask*) timeFilterPostcodesWithRequestTimeFilterPostcodes: (OAIRequestTimeFilterPostcodes*) requestTimeFilterPostcodes
    completionHandler: (void (^)(OAIResponseTimeFilterPostcodes* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeFilterPostcodes' is set
    if (requestTimeFilterPostcodes == nil) {
        NSParameterAssert(requestTimeFilterPostcodes);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeFilterPostcodes"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-filter/postcodes"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeFilterPostcodes;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeFilterPostcodes*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeFilterPostcodes*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param requestTimeMap  
///
///  @returns OAIResponseTimeMap*
///
-(NSURLSessionTask*) timeMapWithRequestTimeMap: (OAIRequestTimeMap*) requestTimeMap
    completionHandler: (void (^)(OAIResponseTimeMap* output, NSError* error)) handler {
    // verify the required parameter 'requestTimeMap' is set
    if (requestTimeMap == nil) {
        NSParameterAssert(requestTimeMap);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"requestTimeMap"] };
            NSError* error = [NSError errorWithDomain:kOAIDefaultApiErrorDomain code:kOAIDefaultApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v4/time-map"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/vnd.wkt+json", @"application/vnd.wkt-no-holes+json", @"application/vnd.bounding-boxes+json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"ApiKey", @"ApplicationId"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = requestTimeMap;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIResponseTimeMap*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIResponseTimeMap*)data, error);
                                }
                            }];
}



@end
