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
import ResponseTimeFilterPostcodeSectorProperties from './ResponseTimeFilterPostcodeSectorProperties';

/**
 * The ResponseTimeFilterPostcodeSector model module.
 * @module model/ResponseTimeFilterPostcodeSector
 * @version 1.2.3
 */
class ResponseTimeFilterPostcodeSector {
    /**
     * @member {String} code
     * @type {String}
     */
    code;
    /**
     * @member {ResponseTimeFilterPostcodeSectorProperties} properties
     * @type {ResponseTimeFilterPostcodeSectorProperties}
     */
    properties;

    

    /**
     * Constructs a new <code>ResponseTimeFilterPostcodeSector</code>.
     * @alias module:model/ResponseTimeFilterPostcodeSector
     * @param code {String} 
     * @param properties {ResponseTimeFilterPostcodeSectorProperties} 
     */
    constructor(code, properties) { 
        
        ResponseTimeFilterPostcodeSector.initialize(this, code, properties);
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
     * Constructs a <code>ResponseTimeFilterPostcodeSector</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodeSector} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodeSector} The populated <code>ResponseTimeFilterPostcodeSector</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodeSector();

            if (data.hasOwnProperty('code')) {
                obj['code'] = ApiClient.convertToType(data['code'], 'String');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ResponseTimeFilterPostcodeSectorProperties.constructFromObject(data['properties']);
            }
        }
        return obj;
    }
}



export default ResponseTimeFilterPostcodeSector;

