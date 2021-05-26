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

/**
 * The RequestTransportationFast model module.
 * @module model/RequestTransportationFast
 * @version 1.2.3
 */
class RequestTransportationFast {
    /**
     * @member {RequestTransportationFast.TypeEnum} type
     * @type {RequestTransportationFast.TypeEnum}
     */
    type;

    

    /**
     * Constructs a new <code>RequestTransportationFast</code>.
     * @alias module:model/RequestTransportationFast
     * @param type {RequestTransportationFast.TypeEnum} 
     */
    constructor(type) { 
        
        RequestTransportationFast.initialize(this, type);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, type) { 
        obj['type'] = type;
    }

    /**
     * Constructs a <code>RequestTransportationFast</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestTransportationFast} obj Optional instance to populate.
     * @return {module:model/RequestTransportationFast} The populated <code>RequestTransportationFast</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestTransportationFast();

            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
        }
        return obj;
    }
}


/**
 * Allowed values for the <code>type</code> property.
 * @enum {String}
 * @readonly
 */
RequestTransportationFast['TypeEnum'] = {

    /**
     * value: "public_transport"
     * @const
     */
    "public_transport": "public_transport",

    /**
     * value: "driving"
     * @const
     */
    "driving": "driving",

    /**
     * value: "driving+public_transport"
     * @const
     */
    "driving+public_transport": "driving+public_transport"
};



export default RequestTransportationFast;

