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
import ResponseFareTicket from './ResponseFareTicket';

/**
 * The ResponseFaresFast model module.
 * @module model/ResponseFaresFast
 * @version 1.2.3
 */
class ResponseFaresFast {
    /**
     * @member {Array.<CodegenProperty{openApiType='ResponseFareTicket', baseName='ticketsTotal', complexType='ResponseFareTicket', getter='getTicketsTotal', setter='setTicketsTotal', description='null', dataType='ResponseFareTicket', datatypeWithEnum='ResponseFareTicket', dataFormat='null', name='ticketsTotal', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseFareTicket.constructFromObject(data['ticketsTotal']);', baseType='ResponseFareTicket', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseFareTicket"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='TicketsTotal', nameInSnakeCase='TICKETS_TOTAL', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} tickets_total
     * @type {Array.<CodegenProperty{openApiType='ResponseFareTicket', baseName='ticketsTotal', complexType='ResponseFareTicket', getter='getTicketsTotal', setter='setTicketsTotal', description='null', dataType='ResponseFareTicket', datatypeWithEnum='ResponseFareTicket', dataFormat='null', name='ticketsTotal', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseFareTicket.constructFromObject(data['ticketsTotal']);', baseType='ResponseFareTicket', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseFareTicket"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='TicketsTotal', nameInSnakeCase='TICKETS_TOTAL', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    tickets_total;

    

    /**
     * Constructs a new <code>ResponseFaresFast</code>.
     * @alias module:model/ResponseFaresFast
     * @param ticketsTotal {Array.<CodegenProperty{openApiType='ResponseFareTicket', baseName='ticketsTotal', complexType='ResponseFareTicket', getter='getTicketsTotal', setter='setTicketsTotal', description='null', dataType='ResponseFareTicket', datatypeWithEnum='ResponseFareTicket', dataFormat='null', name='ticketsTotal', min='null', max='null', defaultValue='null', defaultValueWithParam=' = ResponseFareTicket.constructFromObject(data['ticketsTotal']);', baseType='ResponseFareTicket', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/ResponseFareTicket"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='TicketsTotal', nameInSnakeCase='TICKETS_TOTAL', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} 
     */
    constructor(ticketsTotal) { 
        
        ResponseFaresFast.initialize(this, ticketsTotal);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, ticketsTotal) { 
        obj['tickets_total'] = ticketsTotal;
    }

    /**
     * Constructs a <code>ResponseFaresFast</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseFaresFast} obj Optional instance to populate.
     * @return {module:model/ResponseFaresFast} The populated <code>ResponseFaresFast</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseFaresFast();

            if (data.hasOwnProperty('tickets_total')) {
                obj['tickets_total'] = ApiClient.convertToType(data['tickets_total'], [ResponseFareTicket]);
            }
        }
        return obj;
    }
}



export default ResponseFaresFast;

