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
import RequestTimeFilterPostcodesProperty from './RequestTimeFilterPostcodesProperty';
import RequestTransportation from './RequestTransportation';

/**
 * The RequestTimeFilterPostcodesDepartureSearch model module.
 * @module model/RequestTimeFilterPostcodesDepartureSearch
 * @version 1.2.2
 */
class RequestTimeFilterPostcodesDepartureSearch {
    /**
     * Constructs a new <code>RequestTimeFilterPostcodesDepartureSearch</code>.
     * @alias module:model/RequestTimeFilterPostcodesDepartureSearch
     * @param id {String} 
     * @param transportation {module:model/RequestTransportation} 
     * @param travelTime {Number} 
     * @param departureTime {Date} 
     * @param properties {Array.<module:model/RequestTimeFilterPostcodesProperty>} 
     */
    constructor(id, transportation, travelTime, departureTime, properties) { 
        
        RequestTimeFilterPostcodesDepartureSearch.initialize(this, id, transportation, travelTime, departureTime, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, id, transportation, travelTime, departureTime, properties) { 
        obj['id'] = id;
        obj['transportation'] = transportation;
        obj['travel_time'] = travelTime;
        obj['departure_time'] = departureTime;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>RequestTimeFilterPostcodesDepartureSearch</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTimeFilterPostcodesDepartureSearch} obj Optional instance to populate.
     * @return {module:model/RequestTimeFilterPostcodesDepartureSearch} The populated <code>RequestTimeFilterPostcodesDepartureSearch</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTimeFilterPostcodesDepartureSearch();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('transportation')) {
                obj['transportation'] = RequestTransportation.constructFromObject(data['transportation']);
            }
            if (data.hasOwnProperty('travel_time')) {
                obj['travel_time'] = ApiClient.convertToType(data['travel_time'], 'Number');
            }
            if (data.hasOwnProperty('departure_time')) {
                obj['departure_time'] = ApiClient.convertToType(data['departure_time'], 'Date');
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ApiClient.convertToType(data['properties'], [RequestTimeFilterPostcodesProperty]);
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
RequestTimeFilterPostcodesDepartureSearch.prototype['id'] = undefined;

/**
 * @member {module:model/RequestTransportation} transportation
 */
RequestTimeFilterPostcodesDepartureSearch.prototype['transportation'] = undefined;

/**
 * @member {Number} travel_time
 */
RequestTimeFilterPostcodesDepartureSearch.prototype['travel_time'] = undefined;

/**
 * @member {Date} departure_time
 */
RequestTimeFilterPostcodesDepartureSearch.prototype['departure_time'] = undefined;

/**
 * @member {Array.<module:model/RequestTimeFilterPostcodesProperty>} properties
 */
RequestTimeFilterPostcodesDepartureSearch.prototype['properties'] = undefined;

/**
 * @member {module:model/RequestRangeFull} range
 */
RequestTimeFilterPostcodesDepartureSearch.prototype['range'] = undefined;






export default RequestTimeFilterPostcodesDepartureSearch;

