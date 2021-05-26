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
import RequestRangeFull from './RequestRangeFull';
import RequestTimeFilterProperty from './RequestTimeFilterProperty';
import RequestTransportation from './RequestTransportation';

/**
 * The RequestTimeFilterArrivalSearch model module.
 * @module model/RequestTimeFilterArrivalSearch
 * @version 1.2.3
 */
class RequestTimeFilterArrivalSearch {
    /**
     * Constructs a new <code>RequestTimeFilterArrivalSearch</code>.
     * @alias module:model/RequestTimeFilterArrivalSearch
     * @param id {String} 
     * @param departureLocationIds {Array.<String>} 
     * @param arrivalLocationId {String} 
     * @param transportation {module:model/RequestTransportation} 
     * @param travelTime {Number} 
     * @param arrivalTime {Date} 
     * @param properties {Array.<module:model/RequestTimeFilterProperty>} 
     */
    constructor(id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties) { 
        
        RequestTimeFilterArrivalSearch.initialize(this, id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, departureLocationIds, arrivalLocationId, transportation, travelTime, arrivalTime, properties) { 
        obj['id'] = id;
        obj['departure_location_ids'] = departureLocationIds;
        obj['arrival_location_id'] = arrivalLocationId;
        obj['transportation'] = transportation;
        obj['travel_time'] = travelTime;
        obj['arrival_time'] = arrivalTime;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>RequestTimeFilterArrivalSearch</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterArrivalSearch} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterArrivalSearch} The populated <code>RequestTimeFilterArrivalSearch</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterArrivalSearch();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('departure_location_ids')) {
                obj['departure_location_ids'] = ApiClient.convertToType(data['departure_location_ids'], ['String']);
            }
            if (data.hasOwnProperty('arrival_location_id')) {
                obj['arrival_location_id'] = ApiClient.convertToType(data['arrival_location_id'], 'String');
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
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [RequestTimeFilterProperty]);
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
RequestTimeFilterArrivalSearch.prototype['id'] = undefined;

/**
 * @member {Array.<String>} departure_location_ids
 */
RequestTimeFilterArrivalSearch.prototype['departure_location_ids'] = undefined;

/**
 * @member {String} arrival_location_id
 */
RequestTimeFilterArrivalSearch.prototype['arrival_location_id'] = undefined;

/**
 * @member {module:model/RequestTransportation} transportation
 */
RequestTimeFilterArrivalSearch.prototype['transportation'] = undefined;

/**
 * @member {Number} travel_time
 */
RequestTimeFilterArrivalSearch.prototype['travel_time'] = undefined;

/**
 * @member {Date} arrival_time
 */
RequestTimeFilterArrivalSearch.prototype['arrival_time'] = undefined;

/**
 * @member {Array.<module:model/RequestTimeFilterProperty>} properties
 */
RequestTimeFilterArrivalSearch.prototype['properties'] = undefined;

/**
 * @member {module:model/RequestRangeFull} range
 */
RequestTimeFilterArrivalSearch.prototype['range'] = undefined;






export default RequestTimeFilterArrivalSearch;

