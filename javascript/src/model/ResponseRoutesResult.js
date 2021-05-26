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
import ResponseRoutesLocation from './ResponseRoutesLocation';

/**
 * The ResponseRoutesResult model module.
 * @module model/ResponseRoutesResult
 * @version 1.2.3
 */
class ResponseRoutesResult {
    /**
     * Constructs a new <code>ResponseRoutesResult</code>.
     * @alias module:model/ResponseRoutesResult
     * @param searchId {String} 
     * @param locations {Array.<module:model/ResponseRoutesLocation>} 
     * @param unreachable {Array.<String>} 
     */
    constructor(searchId, locations, unreachable) { 
        
        ResponseRoutesResult.initialize(this, searchId, locations, unreachable);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, searchId, locations, unreachable) { 
        obj['search_id'] = searchId;
        obj['locations'] = locations;
        obj['unreachable'] = unreachable;
    }

    /**
     * Constructs a <code>ResponseRoutesResult</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseRoutesResult} obj Optional instance to populate.
     * @return {module:model/ResponseRoutesResult} The populated <code>ResponseRoutesResult</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseRoutesResult();

            if (data.hasOwnProperty('search_id')) {
                obj['search_id'] = ApiClient.convertToType(data['search_id'], 'String');
            }
            if (data.hasOwnProperty('locations')) {
                obj['locations'] = ApiClient.convertToType(data['locations'], [ResponseRoutesLocation]);
            }
            if (data.hasOwnProperty('unreachable')) {
                obj['unreachable'] = ApiClient.convertToType(data['unreachable'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} search_id
 */
ResponseRoutesResult.prototype['search_id'] = undefined;

/**
 * @member {Array.<module:model/ResponseRoutesLocation>} locations
 */
ResponseRoutesResult.prototype['locations'] = undefined;

/**
 * @member {Array.<String>} unreachable
 */
ResponseRoutesResult.prototype['unreachable'] = undefined;






export default ResponseRoutesResult;

