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
import ResponseMapInfoFeatures from './ResponseMapInfoFeatures';

/**
 * The ResponseGeocodingProperties model module.
 * @module model/ResponseGeocodingProperties
 * @version 1.2.3
 */
class ResponseGeocodingProperties {
    /**
     * Constructs a new <code>ResponseGeocodingProperties</code>.
     * @alias module:model/ResponseGeocodingProperties
     * @param name {String} 
     * @param label {String} 
     */
    constructor(name, label) { 
        
        ResponseGeocodingProperties.initialize(this, name, label);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, name, label) { 
        obj['name'] = name;
        obj['label'] = label;
    }

    /**
     * Constructs a <code>ResponseGeocodingProperties</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseGeocodingProperties} obj Optional instance to populate.
     * @return {module:model/ResponseGeocodingProperties} The populated <code>ResponseGeocodingProperties</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseGeocodingProperties();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('label')) {
                obj['label'] = ApiClient.convertToType(data['label'], 'String');
            }
            if (data.hasOwnProperty('score')) {
                obj['score'] = ApiClient.convertToType(data['score'], 'Number');
            }
            if (data.hasOwnProperty('house_number')) {
                obj['house_number'] = ApiClient.convertToType(data['house_number'], 'String');
            }
            if (data.hasOwnProperty('street')) {
                obj['street'] = ApiClient.convertToType(data['street'], 'String');
            }
            if (data.hasOwnProperty('region')) {
                obj['region'] = ApiClient.convertToType(data['region'], 'String');
            }
            if (data.hasOwnProperty('region_code')) {
                obj['region_code'] = ApiClient.convertToType(data['region_code'], 'String');
            }
            if (data.hasOwnProperty('neighbourhood')) {
                obj['neighbourhood'] = ApiClient.convertToType(data['neighbourhood'], 'String');
            }
            if (data.hasOwnProperty('county')) {
                obj['county'] = ApiClient.convertToType(data['county'], 'String');
            }
            if (data.hasOwnProperty('macroregion')) {
                obj['macroregion'] = ApiClient.convertToType(data['macroregion'], 'String');
            }
            if (data.hasOwnProperty('city')) {
                obj['city'] = ApiClient.convertToType(data['city'], 'String');
            }
            if (data.hasOwnProperty('country')) {
                obj['country'] = ApiClient.convertToType(data['country'], 'String');
            }
            if (data.hasOwnProperty('country_code')) {
                obj['country_code'] = ApiClient.convertToType(data['country_code'], 'String');
            }
            if (data.hasOwnProperty('continent')) {
                obj['continent'] = ApiClient.convertToType(data['continent'], 'String');
            }
            if (data.hasOwnProperty('postcode')) {
                obj['postcode'] = ApiClient.convertToType(data['postcode'], 'String');
            }
            if (data.hasOwnProperty('features')) {
                obj['features'] = ResponseMapInfoFeatures.constructFromObject(data['features']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
ResponseGeocodingProperties.prototype['name'] = undefined;

/**
 * @member {String} label
 */
ResponseGeocodingProperties.prototype['label'] = undefined;

/**
 * @member {Number} score
 */
ResponseGeocodingProperties.prototype['score'] = undefined;

/**
 * @member {String} house_number
 */
ResponseGeocodingProperties.prototype['house_number'] = undefined;

/**
 * @member {String} street
 */
ResponseGeocodingProperties.prototype['street'] = undefined;

/**
 * @member {String} region
 */
ResponseGeocodingProperties.prototype['region'] = undefined;

/**
 * @member {String} region_code
 */
ResponseGeocodingProperties.prototype['region_code'] = undefined;

/**
 * @member {String} neighbourhood
 */
ResponseGeocodingProperties.prototype['neighbourhood'] = undefined;

/**
 * @member {String} county
 */
ResponseGeocodingProperties.prototype['county'] = undefined;

/**
 * @member {String} macroregion
 */
ResponseGeocodingProperties.prototype['macroregion'] = undefined;

/**
 * @member {String} city
 */
ResponseGeocodingProperties.prototype['city'] = undefined;

/**
 * @member {String} country
 */
ResponseGeocodingProperties.prototype['country'] = undefined;

/**
 * @member {String} country_code
 */
ResponseGeocodingProperties.prototype['country_code'] = undefined;

/**
 * @member {String} continent
 */
ResponseGeocodingProperties.prototype['continent'] = undefined;

/**
 * @member {String} postcode
 */
ResponseGeocodingProperties.prototype['postcode'] = undefined;

/**
 * @member {module:model/ResponseMapInfoFeatures} features
 */
ResponseGeocodingProperties.prototype['features'] = undefined;






export default ResponseGeocodingProperties;

