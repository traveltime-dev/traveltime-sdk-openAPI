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
 *
 */

import ApiClient from '../ApiClient';
import RequestRangeFull from './RequestRangeFull';
import RequestTimeFilterPostcodeSectorsProperty from './RequestTimeFilterPostcodeSectorsProperty';
import RequestTransportation from './RequestTransportation';

/**
 * The RequestTimeFilterPostcodeSectorsArrivalSearch model module.
 * @module model/RequestTimeFilterPostcodeSectorsArrivalSearch
 * @version 1.2.3
 */
class RequestTimeFilterPostcodeSectorsArrivalSearch {
    /**
     * @member {String} id
     * @type {String}
     */
    id;
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
     * @member {Number} reachable_postcodes_threshold
     * @type {Number}
     */
    reachable_postcodes_threshold;
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeSectorsProperty', baseName='properties', complexType='RequestTimeFilterPostcodeSectorsProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterPostcodeSectorsProperty', datatypeWithEnum='RequestTimeFilterPostcodeSectorsProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeSectorsProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterPostcodeSectorsProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeSectorsProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time_reachable, travel_time_all, coverage], enumVars=[{name=travel_time_reachable, isString=true, value="travel_time_reachable"}, {name=travel_time_all, isString=true, value="travel_time_all"}, {name=coverage, isString=true, value="coverage"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} properties
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeSectorsProperty', baseName='properties', complexType='RequestTimeFilterPostcodeSectorsProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterPostcodeSectorsProperty', datatypeWithEnum='RequestTimeFilterPostcodeSectorsProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeSectorsProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterPostcodeSectorsProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeSectorsProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time_reachable, travel_time_all, coverage], enumVars=[{name=travel_time_reachable, isString=true, value="travel_time_reachable"}, {name=travel_time_all, isString=true, value="travel_time_all"}, {name=coverage, isString=true, value="coverage"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    properties;
    /**
     * @member {RequestRangeFull} range
     * @type {RequestRangeFull}
     */
    range;

    

    /**
     * Constructs a new <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code>.
     * @alias module:model/RequestTimeFilterPostcodeSectorsArrivalSearch
     * @param id {String} 
     * @param transportation {RequestTransportation} 
     * @param travelTime {Number} 
     * @param arrivalTime {Date} 
     * @param reachablePostcodesThreshold {Number} 
     * @param properties {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeSectorsProperty', baseName='properties', complexType='RequestTimeFilterPostcodeSectorsProperty', getter='getProperties', setter='setProperties', description='null', dataType='RequestTimeFilterPostcodeSectorsProperty', datatypeWithEnum='RequestTimeFilterPostcodeSectorsProperty', dataFormat='null', name='properties', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeSectorsProperty.constructFromObject(data['properties']);', baseType='RequestTimeFilterPostcodeSectorsProperty', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeSectorsProperty"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=false, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues={values=[travel_time_reachable, travel_time_all, coverage], enumVars=[{name=travel_time_reachable, isString=true, value="travel_time_reachable"}, {name=travel_time_all, isString=true, value="travel_time_all"}, {name=coverage, isString=true, value="coverage"}]}, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Properties', nameInSnakeCase='PROPERTIES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties) { 
        
        RequestTimeFilterPostcodeSectorsArrivalSearch.initialize(this, id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties) { 
        obj['id'] = id;
        obj['transportation'] = transportation;
        obj['travel_time'] = travelTime;
        obj['arrival_time'] = arrivalTime;
        obj['reachable_postcodes_threshold'] = reachablePostcodesThreshold;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterPostcodeSectorsArrivalSearch} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterPostcodeSectorsArrivalSearch} The populated <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterPostcodeSectorsArrivalSearch();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
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
            if (data.hasOwnProperty('reachable_postcodes_threshold')) {
                obj['reachable_postcodes_threshold'] = ApiClient.convertToType(data['reachable_postcodes_threshold'], 'Number');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [RequestTimeFilterPostcodeSectorsProperty]);
            }
            if (data.hasOwnProperty('range')) {
                obj['range'] = RequestRangeFull.constructFromObject(data['range']);
            }
        }
        return obj;
    }
}



export default RequestTimeFilterPostcodeSectorsArrivalSearch;

