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

import * as models from './models';

export interface RequestTimeFilterFastArrivalOneToManySearch {
    id: string;

    departure_location_id: string;

    arrival_location_ids: Array<string>;

    transportation: models.RequestTransportationFast;

    travel_time: number;

    arrival_time_period: models.RequestArrivalTimePeriod;

    properties: Array<models.RequestTimeFilterFastProperty>;

}
