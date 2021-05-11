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
 *
 */

import ApiClient from '../ApiClient';
import RequestRangeFull from './RequestRangeFull';
import RequestTimeFilterProperty from './RequestTimeFilterProperty';
import RequestTransportation from './RequestTransportation';

/**
 * The RequestTimeFilterArrivalSearch model module.
 * @module model/RequestTimeFilterArrivalSearch
 * @version 1.2.2
 */
class RequestTimeFilterArrivalSearch {
    /**
     * @member {String} id
     * @type {String}
     */
    id;
    /**
     * @member {Array.<CodegenProperty{openApiType='string', baseName='departureLocationIds', complexType='null', getter='getDepartureLocationIds', setter='setDepartureLocationIds', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='departureLocationIds', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ApiClient.convertToType(data['departureLocationIds'], 'String');', baseType='String', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=true, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='DepartureLocationIds', nameInSnakeCase='DEPARTURE_LOCATION_IDS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} departure_location_ids
     * @type {Array.<CodegenProperty{openApiType='string', baseName='departureLocationIds', complexType='null', getter='getDepartureLocationIds', setter='setDepartureLocationIds', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='departureLocationIds', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ApiClient.convertToType(data['departureLocationIds'], 'String');', baseType='String', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=true, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='DepartureLocationIds', nameInSnakeCase='DEPARTURE_LOCATION_IDS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    departure_location_ids;
    /**
     * @member {String} arrival_location_id
     * @type {String}
     */
    arrival_location_id;
    /**
     * @member {RequestTransportation} transportation
     * @type {RequestTransportation}
     */
    transportation;
    /**
     * @member {Number} travel_time
     * @type {Number}
     */
    travel_time;
    /**
     * @member {Date} arrival_time
     * @type {Date}
     */
    arrival_time;
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterProperty', baseName='properties', complexType='RequestTimeFilterProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterProperty', datatypeWithEnum='RequestTimeFilterProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time, distance, distance_breakdown, fares, route], enumVars=[{name=travel_time, isString=true, value="travel_time"}, {name=distance, isString=true, value="distance"}, {name=distance_breakdown, isString=true, value="distance_breakdown"}, {name=fares, isString=true, value="fares"}, {name=route, isString=true, value="route"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} properties
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterProperty', baseName='properties', complexType='RequestTimeFilterProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterProperty', datatypeWithEnum='RequestTimeFilterProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time, distance, distance_breakdown, fares, route], enumVars=[{name=travel_time, isString=true, value="travel_time"}, {name=distance, isString=true, value="distance"}, {name=distance_breakdown, isString=true, value="distance_breakdown"}, {name=fares, isString=true, value="fares"}, {name=route, isString=true, value="route"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    properties;
    /**
     * @member {RequestRangeFull} range
     * @type {RequestRangeFull}
     */
    range;

    

    /**
     * Constructs a new <code>RequestTimeFilterArrivalSearch</code>.
     * @alias module:model/RequestTimeFilterArrivalSearch
     * @param id {String} 
     * @param departureLocationIds {Array.<CodegenProperty{openApiType='string', baseName='departureLocationIds', complexType='null', getter='getDepartureLocationIds', setter='setDepartureLocationIds', description='null', dataType='String', datatypeWithEnum='String', dataFormat='null', name='departureLocationIds', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ApiClient.convertToType(data['departureLocationIds'], 'String');', baseType='String', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "type" : "string"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=true, isModel=false, isContainer=false, isString=true, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='DepartureLocationIds', nameInSnakeCase='DEPARTURE_LOCATION_IDS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     * @param arrivalLocationId {String} 
     * @param transportation {RequestTransportation} 
     * @param travelTime {Number} 
     * @param arrivalTime {Date} 
     * @param properties {Array.<CodegenProperty{openApiType='RequestTimeFilterProperty', baseName='properties', complexType='RequestTimeFilterProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterProperty', datatypeWithEnum='RequestTimeFilterProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time, distance, distance_breakdown, fares, route], enumVars=[{name=travel_time, isString=true, value="travel_time"}, {name=distance, isString=true, value="distance"}, {name=distance_breakdown, isString=true, value="distance_breakdown"}, {name=fares, isString=true, value="fares"}, {name=route, isString=true, value="route"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties) { 
        
        RequestTimeFilterArrivalSearch.initialize(this, id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties) { 
        obj['id'] = id;
        obj['departure_location_ids'] = departureLocationIds;
        obj['arrival_location_id'] = arrivalLocationId;
        obj['transportation'] = transportation;
        obj['travel_time'] = travelTime;
        obj['arrival_time'] = arrivalTime;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>RequestTimeFilterArrivalSearch</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterArrivalSearch} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterArrivalSearch} The populated <code>RequestTimeFilterArrivalSearch</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterArrivalSearch();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('departure_location_ids')) {
                obj['departure_location_ids'] = ApiClient.convertToType(data['departure_location_ids'], ['String']);
            }
            if (data.hasOwnProperty('arrival_location_id')) {
                obj['arrival_location_id'] = ApiClient.convertToType(data['arrival_location_id'], 'String');
            }
            if (data.hasOwnProperty('transportation')) {
                obj['transportation'] = RequestTransportation.constructFromObject(data['transportation']);
            }
            if (data.hasOwnProperty('travel_time')) {
                obj['travel_time'] = ApiClient.convertToType(data['travel_time'], 'Number');
            }
            if (data.hasOwnProperty('arrival_time')) {
                obj['arrival_time'] = ApiClient.convertToType(data['arrival_time'], 'Date');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [RequestTimeFilterProperty]);
            }
            if (data.hasOwnProperty('range')) {
                obj['range'] = RequestRangeFull.constructFromObject(data['range']);
            }
        }
        return obj;
    }
}



export default RequestTimeFilterArrivalSearch;

