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
import ResponseTimeFilterPostcodesResult from './ResponseTimeFilterPostcodesResult';

/**
 * The ResponseTimeFilterPostcodes model module.
 * @module model/ResponseTimeFilterPostcodes
 * @version 1.2.3
 */
class ResponseTimeFilterPostcodes {
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodesResult', baseName='results', complexType='ResponseTimeFilterPostcodesResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodesResult', datatypeWithEnum='ResponseTimeFilterPostcodesResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodesResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodesResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodesResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} results
     * @type {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodesResult', baseName='results', complexType='ResponseTimeFilterPostcodesResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodesResult', datatypeWithEnum='ResponseTimeFilterPostcodesResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodesResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodesResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodesResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    results;

    

    /**
     * Constructs a new <code>ResponseTimeFilterPostcodes</code>.
     * @alias module:model/ResponseTimeFilterPostcodes
     * @param results {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodesResult', baseName='results', complexType='ResponseTimeFilterPostcodesResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodesResult', datatypeWithEnum='ResponseTimeFilterPostcodesResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodesResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodesResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodesResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(results) { 
        
        ResponseTimeFilterPostcodes.initialize(this, results);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, results) { 
        obj['results'] = results;
    }

    /**
     * Constructs a <code>ResponseTimeFilterPostcodes</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodes} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodes} The populated <code>ResponseTimeFilterPostcodes</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodes();

            if (data.hasOwnProperty('results')) {
                obj['results'] = ApiClient.convertToType(data['results'], [ResponseTimeFilterPostcodesResult]);
            }
        }
        return obj;
    }
}



export default ResponseTimeFilterPostcodes;

