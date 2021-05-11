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
import ResponseTimeFilterPostcodeDistrictProperties from './ResponseTimeFilterPostcodeDistrictProperties';

/**
 * The ResponseTimeFilterPostcodeDistrict model module.
 * @module model/ResponseTimeFilterPostcodeDistrict
 * @version 1.2.2
 */
class ResponseTimeFilterPostcodeDistrict {
    /**
     * Constructs a new <code>ResponseTimeFilterPostcodeDistrict</code>.
     * @alias module:model/ResponseTimeFilterPostcodeDistrict
     * @param code {String} 
     * @param properties {module:model/ResponseTimeFilterPostcodeDistrictProperties} 
     */
    constructor(code, properties) { 
        
        ResponseTimeFilterPostcodeDistrict.initialize(this, code, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, code, properties) { 
        obj['code'] = code;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>ResponseTimeFilterPostcodeDistrict</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodeDistrict} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodeDistrict} The populated <code>ResponseTimeFilterPostcodeDistrict</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodeDistrict();

            if (data.hasOwnProperty('code')) {
                obj['code'] = ApiClient.convertToType(data['code'], 'String');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ResponseTimeFilterPostcodeDistrictProperties.constructFromObject(data['properties']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} code
 */
ResponseTimeFilterPostcodeDistrict.prototype['code'] = undefined;

/**
 * @member {module:model/ResponseTimeFilterPostcodeDistrictProperties} properties
 */
ResponseTimeFilterPostcodeDistrict.prototype['properties'] = undefined;






export default ResponseTimeFilterPostcodeDistrict;

