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


export interface ResponseFareTicket { 
    type: ResponseFareTicket.TypeEnum;
    price: number;
    currency: string;
}
export namespace ResponseFareTicket {
    export type TypeEnum = 'single' | 'week' | 'month' | 'year';
    export const TypeEnum = {
        Single: 'single' as TypeEnum,
        Week: 'week' as TypeEnum,
        Month: 'month' as TypeEnum,
        Year: 'year' as TypeEnum
    }
}