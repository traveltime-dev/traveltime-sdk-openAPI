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
import { ResponseFares } from './responseFares';
import { ResponseRoute } from './responseRoute';


export interface ResponseRoutesProperties { 
    travel_time?: number;
    distance?: number;
    fares?: ResponseFares;
    route?: ResponseRoute;
}

