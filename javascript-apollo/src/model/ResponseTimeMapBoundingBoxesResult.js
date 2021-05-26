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
import ResponseBoundingBox from './ResponseBoundingBox';
import ResponseTimeMapProperties from './ResponseTimeMapProperties';

/**
 * The ResponseTimeMapBoundingBoxesResult model module.
 * @module model/ResponseTimeMapBoundingBoxesResult
 * @version 1.2.3
 */
class ResponseTimeMapBoundingBoxesResult {
    /**
     * @member {String} search_id
     * @type {String}
     */
    search_id;
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseBoundingBox', baseName='boundingBoxes', complexType='ResponseBoundingBox', getter='getBoundingBoxes', setter='setBoundingBoxes', description='null', dataType='ResponseBoundingBox', datatypeWithEnum='ResponseBoundingBox', dataFormat='null', name='boundingBoxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBoundingBox.constructFromObject(data['boundingBoxes']);', baseType='ResponseBoundingBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBoundingBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='BoundingBoxes', nameInSnakeCase='BOUNDING_BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} bounding_boxes
     * @type {Array.<CodegenProperty{openApiType='ResponseBoundingBox', baseName='boundingBoxes', complexType='ResponseBoundingBox', getter='getBoundingBoxes', setter='setBoundingBoxes', description='null', dataType='ResponseBoundingBox', datatypeWithEnum='ResponseBoundingBox', dataFormat='null', name='boundingBoxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBoundingBox.constructFromObject(data['boundingBoxes']);', baseType='ResponseBoundingBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBoundingBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='BoundingBoxes', nameInSnakeCase='BOUNDING_BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    bounding_boxes;
    /**
     * @member {ResponseTimeMapProperties} properties
     * @type {ResponseTimeMapProperties}
     */
    properties;

    

    /**
     * Constructs a new <code>ResponseTimeMapBoundingBoxesResult</code>.
     * @alias module:model/ResponseTimeMapBoundingBoxesResult
     * @param searchId {String} 
     * @param boundingBoxes {Array.<CodegenProperty{openApiType='ResponseBoundingBox', baseName='boundingBoxes', complexType='ResponseBoundingBox', getter='getBoundingBoxes', setter='setBoundingBoxes', description='null', dataType='ResponseBoundingBox', datatypeWithEnum='ResponseBoundingBox', dataFormat='null', name='boundingBoxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBoundingBox.constructFromObject(data['boundingBoxes']);', baseType='ResponseBoundingBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBoundingBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='BoundingBoxes', nameInSnakeCase='BOUNDING_BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     * @param properties {ResponseTimeMapProperties} 
     */
    constructor(searchId, boundingBoxes, properties) { 
        
        ResponseTimeMapBoundingBoxesResult.initialize(this, searchId, boundingBoxes, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, searchId, boundingBoxes, properties) { 
        obj['search_id'] = searchId;
        obj['bounding_boxes'] = boundingBoxes;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>ResponseTimeMapBoundingBoxesResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeMapBoundingBoxesResult} obj Optional instance to populate.
     * @return {module:model/ResponseTimeMapBoundingBoxesResult} The populated <code>ResponseTimeMapBoundingBoxesResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeMapBoundingBoxesResult();

            if (data.hasOwnProperty('search_id')) {
                obj['search_id'] = ApiClient.convertToType(data['search_id'], 'String');
            }
            if (data.hasOwnProperty('bounding_boxes')) {
                obj['bounding_boxes'] = ApiClient.convertToType(data['bounding_boxes'], [ResponseBoundingBox]);
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ResponseTimeMapProperties.constructFromObject(data['properties']);
            }
        }
        return obj;
    }
}



export default ResponseTimeMapBoundingBoxesResult;

