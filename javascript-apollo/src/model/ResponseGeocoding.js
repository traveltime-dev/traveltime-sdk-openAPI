/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.1
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ResponseGeocodingGeoJsonFeature from './ResponseGeocodingGeoJsonFeature';

/**
 * The ResponseGeocoding model module.
 * @module model/ResponseGeocoding
 * @version 1.2.1
 */
class ResponseGeocoding {
    /**
     * @member {String} type
     * @type {String}
     */
    type;
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseGeocodingGeoJsonFeature', baseName='features', complexType='ResponseGeocodingGeoJsonFeature', getter='getFeatures', setter='setFeatures', description='null', dataType='ResponseGeocodingGeoJsonFeature', datatypeWithEnum='ResponseGeocodingGeoJsonFeature', dataFormat='null', name='features', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseGeocodingGeoJsonFeature.constructFromObject(data['features']);', baseType='ResponseGeocodingGeoJsonFeature', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseGeocodingGeoJsonFeature"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, hasMore=false, required=false, deprecated=false, secondaryParam=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isListContainer=false, isMapContainer=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Features', nameInSnakeCase='FEATURES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false}>} features
     * @type {Array.<CodegenProperty{openApiType='ResponseGeocodingGeoJsonFeature', baseName='features', complexType='ResponseGeocodingGeoJsonFeature', getter='getFeatures', setter='setFeatures', description='null', dataType='ResponseGeocodingGeoJsonFeature', datatypeWithEnum='ResponseGeocodingGeoJsonFeature', dataFormat='null', name='features', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseGeocodingGeoJsonFeature.constructFromObject(data['features']);', baseType='ResponseGeocodingGeoJsonFeature', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseGeocodingGeoJsonFeature"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, hasMore=false, required=false, deprecated=false, secondaryParam=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isListContainer=false, isMapContainer=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Features', nameInSnakeCase='FEATURES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false}>}
     */
    features;

    

    /**
     * Constructs a new <code>ResponseGeocoding</code>.
     * @alias module:model/ResponseGeocoding
     * @param type {String} 
     * @param features {Array.<CodegenProperty{openApiType='ResponseGeocodingGeoJsonFeature', baseName='features', complexType='ResponseGeocodingGeoJsonFeature', getter='getFeatures', setter='setFeatures', description='null', dataType='ResponseGeocodingGeoJsonFeature', datatypeWithEnum='ResponseGeocodingGeoJsonFeature', dataFormat='null', name='features', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseGeocodingGeoJsonFeature.constructFromObject(data['features']);', baseType='ResponseGeocodingGeoJsonFeature', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseGeocodingGeoJsonFeature"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, hasMore=false, required=false, deprecated=false, secondaryParam=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isListContainer=false, isMapContainer=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Features', nameInSnakeCase='FEATURES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false}>} 
     */
    constructor(type, features) { 
        
        ResponseGeocoding.initialize(this, type, features);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, type, features) { 
        obj['type'] = type;
        obj['features'] = features;
    }

    /**
     * Constructs a <code>ResponseGeocoding</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseGeocoding} obj Optional instance to populate.
     * @return {module:model/ResponseGeocoding} The populated <code>ResponseGeocoding</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseGeocoding();

            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('features')) {
                obj['features'] = ApiClient.convertToType(data['features'], [ResponseGeocodingGeoJsonFeature]);
            }
        }
        return obj;
    }
}



export default ResponseGeocoding;
