// tslint:disable
/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import {
    ResponseTimeFilterPostcodeDistrict,
} from './';

/**
 * @export
 * @interface ResponseTimeFilterPostcodeDistrictsResult
 */
export interface ResponseTimeFilterPostcodeDistrictsResult {
    /**
     * 
     * @type {string}
     * @memberof ResponseTimeFilterPostcodeDistrictsResult
     */
    searchId: string;
    /**
     * 
     * @type {Array<ResponseTimeFilterPostcodeDistrict>}
     * @memberof ResponseTimeFilterPostcodeDistrictsResult
     */
    districts: Array<ResponseTimeFilterPostcodeDistrict>;
}