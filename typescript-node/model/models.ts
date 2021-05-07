import localVarRequest from 'request';

export * from './coords';
export * from './requestArrivalTimePeriod';
export * from './requestLocation';
export * from './requestRangeFull';
export * from './requestRangeNoMaxResults';
export * from './requestRoutes';
export * from './requestRoutesArrivalSearch';
export * from './requestRoutesDepartureSearch';
export * from './requestRoutesProperty';
export * from './requestSupportedLocations';
export * from './requestTimeFilter';
export * from './requestTimeFilterArrivalSearch';
export * from './requestTimeFilterDepartureSearch';
export * from './requestTimeFilterFast';
export * from './requestTimeFilterFastArrivalManyToOneSearch';
export * from './requestTimeFilterFastArrivalOneToManySearch';
export * from './requestTimeFilterFastArrivalSearches';
export * from './requestTimeFilterFastProperty';
export * from './requestTimeFilterPostcodeDistricts';
export * from './requestTimeFilterPostcodeDistrictsArrivalSearch';
export * from './requestTimeFilterPostcodeDistrictsDepartureSearch';
export * from './requestTimeFilterPostcodeDistrictsProperty';
export * from './requestTimeFilterPostcodeSectors';
export * from './requestTimeFilterPostcodeSectorsArrivalSearch';
export * from './requestTimeFilterPostcodeSectorsDepartureSearch';
export * from './requestTimeFilterPostcodeSectorsProperty';
export * from './requestTimeFilterPostcodes';
export * from './requestTimeFilterPostcodesArrivalSearch';
export * from './requestTimeFilterPostcodesDepartureSearch';
export * from './requestTimeFilterPostcodesProperty';
export * from './requestTimeFilterProperty';
export * from './requestTimeMap';
export * from './requestTimeMapArrivalSearch';
export * from './requestTimeMapDepartureSearch';
export * from './requestTimeMapProperty';
export * from './requestTransportation';
export * from './requestTransportationFast';
export * from './requestUnionOnIntersection';
export * from './responseBoundingBox';
export * from './responseBox';
export * from './responseDistanceBreakdownItem';
export * from './responseError';
export * from './responseFareTicket';
export * from './responseFares';
export * from './responseFaresBreakdownItem';
export * from './responseFaresFast';
export * from './responseGeocoding';
export * from './responseGeocodingGeoJsonFeature';
export * from './responseGeocodingGeometry';
export * from './responseGeocodingProperties';
export * from './responseMapInfo';
export * from './responseMapInfoFeatures';
export * from './responseMapInfoFeaturesPublicTransport';
export * from './responseMapInfoMap';
export * from './responseRoute';
export * from './responseRoutePart';
export * from './responseRoutes';
export * from './responseRoutesLocation';
export * from './responseRoutesProperties';
export * from './responseRoutesResult';
export * from './responseShape';
export * from './responseSupportedLocation';
export * from './responseSupportedLocations';
export * from './responseTimeFilter';
export * from './responseTimeFilterFast';
export * from './responseTimeFilterFastLocation';
export * from './responseTimeFilterFastProperties';
export * from './responseTimeFilterFastResult';
export * from './responseTimeFilterLocation';
export * from './responseTimeFilterPostcode';
export * from './responseTimeFilterPostcodeDistrict';
export * from './responseTimeFilterPostcodeDistrictProperties';
export * from './responseTimeFilterPostcodeDistricts';
export * from './responseTimeFilterPostcodeDistrictsResult';
export * from './responseTimeFilterPostcodeSector';
export * from './responseTimeFilterPostcodeSectorProperties';
export * from './responseTimeFilterPostcodeSectors';
export * from './responseTimeFilterPostcodeSectorsResult';
export * from './responseTimeFilterPostcodes';
export * from './responseTimeFilterPostcodesProperties';
export * from './responseTimeFilterPostcodesResult';
export * from './responseTimeFilterProperties';
export * from './responseTimeFilterResult';
export * from './responseTimeMap';
export * from './responseTimeMapBoundingBoxes';
export * from './responseTimeMapBoundingBoxesResult';
export * from './responseTimeMapProperties';
export * from './responseTimeMapResult';
export * from './responseTimeMapWkt';
export * from './responseTimeMapWktResult';
export * from './responseTransportationMode';
export * from './responseTravelTimeStatistics';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { Coords } from './coords';
import { RequestArrivalTimePeriod } from './requestArrivalTimePeriod';
import { RequestLocation } from './requestLocation';
import { RequestRangeFull } from './requestRangeFull';
import { RequestRangeNoMaxResults } from './requestRangeNoMaxResults';
import { RequestRoutes } from './requestRoutes';
import { RequestRoutesArrivalSearch } from './requestRoutesArrivalSearch';
import { RequestRoutesDepartureSearch } from './requestRoutesDepartureSearch';
import { RequestRoutesProperty } from './requestRoutesProperty';
import { RequestSupportedLocations } from './requestSupportedLocations';
import { RequestTimeFilter } from './requestTimeFilter';
import { RequestTimeFilterArrivalSearch } from './requestTimeFilterArrivalSearch';
import { RequestTimeFilterDepartureSearch } from './requestTimeFilterDepartureSearch';
import { RequestTimeFilterFast } from './requestTimeFilterFast';
import { RequestTimeFilterFastArrivalManyToOneSearch } from './requestTimeFilterFastArrivalManyToOneSearch';
import { RequestTimeFilterFastArrivalOneToManySearch } from './requestTimeFilterFastArrivalOneToManySearch';
import { RequestTimeFilterFastArrivalSearches } from './requestTimeFilterFastArrivalSearches';
import { RequestTimeFilterFastProperty } from './requestTimeFilterFastProperty';
import { RequestTimeFilterPostcodeDistricts } from './requestTimeFilterPostcodeDistricts';
import { RequestTimeFilterPostcodeDistrictsArrivalSearch } from './requestTimeFilterPostcodeDistrictsArrivalSearch';
import { RequestTimeFilterPostcodeDistrictsDepartureSearch } from './requestTimeFilterPostcodeDistrictsDepartureSearch';
import { RequestTimeFilterPostcodeDistrictsProperty } from './requestTimeFilterPostcodeDistrictsProperty';
import { RequestTimeFilterPostcodeSectors } from './requestTimeFilterPostcodeSectors';
import { RequestTimeFilterPostcodeSectorsArrivalSearch } from './requestTimeFilterPostcodeSectorsArrivalSearch';
import { RequestTimeFilterPostcodeSectorsDepartureSearch } from './requestTimeFilterPostcodeSectorsDepartureSearch';
import { RequestTimeFilterPostcodeSectorsProperty } from './requestTimeFilterPostcodeSectorsProperty';
import { RequestTimeFilterPostcodes } from './requestTimeFilterPostcodes';
import { RequestTimeFilterPostcodesArrivalSearch } from './requestTimeFilterPostcodesArrivalSearch';
import { RequestTimeFilterPostcodesDepartureSearch } from './requestTimeFilterPostcodesDepartureSearch';
import { RequestTimeFilterPostcodesProperty } from './requestTimeFilterPostcodesProperty';
import { RequestTimeFilterProperty } from './requestTimeFilterProperty';
import { RequestTimeMap } from './requestTimeMap';
import { RequestTimeMapArrivalSearch } from './requestTimeMapArrivalSearch';
import { RequestTimeMapDepartureSearch } from './requestTimeMapDepartureSearch';
import { RequestTimeMapProperty } from './requestTimeMapProperty';
import { RequestTransportation } from './requestTransportation';
import { RequestTransportationFast } from './requestTransportationFast';
import { RequestUnionOnIntersection } from './requestUnionOnIntersection';
import { ResponseBoundingBox } from './responseBoundingBox';
import { ResponseBox } from './responseBox';
import { ResponseDistanceBreakdownItem } from './responseDistanceBreakdownItem';
import { ResponseError } from './responseError';
import { ResponseFareTicket } from './responseFareTicket';
import { ResponseFares } from './responseFares';
import { ResponseFaresBreakdownItem } from './responseFaresBreakdownItem';
import { ResponseFaresFast } from './responseFaresFast';
import { ResponseGeocoding } from './responseGeocoding';
import { ResponseGeocodingGeoJsonFeature } from './responseGeocodingGeoJsonFeature';
import { ResponseGeocodingGeometry } from './responseGeocodingGeometry';
import { ResponseGeocodingProperties } from './responseGeocodingProperties';
import { ResponseMapInfo } from './responseMapInfo';
import { ResponseMapInfoFeatures } from './responseMapInfoFeatures';
import { ResponseMapInfoFeaturesPublicTransport } from './responseMapInfoFeaturesPublicTransport';
import { ResponseMapInfoMap } from './responseMapInfoMap';
import { ResponseRoute } from './responseRoute';
import { ResponseRoutePart } from './responseRoutePart';
import { ResponseRoutes } from './responseRoutes';
import { ResponseRoutesLocation } from './responseRoutesLocation';
import { ResponseRoutesProperties } from './responseRoutesProperties';
import { ResponseRoutesResult } from './responseRoutesResult';
import { ResponseShape } from './responseShape';
import { ResponseSupportedLocation } from './responseSupportedLocation';
import { ResponseSupportedLocations } from './responseSupportedLocations';
import { ResponseTimeFilter } from './responseTimeFilter';
import { ResponseTimeFilterFast } from './responseTimeFilterFast';
import { ResponseTimeFilterFastLocation } from './responseTimeFilterFastLocation';
import { ResponseTimeFilterFastProperties } from './responseTimeFilterFastProperties';
import { ResponseTimeFilterFastResult } from './responseTimeFilterFastResult';
import { ResponseTimeFilterLocation } from './responseTimeFilterLocation';
import { ResponseTimeFilterPostcode } from './responseTimeFilterPostcode';
import { ResponseTimeFilterPostcodeDistrict } from './responseTimeFilterPostcodeDistrict';
import { ResponseTimeFilterPostcodeDistrictProperties } from './responseTimeFilterPostcodeDistrictProperties';
import { ResponseTimeFilterPostcodeDistricts } from './responseTimeFilterPostcodeDistricts';
import { ResponseTimeFilterPostcodeDistrictsResult } from './responseTimeFilterPostcodeDistrictsResult';
import { ResponseTimeFilterPostcodeSector } from './responseTimeFilterPostcodeSector';
import { ResponseTimeFilterPostcodeSectorProperties } from './responseTimeFilterPostcodeSectorProperties';
import { ResponseTimeFilterPostcodeSectors } from './responseTimeFilterPostcodeSectors';
import { ResponseTimeFilterPostcodeSectorsResult } from './responseTimeFilterPostcodeSectorsResult';
import { ResponseTimeFilterPostcodes } from './responseTimeFilterPostcodes';
import { ResponseTimeFilterPostcodesProperties } from './responseTimeFilterPostcodesProperties';
import { ResponseTimeFilterPostcodesResult } from './responseTimeFilterPostcodesResult';
import { ResponseTimeFilterProperties } from './responseTimeFilterProperties';
import { ResponseTimeFilterResult } from './responseTimeFilterResult';
import { ResponseTimeMap } from './responseTimeMap';
import { ResponseTimeMapBoundingBoxes } from './responseTimeMapBoundingBoxes';
import { ResponseTimeMapBoundingBoxesResult } from './responseTimeMapBoundingBoxesResult';
import { ResponseTimeMapProperties } from './responseTimeMapProperties';
import { ResponseTimeMapResult } from './responseTimeMapResult';
import { ResponseTimeMapWkt } from './responseTimeMapWkt';
import { ResponseTimeMapWktResult } from './responseTimeMapWktResult';
import { ResponseTransportationMode } from './responseTransportationMode';
import { ResponseTravelTimeStatistics } from './responseTravelTimeStatistics';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
        "RequestArrivalTimePeriod": RequestArrivalTimePeriod,
        "RequestRoutesProperty": RequestRoutesProperty,
        "RequestTimeFilterFastProperty": RequestTimeFilterFastProperty,
        "RequestTimeFilterPostcodeDistrictsProperty": RequestTimeFilterPostcodeDistrictsProperty,
        "RequestTimeFilterPostcodeSectorsProperty": RequestTimeFilterPostcodeSectorsProperty,
        "RequestTimeFilterPostcodesProperty": RequestTimeFilterPostcodesProperty,
        "RequestTimeFilterProperty": RequestTimeFilterProperty,
        "RequestTimeMapProperty": RequestTimeMapProperty,
        "RequestTransportation.TypeEnum": RequestTransportation.TypeEnum,
        "RequestTransportationFast.TypeEnum": RequestTransportationFast.TypeEnum,
        "ResponseFareTicket.TypeEnum": ResponseFareTicket.TypeEnum,
        "ResponseRoutePart.TypeEnum": ResponseRoutePart.TypeEnum,
        "ResponseTransportationMode": ResponseTransportationMode,
}

let typeMap: {[index: string]: any} = {
    "Coords": Coords,
    "RequestLocation": RequestLocation,
    "RequestRangeFull": RequestRangeFull,
    "RequestRangeNoMaxResults": RequestRangeNoMaxResults,
    "RequestRoutes": RequestRoutes,
    "RequestRoutesArrivalSearch": RequestRoutesArrivalSearch,
    "RequestRoutesDepartureSearch": RequestRoutesDepartureSearch,
    "RequestSupportedLocations": RequestSupportedLocations,
    "RequestTimeFilter": RequestTimeFilter,
    "RequestTimeFilterArrivalSearch": RequestTimeFilterArrivalSearch,
    "RequestTimeFilterDepartureSearch": RequestTimeFilterDepartureSearch,
    "RequestTimeFilterFast": RequestTimeFilterFast,
    "RequestTimeFilterFastArrivalManyToOneSearch": RequestTimeFilterFastArrivalManyToOneSearch,
    "RequestTimeFilterFastArrivalOneToManySearch": RequestTimeFilterFastArrivalOneToManySearch,
    "RequestTimeFilterFastArrivalSearches": RequestTimeFilterFastArrivalSearches,
    "RequestTimeFilterPostcodeDistricts": RequestTimeFilterPostcodeDistricts,
    "RequestTimeFilterPostcodeDistrictsArrivalSearch": RequestTimeFilterPostcodeDistrictsArrivalSearch,
    "RequestTimeFilterPostcodeDistrictsDepartureSearch": RequestTimeFilterPostcodeDistrictsDepartureSearch,
    "RequestTimeFilterPostcodeSectors": RequestTimeFilterPostcodeSectors,
    "RequestTimeFilterPostcodeSectorsArrivalSearch": RequestTimeFilterPostcodeSectorsArrivalSearch,
    "RequestTimeFilterPostcodeSectorsDepartureSearch": RequestTimeFilterPostcodeSectorsDepartureSearch,
    "RequestTimeFilterPostcodes": RequestTimeFilterPostcodes,
    "RequestTimeFilterPostcodesArrivalSearch": RequestTimeFilterPostcodesArrivalSearch,
    "RequestTimeFilterPostcodesDepartureSearch": RequestTimeFilterPostcodesDepartureSearch,
    "RequestTimeMap": RequestTimeMap,
    "RequestTimeMapArrivalSearch": RequestTimeMapArrivalSearch,
    "RequestTimeMapDepartureSearch": RequestTimeMapDepartureSearch,
    "RequestTransportation": RequestTransportation,
    "RequestTransportationFast": RequestTransportationFast,
    "RequestUnionOnIntersection": RequestUnionOnIntersection,
    "ResponseBoundingBox": ResponseBoundingBox,
    "ResponseBox": ResponseBox,
    "ResponseDistanceBreakdownItem": ResponseDistanceBreakdownItem,
    "ResponseError": ResponseError,
    "ResponseFareTicket": ResponseFareTicket,
    "ResponseFares": ResponseFares,
    "ResponseFaresBreakdownItem": ResponseFaresBreakdownItem,
    "ResponseFaresFast": ResponseFaresFast,
    "ResponseGeocoding": ResponseGeocoding,
    "ResponseGeocodingGeoJsonFeature": ResponseGeocodingGeoJsonFeature,
    "ResponseGeocodingGeometry": ResponseGeocodingGeometry,
    "ResponseGeocodingProperties": ResponseGeocodingProperties,
    "ResponseMapInfo": ResponseMapInfo,
    "ResponseMapInfoFeatures": ResponseMapInfoFeatures,
    "ResponseMapInfoFeaturesPublicTransport": ResponseMapInfoFeaturesPublicTransport,
    "ResponseMapInfoMap": ResponseMapInfoMap,
    "ResponseRoute": ResponseRoute,
    "ResponseRoutePart": ResponseRoutePart,
    "ResponseRoutes": ResponseRoutes,
    "ResponseRoutesLocation": ResponseRoutesLocation,
    "ResponseRoutesProperties": ResponseRoutesProperties,
    "ResponseRoutesResult": ResponseRoutesResult,
    "ResponseShape": ResponseShape,
    "ResponseSupportedLocation": ResponseSupportedLocation,
    "ResponseSupportedLocations": ResponseSupportedLocations,
    "ResponseTimeFilter": ResponseTimeFilter,
    "ResponseTimeFilterFast": ResponseTimeFilterFast,
    "ResponseTimeFilterFastLocation": ResponseTimeFilterFastLocation,
    "ResponseTimeFilterFastProperties": ResponseTimeFilterFastProperties,
    "ResponseTimeFilterFastResult": ResponseTimeFilterFastResult,
    "ResponseTimeFilterLocation": ResponseTimeFilterLocation,
    "ResponseTimeFilterPostcode": ResponseTimeFilterPostcode,
    "ResponseTimeFilterPostcodeDistrict": ResponseTimeFilterPostcodeDistrict,
    "ResponseTimeFilterPostcodeDistrictProperties": ResponseTimeFilterPostcodeDistrictProperties,
    "ResponseTimeFilterPostcodeDistricts": ResponseTimeFilterPostcodeDistricts,
    "ResponseTimeFilterPostcodeDistrictsResult": ResponseTimeFilterPostcodeDistrictsResult,
    "ResponseTimeFilterPostcodeSector": ResponseTimeFilterPostcodeSector,
    "ResponseTimeFilterPostcodeSectorProperties": ResponseTimeFilterPostcodeSectorProperties,
    "ResponseTimeFilterPostcodeSectors": ResponseTimeFilterPostcodeSectors,
    "ResponseTimeFilterPostcodeSectorsResult": ResponseTimeFilterPostcodeSectorsResult,
    "ResponseTimeFilterPostcodes": ResponseTimeFilterPostcodes,
    "ResponseTimeFilterPostcodesProperties": ResponseTimeFilterPostcodesProperties,
    "ResponseTimeFilterPostcodesResult": ResponseTimeFilterPostcodesResult,
    "ResponseTimeFilterProperties": ResponseTimeFilterProperties,
    "ResponseTimeFilterResult": ResponseTimeFilterResult,
    "ResponseTimeMap": ResponseTimeMap,
    "ResponseTimeMapBoundingBoxes": ResponseTimeMapBoundingBoxes,
    "ResponseTimeMapBoundingBoxesResult": ResponseTimeMapBoundingBoxesResult,
    "ResponseTimeMapProperties": ResponseTimeMapProperties,
    "ResponseTimeMapResult": ResponseTimeMapResult,
    "ResponseTimeMapWkt": ResponseTimeMapWkt,
    "ResponseTimeMapWktResult": ResponseTimeMapWktResult,
    "ResponseTravelTimeStatistics": ResponseTravelTimeStatistics,
}

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string) {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
