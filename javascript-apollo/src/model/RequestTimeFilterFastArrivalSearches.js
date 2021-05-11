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
import RequestTimeFilterFastArrivalManyToOneSearch from './RequestTimeFilterFastArrivalManyToOneSearch';
import RequestTimeFilterFastArrivalOneToManySearch from './RequestTimeFilterFastArrivalOneToManySearch';

/**
 * The RequestTimeFilterFastArrivalSearches model module.
 * @module model/RequestTimeFilterFastArrivalSearches
 * @version 1.2.2
 */
class RequestTimeFilterFastArrivalSearches {
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterFastArrivalManyToOneSearch', baseName='manyToOne', complexType='RequestTimeFilterFastArrivalManyToOneSearch', getter='getManyToOne', setter='setManyToOne', description='null', dataType='RequestTimeFilterFastArrivalManyToOneSearch', datatypeWithEnum='RequestTimeFilterFastArrivalManyToOneSearch', dataFormat='null', name='manyToOne', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterFastArrivalManyToOneSearch.constructFromObject(data['manyToOne']);', baseType='RequestTimeFilterFastArrivalManyToOneSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterFastArrivalManyToOneSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='ManyToOne', nameInSnakeCase='MANY_TO_ONE', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} many_to_one
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterFastArrivalManyToOneSearch', baseName='manyToOne', complexType='RequestTimeFilterFastArrivalManyToOneSearch', getter='getManyToOne', setter='setManyToOne', description='null', dataType='RequestTimeFilterFastArrivalManyToOneSearch', datatypeWithEnum='RequestTimeFilterFastArrivalManyToOneSearch', dataFormat='null', name='manyToOne', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterFastArrivalManyToOneSearch.constructFromObject(data['manyToOne']);', baseType='RequestTimeFilterFastArrivalManyToOneSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterFastArrivalManyToOneSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='ManyToOne', nameInSnakeCase='MANY_TO_ONE', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    many_to_one;
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterFastArrivalOneToManySearch', baseName='oneToMany', complexType='RequestTimeFilterFastArrivalOneToManySearch', getter='getOneToMany', setter='setOneToMany', description='null', dataType='RequestTimeFilterFastArrivalOneToManySearch', datatypeWithEnum='RequestTimeFilterFastArrivalOneToManySearch', dataFormat='null', name='oneToMany', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterFastArrivalOneToManySearch.constructFromObject(data['oneToMany']);', baseType='RequestTimeFilterFastArrivalOneToManySearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterFastArrivalOneToManySearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='OneToMany', nameInSnakeCase='ONE_TO_MANY', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} one_to_many
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterFastArrivalOneToManySearch', baseName='oneToMany', complexType='RequestTimeFilterFastArrivalOneToManySearch', getter='getOneToMany', setter='setOneToMany', description='null', dataType='RequestTimeFilterFastArrivalOneToManySearch', datatypeWithEnum='RequestTimeFilterFastArrivalOneToManySearch', dataFormat='null', name='oneToMany', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterFastArrivalOneToManySearch.constructFromObject(data['oneToMany']);', baseType='RequestTimeFilterFastArrivalOneToManySearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterFastArrivalOneToManySearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='OneToMany', nameInSnakeCase='ONE_TO_MANY', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    one_to_many;

    

    /**
     * Constructs a new <code>RequestTimeFilterFastArrivalSearches</code>.
     * @alias module:model/RequestTimeFilterFastArrivalSearches
     */
    constructor() { 
        
        RequestTimeFilterFastArrivalSearches.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RequestTimeFilterFastArrivalSearches</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterFastArrivalSearches} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterFastArrivalSearches} The populated <code>RequestTimeFilterFastArrivalSearches</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterFastArrivalSearches();

            if (data.hasOwnProperty('many_to_one')) {
                obj['many_to_one'] = ApiClient.convertToType(data['many_to_one'], [RequestTimeFilterFastArrivalManyToOneSearch]);
            }
            if (data.hasOwnProperty('one_to_many')) {
                obj['one_to_many'] = ApiClient.convertToType(data['one_to_many'], [RequestTimeFilterFastArrivalOneToManySearch]);
            }
        }
        return obj;
    }
}



export default RequestTimeFilterFastArrivalSearches;

