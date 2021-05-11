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
import ResponseTravelTimeStatistics from './ResponseTravelTimeStatistics';

/**
 * The ResponseTimeFilterPostcodeSectorProperties model module.
 * @module model/ResponseTimeFilterPostcodeSectorProperties
 * @version 1.2.2
 */
class ResponseTimeFilterPostcodeSectorProperties {
    /**
     * Constructs a new <code>ResponseTimeFilterPostcodeSectorProperties</code>.
     * @alias module:model/ResponseTimeFilterPostcodeSectorProperties
     */
    constructor() { 
        
        ResponseTimeFilterPostcodeSectorProperties.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>ResponseTimeFilterPostcodeSectorProperties</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTimeFilterPostcodeSectorProperties} obj Optional instance to populate.
     * @return {module:model/ResponseTimeFilterPostcodeSectorProperties} The populated <code>ResponseTimeFilterPostcodeSectorProperties</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTimeFilterPostcodeSectorProperties();

            if (data.hasOwnProperty('travel_time_reachable')) {
                obj['travel_time_reachable'] = ResponseTravelTimeStatistics.constructFromObject(data['travel_time_reachable']);
            }
            if (data.hasOwnProperty('travel_time_all')) {
                obj['travel_time_all'] = ResponseTravelTimeStatistics.constructFromObject(data['travel_time_all']);
            }
            if (data.hasOwnProperty('coverage')) {
                obj['coverage'] = ApiClient.convertToType(data['coverage'], 'Number');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseTravelTimeStatistics} travel_time_reachable
 */
ResponseTimeFilterPostcodeSectorProperties.prototype['travel_time_reachable'] = undefined;

/**
 * @member {module:model/ResponseTravelTimeStatistics} travel_time_all
 */
ResponseTimeFilterPostcodeSectorProperties.prototype['travel_time_all'] = undefined;

/**
 * @member {Number} coverage
 */
ResponseTimeFilterPostcodeSectorProperties.prototype['coverage'] = undefined;






export default ResponseTimeFilterPostcodeSectorProperties;

