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
import ResponseTimeFilterResult from './ResponseTimeFilterResult';

/**
 * The ResponseTimeFilter model module.
 * @module model/ResponseTimeFilter
 * @version 1.2.3
 */
class ResponseTimeFilter {
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseTimeFilterResult', baseName='results', complexType='ResponseTimeFilterResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterResult', datatypeWithEnum='ResponseTimeFilterResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} results
     * @type {Array.<CodegenProperty{openApiType='ResponseTimeFilterResult', baseName='results', complexType='ResponseTimeFilterResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterResult', datatypeWithEnum='ResponseTimeFilterResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    results;

    

    /**
     * Constructs a new <code>ResponseTimeFilter</code>.
     * @alias module:model/ResponseTimeFilter
     * @param results {Array.<CodegenProperty{openApiType='ResponseTimeFilterResult', baseName='results', complexType='ResponseTimeFilterResult', getter='getResults', setter='setResults', description='null', dataType='ResponseTimeFilterResult', datatypeWithEnum='ResponseTimeFilterResult', dataFormat='null', name='results', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseTimeFilterResult.constructFromObject(data['results']);', baseType='ResponseTimeFilterResult', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseTimeFilterResult"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='Results', nameInSnakeCase='RESULTS', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(results) { 
        
        ResponseTimeFilter.initialize(this, results);
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
     * Constructs a <code>ResponseTimeFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilter} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilter} The populated <code>ResponseTimeFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilter();

            if (data.hasOwnProperty('results')) {
                obj['results'] = ApiClient.convertToType(data['results'], [ResponseTimeFilterResult]);
            }
        }
        return obj;
    }
}



export default ResponseTimeFilter;

