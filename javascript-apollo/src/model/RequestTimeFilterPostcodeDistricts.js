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
import RequestTimeFilterPostcodeDistrictsArrivalSearch from './RequestTimeFilterPostcodeDistrictsArrivalSearch';
import RequestTimeFilterPostcodeDistrictsDepartureSearch from './RequestTimeFilterPostcodeDistrictsDepartureSearch';

/**
 * The RequestTimeFilterPostcodeDistricts model module.
 * @module model/RequestTimeFilterPostcodeDistricts
 * @version 1.2.3
 */
class RequestTimeFilterPostcodeDistricts {
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeDistrictsDepartureSearch', baseName='departureSearches', complexType='RequestTimeFilterPostcodeDistrictsDepartureSearch', getter='getDepartureSearches', setter='setDepartureSearches', description='null', dataType='RequestTimeFilterPostcodeDistrictsDepartureSearch', datatypeWithEnum='RequestTimeFilterPostcodeDistrictsDepartureSearch', dataFormat='null', name='departureSearches', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeDistrictsDepartureSearch.constructFromObject(data['departureSearches']);', baseType='RequestTimeFilterPostcodeDistrictsDepartureSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeDistrictsDepartureSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='DepartureSearches', nameInSnakeCase='DEPARTURE_SEARCHES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} departure_searches
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeDistrictsDepartureSearch', baseName='departureSearches', complexType='RequestTimeFilterPostcodeDistrictsDepartureSearch', getter='getDepartureSearches', setter='setDepartureSearches', description='null', dataType='RequestTimeFilterPostcodeDistrictsDepartureSearch', datatypeWithEnum='RequestTimeFilterPostcodeDistrictsDepartureSearch', dataFormat='null', name='departureSearches', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeDistrictsDepartureSearch.constructFromObject(data['departureSearches']);', baseType='RequestTimeFilterPostcodeDistrictsDepartureSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeDistrictsDepartureSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='DepartureSearches', nameInSnakeCase='DEPARTURE_SEARCHES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    departure_searches;
    /**
     * @member {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeDistrictsArrivalSearch', baseName='arrivalSearches', complexType='RequestTimeFilterPostcodeDistrictsArrivalSearch', getter='getArrivalSearches', setter='setArrivalSearches', description='null', dataType='RequestTimeFilterPostcodeDistrictsArrivalSearch', datatypeWithEnum='RequestTimeFilterPostcodeDistrictsArrivalSearch', dataFormat='null', name='arrivalSearches', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeDistrictsArrivalSearch.constructFromObject(data['arrivalSearches']);', baseType='RequestTimeFilterPostcodeDistrictsArrivalSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeDistrictsArrivalSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='ArrivalSearches', nameInSnakeCase='ARRIVAL_SEARCHES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>} arrival_searches
     * @type {Array.<CodegenProperty{openApiType='RequestTimeFilterPostcodeDistrictsArrivalSearch', baseName='arrivalSearches', complexType='RequestTimeFilterPostcodeDistrictsArrivalSearch', getter='getArrivalSearches', setter='setArrivalSearches', description='null', dataType='RequestTimeFilterPostcodeDistrictsArrivalSearch', datatypeWithEnum='RequestTimeFilterPostcodeDistrictsArrivalSearch', dataFormat='null', name='arrivalSearches', min='null', max='null', defaultValue='null', defaultValueWithParam=' = RequestTimeFilterPostcodeDistrictsArrivalSearch.constructFromObject(data['arrivalSearches']);', baseType='RequestTimeFilterPostcodeDistrictsArrivalSearch', containerType='null', title='null', unescapedDescription='null', maxLength=null, minLength=null, pattern='null', example='null', jsonSchema='{
  "$ref" : "#/components/schemas/RequestTimeFilterPostcodeDistrictsArrivalSearch"
}', minimum='null', maximum='null', exclusiveMinimum=false, exclusiveMaximum=false, required=false, deprecated=false, hasMoreNonReadOnly=false, isPrimitiveType=false, isModel=true, isContainer=false, isString=false, isNumeric=false, isInteger=false, isLong=false, isNumber=false, isFloat=false, isDouble=false, isDecimal=false, isByteArray=false, isBinary=false, isFile=false, isBoolean=false, isDate=false, isDateTime=false, isUuid=false, isUri=false, isEmail=false, isFreeFormObject=false, isArray=false, isMap=false, isEnum=false, isReadOnly=false, isWriteOnly=false, isNullable=false, isSelfReference=false, isCircularReference=false, isDiscriminator=false, _enum=null, allowableValues=null, items=null, additionalProperties=null, vars=[], requiredVars=[], mostInnerItems=null, vendorExtensions={}, hasValidation=false, isInherited=false, discriminatorValue='null', nameInCamelCase='ArrivalSearches', nameInSnakeCase='ARRIVAL_SEARCHES', enumName='null', maxItems=null, minItems=null, maxProperties=null, minProperties=null, uniqueItems=false, multipleOf=null, isXmlAttribute=false, xmlPrefix='null', xmlName='null', xmlNamespace='null', isXmlWrapped=false, isNull=false, getAdditionalPropertiesIsAnyType=false, getHasVars=false, getHasRequired=false}>}
     */
    arrival_searches;

    

    /**
     * Constructs a new <code>RequestTimeFilterPostcodeDistricts</code>.
     * @alias module:model/RequestTimeFilterPostcodeDistricts
     */
    constructor() { 
        
        RequestTimeFilterPostcodeDistricts.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>RequestTimeFilterPostcodeDistricts</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterPostcodeDistricts} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterPostcodeDistricts} The populated <code>RequestTimeFilterPostcodeDistricts</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterPostcodeDistricts();

            if (data.hasOwnProperty('departure_searches')) {
                obj['departure_searches'] = ApiClient.convertToType(data['departure_searches'], [RequestTimeFilterPostcodeDistrictsDepartureSearch]);
            }
            if (data.hasOwnProperty('arrival_searches')) {
                obj['arrival_searches'] = ApiClient.convertToType(data['arrival_searches'], [RequestTimeFilterPostcodeDistrictsArrivalSearch]);
            }
        }
        return obj;
    }
}



export default RequestTimeFilterPostcodeDistricts;

