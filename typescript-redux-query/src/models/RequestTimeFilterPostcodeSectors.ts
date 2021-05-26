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
import {
    RequestTimeFilterPostcodeSectorsArrivalSearch,
    RequestTimeFilterPostcodeSectorsArrivalSearchFromJSON,
    RequestTimeFilterPostcodeSectorsArrivalSearchToJSON,
    RequestTimeFilterPostcodeSectorsDepartureSearch,
    RequestTimeFilterPostcodeSectorsDepartureSearchFromJSON,
    RequestTimeFilterPostcodeSectorsDepartureSearchToJSON,
} from './';

/**
 * 
 * @export
 * @interface RequestTimeFilterPostcodeSectors
 */
export interface RequestTimeFilterPostcodeSectors  {
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodeSectorsDepartureSearch>}
     * @memberof RequestTimeFilterPostcodeSectors
     */
    departureSearches?: Array<RequestTimeFilterPostcodeSectorsDepartureSearch>;
    /**
     * 
     * @type {Array<RequestTimeFilterPostcodeSectorsArrivalSearch>}
     * @memberof RequestTimeFilterPostcodeSectors
     */
    arrivalSearches?: Array<RequestTimeFilterPostcodeSectorsArrivalSearch>;
}

export function RequestTimeFilterPostcodeSectorsFromJSON(json: any): RequestTimeFilterPostcodeSectors {
    return {
        'departureSearches': !exists(json, 'departure_searches') ? undefined : (json['departure_searches'] as Array<any>).map(RequestTimeFilterPostcodeSectorsDepartureSearchFromJSON),
        'arrivalSearches': !exists(json, 'arrival_searches') ? undefined : (json['arrival_searches'] as Array<any>).map(RequestTimeFilterPostcodeSectorsArrivalSearchFromJSON),
    };
}

export function RequestTimeFilterPostcodeSectorsToJSON(value?: RequestTimeFilterPostcodeSectors): any {
    if (value === undefined) {
        return undefined;
    }
    return {
        'departure_searches': value.departureSearches === undefined ? undefined : (value.departureSearches as Array<any>).map(RequestTimeFilterPostcodeSectorsDepartureSearchToJSON),
        'arrival_searches': value.arrivalSearches === undefined ? undefined : (value.arrivalSearches as Array<any>).map(RequestTimeFilterPostcodeSectorsArrivalSearchToJSON),
    };
}


