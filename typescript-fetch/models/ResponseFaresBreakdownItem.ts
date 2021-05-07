/* tslint:disable */
/* eslint-disable */
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

import { exists, mapValues } from '../runtime';
import {
    ResponseFareTicket,
    ResponseFareTicketFromJSON,
    ResponseFareTicketFromJSONTyped,
    ResponseFareTicketToJSON,
    ResponseTransportationMode,
    ResponseTransportationModeFromJSON,
    ResponseTransportationModeFromJSONTyped,
    ResponseTransportationModeToJSON,
} from './';

/**
 * 
 * @export
 * @interface ResponseFaresBreakdownItem
 */
export interface ResponseFaresBreakdownItem {
    /**
     * 
     * @type {Array<ResponseTransportationMode>}
     * @memberof ResponseFaresBreakdownItem
     */
    modes: Array<ResponseTransportationMode>;
    /**
     * 
     * @type {Array<number>}
     * @memberof ResponseFaresBreakdownItem
     */
    routePartIds: Array<number>;
    /**
     * 
     * @type {Array<ResponseFareTicket>}
     * @memberof ResponseFaresBreakdownItem
     */
    tickets: Array<ResponseFareTicket>;
}

export function ResponseFaresBreakdownItemFromJSON(json: any): ResponseFaresBreakdownItem {
    return ResponseFaresBreakdownItemFromJSONTyped(json, false);
}

export function ResponseFaresBreakdownItemFromJSONTyped(json: any, ignoreDiscriminator: boolean): ResponseFaresBreakdownItem {
    if ((json === undefined) || (json === null)) {
        return json;
    }
    return {
        
        'modes': ((json['modes'] as Array<any>).map(ResponseTransportationModeFromJSON)),
        'routePartIds': json['route_part_ids'],
        'tickets': ((json['tickets'] as Array<any>).map(ResponseFareTicketFromJSON)),
    };
}

export function ResponseFaresBreakdownItemToJSON(value?: ResponseFaresBreakdownItem | null): any {
    if (value === undefined) {
        return undefined;
    }
    if (value === null) {
        return null;
    }
    return {
        
        'modes': ((value.modes as Array<any>).map(ResponseTransportationModeToJSON)),
        'route_part_ids': value.routePartIds,
        'tickets': ((value.tickets as Array<any>).map(ResponseFareTicketToJSON)),
    };
}


