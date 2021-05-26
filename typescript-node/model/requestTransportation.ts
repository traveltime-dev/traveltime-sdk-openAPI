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

import { RequestFile } from './models';

export class RequestTransportation {
    'type': RequestTransportation.TypeEnum;
    'disableBorderCrossing'?: boolean;
    'ptChangeDelay'?: number;
    'walkingTime'?: number;
    'drivingTimeToStation'?: number;
    'cyclingTimeToStation'?: number;
    'parkingTime'?: number;
    'boardingTime'?: number;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "type",
            "baseName": "type",
            "type": "RequestTransportation.TypeEnum"
        },
        {
            "name": "disableBorderCrossing",
            "baseName": "disable_border_crossing",
            "type": "boolean"
        },
        {
            "name": "ptChangeDelay",
            "baseName": "pt_change_delay",
            "type": "number"
        },
        {
            "name": "walkingTime",
            "baseName": "walking_time",
            "type": "number"
        },
        {
            "name": "drivingTimeToStation",
            "baseName": "driving_time_to_station",
            "type": "number"
        },
        {
            "name": "cyclingTimeToStation",
            "baseName": "cycling_time_to_station",
            "type": "number"
        },
        {
            "name": "parkingTime",
            "baseName": "parking_time",
            "type": "number"
        },
        {
            "name": "boardingTime",
            "baseName": "boarding_time",
            "type": "number"
        }    ];

    static getAttributeTypeMap() {
        return RequestTransportation.attributeTypeMap;
    }
}

export namespace RequestTransportation {
    export enum TypeEnum {
        Cycling = <any> 'cycling',
        Driving = <any> 'driving',
        Drivingtrain = <any> 'driving+train',
        PublicTransport = <any> 'public_transport',
        Walking = <any> 'walking',
        Coach = <any> 'coach',
        Bus = <any> 'bus',
        Train = <any> 'train',
        Ferry = <any> 'ferry',
        Drivingferry = <any> 'driving+ferry',
        Cyclingferry = <any> 'cycling+ferry'
    }
}
