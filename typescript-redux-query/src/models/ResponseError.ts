// tslint:disable
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

import { exists, mapValues } from '../runtime';
/**
 * 
 * @export
 * @interface ResponseError
 */
export interface ResponseError  {
    /**
     * 
     * @type {number}
     * @memberof ResponseError
     */
    httpStatus?: number;
    /**
     * 
     * @type {number}
     * @memberof ResponseError
     */
    errorCode?: number;
    /**
     * 
     * @type {string}
     * @memberof ResponseError
     */
    description?: string;
    /**
     * 
     * @type {string}
     * @memberof ResponseError
     */
    documentationLink?: string;
    /**
     * 
     * @type {{ [key: string]: Array<string>; }}
     * @memberof ResponseError
     */
    additionalInfo?: { [key: string]: Array<string>; };
}

export function ResponseErrorFromJSON(json: any): ResponseError {
    return {
        'httpStatus': !exists(json, 'http_status') ? undefined : json['http_status'],
        'errorCode': !exists(json, 'error_code') ? undefined : json['error_code'],
        'description': !exists(json, 'description') ? undefined : json['description'],
        'documentationLink': !exists(json, 'documentation_link') ? undefined : json['documentation_link'],
        'additionalInfo': !exists(json, 'additional_info') ? undefined : json['additional_info'],
    };
}

export function ResponseErrorToJSON(value?: ResponseError): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'http_status': value.httpStatus,
        'error_code': value.errorCode,
        'description': value.description,
        'documentation_link': value.documentationLink,
        'additional_info': value.additionalInfo,
    };
}


