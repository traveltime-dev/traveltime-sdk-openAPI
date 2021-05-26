export * from './Coords';
export * from './RequestArrivalTimePeriod';
export * from './RequestLevelOfDetail';
export * from './RequestLocation';
export * from './RequestRangeFull';
export * from './RequestRangeNoMaxResults';
export * from './RequestRoutes';
export * from './RequestRoutesArrivalSearch';
export * from './RequestRoutesDepartureSearch';
export * from './RequestRoutesProperty';
export * from './RequestSupportedLocations';
export * from './RequestTimeFilter';
export * from './RequestTimeFilterArrivalSearch';
export * from './RequestTimeFilterDepartureSearch';
export * from './RequestTimeFilterFast';
export * from './RequestTimeFilterFastArrivalManyToOneSearch';
export * from './RequestTimeFilterFastArrivalOneToManySearch';
export * from './RequestTimeFilterFastArrivalSearches';
export * from './RequestTimeFilterFastProperty';
export * from './RequestTimeFilterPostcodeDistricts';
export * from './RequestTimeFilterPostcodeDistrictsArrivalSearch';
export * from './RequestTimeFilterPostcodeDistrictsDepartureSearch';
export * from './RequestTimeFilterPostcodeDistrictsProperty';
export * from './RequestTimeFilterPostcodeSectors';
export * from './RequestTimeFilterPostcodeSectorsArrivalSearch';
export * from './RequestTimeFilterPostcodeSectorsDepartureSearch';
export * from './RequestTimeFilterPostcodeSectorsProperty';
export * from './RequestTimeFilterPostcodes';
export * from './RequestTimeFilterPostcodesArrivalSearch';
export * from './RequestTimeFilterPostcodesDepartureSearch';
export * from './RequestTimeFilterPostcodesProperty';
export * from './RequestTimeFilterProperty';
export * from './RequestTimeMap';
export * from './RequestTimeMapArrivalSearch';
export * from './RequestTimeMapDepartureSearch';
export * from './RequestTimeMapProperty';
export * from './RequestTransportation';
export * from './RequestTransportationFast';
export * from './RequestUnionOnIntersection';
export * from './ResponseBoundingBox';
export * from './ResponseBox';
export * from './ResponseDistanceBreakdownItem';
export * from './ResponseError';
export * from './ResponseFareTicket';
export * from './ResponseFares';
export * from './ResponseFaresBreakdownItem';
export * from './ResponseFaresFast';
export * from './ResponseGeocoding';
export * from './ResponseGeocodingGeoJsonFeature';
export * from './ResponseGeocodingGeometry';
export * from './ResponseGeocodingProperties';
export * from './ResponseMapInfo';
export * from './ResponseMapInfoFeatures';
export * from './ResponseMapInfoFeaturesPublicTransport';
export * from './ResponseMapInfoMap';
export * from './ResponseRoute';
export * from './ResponseRoutePart';
export * from './ResponseRoutes';
export * from './ResponseRoutesLocation';
export * from './ResponseRoutesProperties';
export * from './ResponseRoutesResult';
export * from './ResponseShape';
export * from './ResponseSupportedLocation';
export * from './ResponseSupportedLocations';
export * from './ResponseTimeFilter';
export * from './ResponseTimeFilterFast';
export * from './ResponseTimeFilterFastLocation';
export * from './ResponseTimeFilterFastProperties';
export * from './ResponseTimeFilterFastResult';
export * from './ResponseTimeFilterLocation';
export * from './ResponseTimeFilterPostcode';
export * from './ResponseTimeFilterPostcodeDistrict';
export * from './ResponseTimeFilterPostcodeDistrictProperties';
export * from './ResponseTimeFilterPostcodeDistricts';
export * from './ResponseTimeFilterPostcodeDistrictsResult';
export * from './ResponseTimeFilterPostcodeSector';
export * from './ResponseTimeFilterPostcodeSectorProperties';
export * from './ResponseTimeFilterPostcodeSectors';
export * from './ResponseTimeFilterPostcodeSectorsResult';
export * from './ResponseTimeFilterPostcodes';
export * from './ResponseTimeFilterPostcodesProperties';
export * from './ResponseTimeFilterPostcodesResult';
export * from './ResponseTimeFilterProperties';
export * from './ResponseTimeFilterResult';
export * from './ResponseTimeMap';
export * from './ResponseTimeMapBoundingBoxes';
export * from './ResponseTimeMapBoundingBoxesResult';
export * from './ResponseTimeMapProperties';
export * from './ResponseTimeMapResult';
export * from './ResponseTimeMapWkt';
export * from './ResponseTimeMapWktResult';
export * from './ResponseTransportationMode';
export * from './ResponseTravelTimeStatistics';

import { Coords } from './Coords';
import { RequestArrivalTimePeriod } from './RequestArrivalTimePeriod';
import { RequestLevelOfDetail, RequestLevelOfDetailScaleTypeEnum  , RequestLevelOfDetailLevelEnum   } from './RequestLevelOfDetail';
import { RequestLocation } from './RequestLocation';
import { RequestRangeFull } from './RequestRangeFull';
import { RequestRangeNoMaxResults } from './RequestRangeNoMaxResults';
import { RequestRoutes } from './RequestRoutes';
import { RequestRoutesArrivalSearch } from './RequestRoutesArrivalSearch';
import { RequestRoutesDepartureSearch } from './RequestRoutesDepartureSearch';
import { RequestRoutesProperty } from './RequestRoutesProperty';
import { RequestSupportedLocations } from './RequestSupportedLocations';
import { RequestTimeFilter } from './RequestTimeFilter';
import { RequestTimeFilterArrivalSearch } from './RequestTimeFilterArrivalSearch';
import { RequestTimeFilterDepartureSearch } from './RequestTimeFilterDepartureSearch';
import { RequestTimeFilterFast } from './RequestTimeFilterFast';
import { RequestTimeFilterFastArrivalManyToOneSearch } from './RequestTimeFilterFastArrivalManyToOneSearch';
import { RequestTimeFilterFastArrivalOneToManySearch } from './RequestTimeFilterFastArrivalOneToManySearch';
import { RequestTimeFilterFastArrivalSearches } from './RequestTimeFilterFastArrivalSearches';
import { RequestTimeFilterFastProperty } from './RequestTimeFilterFastProperty';
import { RequestTimeFilterPostcodeDistricts } from './RequestTimeFilterPostcodeDistricts';
import { RequestTimeFilterPostcodeDistrictsArrivalSearch } from './RequestTimeFilterPostcodeDistrictsArrivalSearch';
import { RequestTimeFilterPostcodeDistrictsDepartureSearch } from './RequestTimeFilterPostcodeDistrictsDepartureSearch';
import { RequestTimeFilterPostcodeDistrictsProperty } from './RequestTimeFilterPostcodeDistrictsProperty';
import { RequestTimeFilterPostcodeSectors } from './RequestTimeFilterPostcodeSectors';
import { RequestTimeFilterPostcodeSectorsArrivalSearch } from './RequestTimeFilterPostcodeSectorsArrivalSearch';
import { RequestTimeFilterPostcodeSectorsDepartureSearch } from './RequestTimeFilterPostcodeSectorsDepartureSearch';
import { RequestTimeFilterPostcodeSectorsProperty } from './RequestTimeFilterPostcodeSectorsProperty';
import { RequestTimeFilterPostcodes } from './RequestTimeFilterPostcodes';
import { RequestTimeFilterPostcodesArrivalSearch } from './RequestTimeFilterPostcodesArrivalSearch';
import { RequestTimeFilterPostcodesDepartureSearch } from './RequestTimeFilterPostcodesDepartureSearch';
import { RequestTimeFilterPostcodesProperty } from './RequestTimeFilterPostcodesProperty';
import { RequestTimeFilterProperty } from './RequestTimeFilterProperty';
import { RequestTimeMap } from './RequestTimeMap';
import { RequestTimeMapArrivalSearch } from './RequestTimeMapArrivalSearch';
import { RequestTimeMapDepartureSearch } from './RequestTimeMapDepartureSearch';
import { RequestTimeMapProperty } from './RequestTimeMapProperty';
import { RequestTransportation, RequestTransportationTypeEnum          } from './RequestTransportation';
import { RequestTransportationFast, RequestTransportationFastTypeEnum   } from './RequestTransportationFast';
import { RequestUnionOnIntersection } from './RequestUnionOnIntersection';
import { ResponseBoundingBox } from './ResponseBoundingBox';
import { ResponseBox } from './ResponseBox';
import { ResponseDistanceBreakdownItem } from './ResponseDistanceBreakdownItem';
import { ResponseError } from './ResponseError';
import { ResponseFareTicket, ResponseFareTicketTypeEnum     } from './ResponseFareTicket';
import { ResponseFares } from './ResponseFares';
import { ResponseFaresBreakdownItem } from './ResponseFaresBreakdownItem';
import { ResponseFaresFast } from './ResponseFaresFast';
import { ResponseGeocoding } from './ResponseGeocoding';
import { ResponseGeocodingGeoJsonFeature } from './ResponseGeocodingGeoJsonFeature';
import { ResponseGeocodingGeometry } from './ResponseGeocodingGeometry';
import { ResponseGeocodingProperties } from './ResponseGeocodingProperties';
import { ResponseMapInfo } from './ResponseMapInfo';
import { ResponseMapInfoFeatures } from './ResponseMapInfoFeatures';
import { ResponseMapInfoFeaturesPublicTransport } from './ResponseMapInfoFeaturesPublicTransport';
import { ResponseMapInfoMap } from './ResponseMapInfoMap';
import { ResponseRoute } from './ResponseRoute';
import { ResponseRoutePart , ResponseRoutePartTypeEnum                 } from './ResponseRoutePart';
import { ResponseRoutes } from './ResponseRoutes';
import { ResponseRoutesLocation } from './ResponseRoutesLocation';
import { ResponseRoutesProperties } from './ResponseRoutesProperties';
import { ResponseRoutesResult } from './ResponseRoutesResult';
import { ResponseShape } from './ResponseShape';
import { ResponseSupportedLocation } from './ResponseSupportedLocation';
import { ResponseSupportedLocations } from './ResponseSupportedLocations';
import { ResponseTimeFilter } from './ResponseTimeFilter';
import { ResponseTimeFilterFast } from './ResponseTimeFilterFast';
import { ResponseTimeFilterFastLocation } from './ResponseTimeFilterFastLocation';
import { ResponseTimeFilterFastProperties } from './ResponseTimeFilterFastProperties';
import { ResponseTimeFilterFastResult } from './ResponseTimeFilterFastResult';
import { ResponseTimeFilterLocation } from './ResponseTimeFilterLocation';
import { ResponseTimeFilterPostcode } from './ResponseTimeFilterPostcode';
import { ResponseTimeFilterPostcodeDistrict } from './ResponseTimeFilterPostcodeDistrict';
import { ResponseTimeFilterPostcodeDistrictProperties } from './ResponseTimeFilterPostcodeDistrictProperties';
import { ResponseTimeFilterPostcodeDistricts } from './ResponseTimeFilterPostcodeDistricts';
import { ResponseTimeFilterPostcodeDistrictsResult } from './ResponseTimeFilterPostcodeDistrictsResult';
import { ResponseTimeFilterPostcodeSector } from './ResponseTimeFilterPostcodeSector';
import { ResponseTimeFilterPostcodeSectorProperties } from './ResponseTimeFilterPostcodeSectorProperties';
import { ResponseTimeFilterPostcodeSectors } from './ResponseTimeFilterPostcodeSectors';
import { ResponseTimeFilterPostcodeSectorsResult } from './ResponseTimeFilterPostcodeSectorsResult';
import { ResponseTimeFilterPostcodes } from './ResponseTimeFilterPostcodes';
import { ResponseTimeFilterPostcodesProperties } from './ResponseTimeFilterPostcodesProperties';
import { ResponseTimeFilterPostcodesResult } from './ResponseTimeFilterPostcodesResult';
import { ResponseTimeFilterProperties } from './ResponseTimeFilterProperties';
import { ResponseTimeFilterResult } from './ResponseTimeFilterResult';
import { ResponseTimeMap } from './ResponseTimeMap';
import { ResponseTimeMapBoundingBoxes } from './ResponseTimeMapBoundingBoxes';
import { ResponseTimeMapBoundingBoxesResult } from './ResponseTimeMapBoundingBoxesResult';
import { ResponseTimeMapProperties } from './ResponseTimeMapProperties';
import { ResponseTimeMapResult } from './ResponseTimeMapResult';
import { ResponseTimeMapWkt } from './ResponseTimeMapWkt';
import { ResponseTimeMapWktResult } from './ResponseTimeMapWktResult';
import { ResponseTransportationMode } from './ResponseTransportationMode';
import { ResponseTravelTimeStatistics } from './ResponseTravelTimeStatistics';

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

const supportedMediaTypes: { [mediaType: string]: number } = {
  "application/json": Infinity,
  "application/octet-stream": 0
}

                 
let enumsMap: Set<string> = new Set<string>([
    "RequestArrivalTimePeriod",
    "RequestLevelOfDetailScaleTypeEnum",
    "RequestLevelOfDetailLevelEnum",
    "RequestRoutesProperty",
    "RequestTimeFilterFastProperty",
    "RequestTimeFilterPostcodeDistrictsProperty",
    "RequestTimeFilterPostcodeSectorsProperty",
    "RequestTimeFilterPostcodesProperty",
    "RequestTimeFilterProperty",
    "RequestTimeMapProperty",
    "RequestTransportationTypeEnum",
    "RequestTransportationFastTypeEnum",
    "ResponseFareTicketTypeEnum",
    "ResponseRoutePartTypeEnum",
    "ResponseTransportationMode",
]);

let typeMap: {[index: string]: any} = {
    "Coords": Coords,
    "RequestLevelOfDetail": RequestLevelOfDetail,
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
            if (enumsMap.has(expectedType)) {
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

    public static serialize(data: any, type: string, format: string) {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (type.lastIndexOf("Array<", 0) === 0) { // string.startsWith pre es6
            let subType: string = type.replace("Array<", ""); // Array<Type> => Type>
            subType = subType.substring(0, subType.length - 1); // Type> => Type
            let transformedData: any[] = [];
            for (let index in data) {
                let date = data[index];
                transformedData.push(ObjectSerializer.serialize(date, subType, format));
            }
            return transformedData;
        } else if (type === "Date") {
            if (format == "date") {
                let month = data.getMonth()+1
                month = month < 10 ? "0" + month.toString() : month.toString()
                let day = data.getDate();
                day = day < 10 ? "0" + day.toString() : day.toString();

                return data.getFullYear() + "-" + month + "-" + day;
            } else {
                return data.toISOString();
            }
        } else {
            if (enumsMap.has(type)) {
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
            for (let index in attributeTypes) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type, attributeType.format);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string, format: string) {
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
            for (let index in data) {
                let date = data[index];
                transformedData.push(ObjectSerializer.deserialize(date, subType, format));
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap.has(type)) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index in attributeTypes) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type, attributeType.format);
            }
            return instance;
        }
    }


    /**
     * Normalize media type
     *
     * We currently do not handle any media types attributes, i.e. anything
     * after a semicolon. All content is assumed to be UTF-8 compatible.
     */
    public static normalizeMediaType(mediaType: string | undefined): string | undefined {
        if (mediaType === undefined) {
            return undefined;
        }
        return mediaType.split(";")[0].trim().toLowerCase();
    }

    /**
     * From a list of possible media types, choose the one we can handle best.
     *
     * The order of the given media types does not have any impact on the choice
     * made.
     */
    public static getPreferredMediaType(mediaTypes: Array<string>): string {
        /** According to OAS 3 we should default to json */
        if (!mediaTypes) {
            return "application/json";
        }

        const normalMediaTypes = mediaTypes.map(this.normalizeMediaType);
        let selectedMediaType: string | undefined = undefined;
        let selectedRank: number = -Infinity;
        for (const mediaType of normalMediaTypes) {
            if (supportedMediaTypes[mediaType!] > selectedRank) {
                selectedMediaType = mediaType;
                selectedRank = supportedMediaTypes[mediaType!];
            }
        }

        if (selectedMediaType === undefined) {
            throw new Error("None of the given media types are supported: " + mediaTypes.join(", "));
        }

        return selectedMediaType!;
    }

    /**
     * Convert data to a string according the given media type
     */
    public static stringify(data: any, mediaType: string): string {
        if (mediaType === "application/json") {
            return JSON.stringify(data);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.stringify.");
    }

    /**
     * Parse data from a string according to the given media type
     */
    public static parse(rawData: string, mediaType: string | undefined) {
        if (mediaType === undefined) {
            throw new Error("Cannot parse content. No Content-Type defined.");
        }

        if (mediaType === "application/json") {
            return JSON.parse(rawData);
        }

        throw new Error("The mediaType " + mediaType + " is not supported by ObjectSerializer.parse.");
    }
}
