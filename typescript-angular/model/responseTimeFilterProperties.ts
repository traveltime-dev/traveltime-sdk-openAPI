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
import { ResponseDistanceBreakdownItem } from './responseDistanceBreakdownItem';
import { ResponseFares } from './responseFares';
import { ResponseRoute } from './responseRoute';


export interface ResponseTimeFilterProperties { 
    travelTime?: number;
    distance?: number;
    distanceBreakdown?: Array<ResponseDistanceBreakdownItem>;
    fares?: ResponseFares;
    route?: ResponseRoute;
}