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
import ResponseTimeFilterPostcode from './ResponseTimeFilterPostcode';

/**
 * The ResponseTimeFilterPostcodesResult model module.
 * @module model/ResponseTimeFilterPostcodesResult
 * @version 1.2.2
 */
class ResponseTimeFilterPostcodesResult {
    /**
     * @member {String} search_id
     * @type {String}
     */
    search_id;
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcode', baseName='postcodes', complexType='ResponseTimeFilterPostcode', getter='getPostcodes', setter='setPostcodes', description='null', dataType='ResponseTimeFilterPostcode', datatypeWithEnum='ResponseTimeFilterPostcode', dataFormat='null', name='postcodes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcode.constructFromObject(data['postcodes']);', baseType='ResponseTimeFilterPostcode', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcode"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Postcodes', nameInSnakeCase='POSTCODES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} postcodes
     * @type {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcode', baseName='postcodes', complexType='ResponseTimeFilterPostcode', getter='getPostcodes', setter='setPostcodes', description='null', dataType='ResponseTimeFilterPostcode', datatypeWithEnum='ResponseTimeFilterPostcode', dataFormat='null', name='postcodes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcode.constructFromObject(data['postcodes']);', baseType='ResponseTimeFilterPostcode', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcode"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Postcodes', nameInSnakeCase='POSTCODES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    postcodes;

    

    /**
     * Constructs a new <code>ResponseTimeFilterPostcodesResult</code>.
     * @alias module:model/ResponseTimeFilterPostcodesResult
     * @param searchId {String} 
     * @param postcodes {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcode', baseName='postcodes', complexType='ResponseTimeFilterPostcode', getter='getPostcodes', setter='setPostcodes', description='null', dataType='ResponseTimeFilterPostcode', datatypeWithEnum='ResponseTimeFilterPostcode', dataFormat='null', name='postcodes', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcode.constructFromObject(data['postcodes']);', baseType='ResponseTimeFilterPostcode', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcode"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Postcodes', nameInSnakeCase='POSTCODES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(searchId, postcodes) { 
        
        ResponseTimeFilterPostcodesResult.initialize(this, searchId, postcodes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, searchId, postcodes) { 
        obj['search_id'] = searchId;
        obj['postcodes'] = postcodes;
    }

    /**
     * Constructs a <code>ResponseTimeFilterPostcodesResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodesResult} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodesResult} The populated <code>ResponseTimeFilterPostcodesResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodesResult();

            if (data.hasOwnProperty('search_id')) {
                obj['search_id'] = ApiClient.convertToType(data['search_id'], 'String');
            }
            if (data.hasOwnProperty('postcodes')) {
                obj['postcodes'] = ApiClient.convertToType(data['postcodes'], [ResponseTimeFilterPostcode]);
            }
        }
        return obj;
    }
}



export default ResponseTimeFilterPostcodesResult;

