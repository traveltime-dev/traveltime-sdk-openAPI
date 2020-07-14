/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.1
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ResponseFares from './ResponseFares';
import ResponseRoute from './ResponseRoute';

/**
 * The ResponseRoutesProperties model module.
 * @module model/ResponseRoutesProperties
 * @version 1.2.1
 */
class ResponseRoutesProperties {
    /**
     * @member {Number} travel_time
     * @type {Number}
     */
    travel_time;
    /**
     * @member {Number} distance
     * @type {Number}
     */
    distance;
    /**
     * @member {ResponseFares} fares
     * @type {ResponseFares}
     */
    fares;
    /**
     * @member {ResponseRoute} route
     * @type {ResponseRoute}
     */
    route;

    

    /**
     * Constructs a new <code>ResponseRoutesProperties</code>.
     * @alias module:model/ResponseRoutesProperties
     */
    constructor() { 
        
        ResponseRoutesProperties.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ResponseRoutesProperties</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseRoutesProperties} obj Optional instance to populate.
     * @return {module:model/ResponseRoutesProperties} The populated <code>ResponseRoutesProperties</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseRoutesProperties();

            if (data.hasOwnProperty('travel_time')) {
                obj['travel_time'] = ApiClient.convertToType(data['travel_time'], 'Number');
            }
            if (data.hasOwnProperty('distance')) {
                obj['distance'] = ApiClient.convertToType(data['distance'], 'Number');
            }
            if (data.hasOwnProperty('fares')) {
                obj['fares'] = ResponseFares.constructFromObject(data['fares']);
            }
            if (data.hasOwnProperty('route')) {
                obj['route'] = ResponseRoute.constructFromObject(data['route']);
            }
        }
        return obj;
    }
}



export default ResponseRoutesProperties;
