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
import ResponseTimeFilterPostcodeDistrictsResult from './ResponseTimeFilterPostcodeDistrictsResult';

/**
 * The ResponseTimeFilterPostcodeDistricts model module.
 * @module model/ResponseTimeFilterPostcodeDistricts
 * @version 1.2.3
 */
class ResponseTimeFilterPostcodeDistricts {
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodeDistrictsResult', baseName='results', complexType='ResponseTimeFilterPostcodeDistrictsResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodeDistrictsResult', datatypeWithEnum='ResponseTimeFilterPostcodeDistrictsResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodeDistrictsResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodeDistrictsResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodeDistrictsResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} results
     * @type {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodeDistrictsResult', baseName='results', complexType='ResponseTimeFilterPostcodeDistrictsResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodeDistrictsResult', datatypeWithEnum='ResponseTimeFilterPostcodeDistrictsResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodeDistrictsResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodeDistrictsResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodeDistrictsResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    results;

    

    /**
     * Constructs a new <code>ResponseTimeFilterPostcodeDistricts</code>.
     * @alias module:model/ResponseTimeFilterPostcodeDistricts
     * @param results {Array.<CodegenProperty{openApiType='ResponseTimeFilterPostcodeDistrictsResult', baseName='results', complexType='ResponseTimeFilterPostcodeDistrictsResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterPostcodeDistrictsResult', datatypeWithEnum='ResponseTimeFilterPostcodeDistrictsResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterPostcodeDistrictsResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterPostcodeDistrictsResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterPostcodeDistrictsResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(results) { 
        
        ResponseTimeFilterPostcodeDistricts.initialize(this, results);
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
     * Constructs a <code>ResponseTimeFilterPostcodeDistricts</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodeDistricts} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodeDistricts} The populated <code>ResponseTimeFilterPostcodeDistricts</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodeDistricts();

            if (data.hasOwnProperty('results')) {
                obj['results'] = ApiClient.convertToType(data['results'], [ResponseTimeFilterPostcodeDistrictsResult]);
            }
        }
        return obj;
    }
}



export default ResponseTimeFilterPostcodeDistricts;

