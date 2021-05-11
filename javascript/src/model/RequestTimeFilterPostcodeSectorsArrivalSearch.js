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
import RequestRangeFull from './RequestRangeFull';
import RequestTimeFilterPostcodeSectorsProperty from './RequestTimeFilterPostcodeSectorsProperty';
import RequestTransportation from './RequestTransportation';

/**
 * The RequestTimeFilterPostcodeSectorsArrivalSearch model module.
 * @module model/RequestTimeFilterPostcodeSectorsArrivalSearch
 * @version 1.2.2
 */
class RequestTimeFilterPostcodeSectorsArrivalSearch {
    /**
     * Constructs a new <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code>.
     * @alias module:model/RequestTimeFilterPostcodeSectorsArrivalSearch
     * @param id {String} 
     * @param transportation {module:model/RequestTransportation} 
     * @param travelTime {Number} 
     * @param arrivalTime {Date} 
     * @param reachablePostcodesThreshold {Number} 
     * @param properties {Array.<module:model/RequestTimeFilterPostcodeSectorsProperty>} 
     */
    constructor(id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties) { 
        
        RequestTimeFilterPostcodeSectorsArrivalSearch.initialize(this, id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, transportation, travelTime, arrivalTime, reachablePostcodesThreshold, properties) { 
        obj['id'] = id;
        obj['transportation'] = transportation;
        obj['travel_time'] = travelTime;
        obj['arrival_time'] = arrivalTime;
        obj['reachable_postcodes_threshold'] = reachablePostcodesThreshold;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterPostcodeSectorsArrivalSearch} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterPostcodeSectorsArrivalSearch} The populated <code>RequestTimeFilterPostcodeSectorsArrivalSearch</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterPostcodeSectorsArrivalSearch();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('transportation')) {
                obj['transportation'] = RequestTransportation.constructFromObject(data['transportation']);
            }
            if (data.hasOwnProperty('travel_time')) {
                obj['travel_time'] = ApiClient.convertToType(data['travel_time'], 'Number');
            }
            if (data.hasOwnProperty('arrival_time')) {
                obj['arrival_time'] = ApiClient.convertToType(data['arrival_time'], 'Date');
            }
            if (data.hasOwnProperty('reachable_postcodes_threshold')) {
                obj['reachable_postcodes_threshold'] = ApiClient.convertToType(data['reachable_postcodes_threshold'], 'Number');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [RequestTimeFilterPostcodeSectorsProperty]);
            }
            if (data.hasOwnProperty('range')) {
                obj['range'] = RequestRangeFull.constructFromObject(data['range']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['id'] = undefined;

/**
 * @member {module:model/RequestTransportation} transportation
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['transportation'] = undefined;

/**
 * @member {Number} travel_time
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['travel_time'] = undefined;

/**
 * @member {Date} arrival_time
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['arrival_time'] = undefined;

/**
 * @member {Number} reachable_postcodes_threshold
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['reachable_postcodes_threshold'] = undefined;

/**
 * @member {Array.<module:model/RequestTimeFilterPostcodeSectorsProperty>} properties
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['properties'] = undefined;

/**
 * @member {module:model/RequestRangeFull} range
 */
RequestTimeFilterPostcodeSectorsArrivalSearch.prototype['range'] = undefined;






export default RequestTimeFilterPostcodeSectorsArrivalSearch;

