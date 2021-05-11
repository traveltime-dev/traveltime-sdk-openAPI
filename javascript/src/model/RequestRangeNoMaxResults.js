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

/**
 * The RequestRangeNoMaxResults model module.
 * @module model/RequestRangeNoMaxResults
 * @version 1.2.2
 */
class RequestRangeNoMaxResults {
    /**
     * Constructs a new <code>RequestRangeNoMaxResults</code>.
     * @alias module:model/RequestRangeNoMaxResults
     * @param enabled {Boolean} 
     * @param width {Number} 
     */
    constructor(enabled, width) { 
        
        RequestRangeNoMaxResults.initialize(this, enabled, width);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, enabled, width) { 
        obj['enabled'] = enabled;
        obj['width'] = width;
    }

    /**
     * Constructs a <code>RequestRangeNoMaxResults</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestRangeNoMaxResults} obj Optional instance to populate.
     * @return {module:model/RequestRangeNoMaxResults} The populated <code>RequestRangeNoMaxResults</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestRangeNoMaxResults();

            if (data.hasOwnProperty('enabled')) {
                obj['enabled'] = ApiClient.convertToType(data['enabled'], 'Boolean');
            }
            if (data.hasOwnProperty('width')) {
                obj['width'] = ApiClient.convertToType(data['width'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {Boolean} enabled
 */
RequestRangeNoMaxResults.prototype['enabled'] = undefined;

/**
 * @member {Number} width
 */
RequestRangeNoMaxResults.prototype['width'] = undefined;






export default RequestRangeNoMaxResults;

