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
 * The ResponseTravelTimeStatistics model module.
 * @module model/ResponseTravelTimeStatistics
 * @version 1.2.2
 */
class ResponseTravelTimeStatistics {
    /**
     * @member {Number} min
     * @type {Number}
     */
    min;
    /**
     * @member {Number} max
     * @type {Number}
     */
    max;
    /**
     * @member {Number} mean
     * @type {Number}
     */
    mean;
    /**
     * @member {Number} median
     * @type {Number}
     */
    median;

    

    /**
     * Constructs a new <code>ResponseTravelTimeStatistics</code>.
     * @alias module:model/ResponseTravelTimeStatistics
     * @param min {Number} 
     * @param max {Number} 
     * @param mean {Number} 
     * @param median {Number} 
     */
    constructor(min, max, mean, median) { 
        
        ResponseTravelTimeStatistics.initialize(this, min, max, mean, median);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, min, max, mean, median) { 
        obj['min'] = min;
        obj['max'] = max;
        obj['mean'] = mean;
        obj['median'] = median;
    }

    /**
     * Constructs a <code>ResponseTravelTimeStatistics</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseTravelTimeStatistics} obj Optional instance to populate.
     * @return {module:model/ResponseTravelTimeStatistics} The populated <code>ResponseTravelTimeStatistics</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseTravelTimeStatistics();

            if (data.hasOwnProperty('min')) {
                obj['min'] = ApiClient.convertToType(data['min'], 'Number');
            }
            if (data.hasOwnProperty('max')) {
                obj['max'] = ApiClient.convertToType(data['max'], 'Number');
            }
            if (data.hasOwnProperty('mean')) {
                obj['mean'] = ApiClient.convertToType(data['mean'], 'Number');
            }
            if (data.hasOwnProperty('median')) {
                obj['median'] = ApiClient.convertToType(data['median'], 'Number');
            }
        }
        return obj;
    }
}



export default ResponseTravelTimeStatistics;

