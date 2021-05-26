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
import ResponseBox from './ResponseBox';

/**
 * The ResponseBoundingBox model module.
 * @module model/ResponseBoundingBox
 * @version 1.2.3
 */
class ResponseBoundingBox {
    /**
     * @member {ResponseBox} envelope
     * @type {ResponseBox}
     */
    envelope;
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseBox', baseName='boxes', complexType='ResponseBox', getter='getBoxes', setter='setBoxes', description='null', dataType='ResponseBox', datatypeWithEnum='ResponseBox', dataFormat='null', name='boxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBox.constructFromObject(data['boxes']);', baseType='ResponseBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Boxes', nameInSnakeCase='BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} boxes
     * @type {Array.<CodegenProperty{openApiType='ResponseBox', baseName='boxes', complexType='ResponseBox', getter='getBoxes', setter='setBoxes', description='null', dataType='ResponseBox', datatypeWithEnum='ResponseBox', dataFormat='null', name='boxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBox.constructFromObject(data['boxes']);', baseType='ResponseBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Boxes', nameInSnakeCase='BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    boxes;

    

    /**
     * Constructs a new <code>ResponseBoundingBox</code>.
     * @alias module:model/ResponseBoundingBox
     * @param envelope {ResponseBox} 
     * @param boxes {Array.<CodegenProperty{openApiType='ResponseBox', baseName='boxes', complexType='ResponseBox', getter='getBoxes', setter='setBoxes', description='null', dataType='ResponseBox', datatypeWithEnum='ResponseBox', dataFormat='null', name='boxes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseBox.constructFromObject(data['boxes']);', baseType='ResponseBox', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseBox"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Boxes', nameInSnakeCase='BOXES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(envelope, boxes) { 
        
        ResponseBoundingBox.initialize(this, envelope, boxes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, envelope, boxes) { 
        obj['envelope'] = envelope;
        obj['boxes'] = boxes;
    }

    /**
     * Constructs a <code>ResponseBoundingBox</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseBoundingBox} obj Optional instance to populate.
     * @return {module:model/ResponseBoundingBox} The populated <code>ResponseBoundingBox</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseBoundingBox();

            if (data.hasOwnProperty('envelope')) {
                obj['envelope'] = ResponseBox.constructFromObject(data['envelope']);
            }
            if (data.hasOwnProperty('boxes')) {
                obj['boxes'] = ApiClient.convertToType(data['boxes'], [ResponseBox]);
            }
        }
        return obj;
    }
}



export default ResponseBoundingBox;

