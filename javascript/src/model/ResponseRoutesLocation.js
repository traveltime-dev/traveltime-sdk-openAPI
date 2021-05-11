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
import ResponseRoutesProperties from './ResponseRoutesProperties';

/**
 * The ResponseRoutesLocation model module.
 * @module model/ResponseRoutesLocation
 * @version 1.2.2
 */
class ResponseRoutesLocation {
    /**
     * Constructs a new <code>ResponseRoutesLocation</code>.
     * @alias module:model/ResponseRoutesLocation
     * @param id {String} 
     * @param properties {Array.<module:model/ResponseRoutesProperties>} 
     */
    constructor(id, properties) { 
        
        ResponseRoutesLocation.initialize(this, id, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, properties) { 
        obj['id'] = id;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>ResponseRoutesLocation</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseRoutesLocation} obj Optional instance to populate.
     * @return {module:model/ResponseRoutesLocation} The populated <code>ResponseRoutesLocation</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseRoutesLocation();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [ResponseRoutesProperties]);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
ResponseRoutesLocation.prototype['id'] = undefined;

/**
 * @member {Array.<module:model/ResponseRoutesProperties>} properties
 */
ResponseRoutesLocation.prototype['properties'] = undefined;






export default ResponseRoutesLocation;

