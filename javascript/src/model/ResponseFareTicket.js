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
 * The ResponseFareTicket model module.
 * @module model/ResponseFareTicket
 * @version 1.2.3
 */
class ResponseFareTicket {
    /**
     * Constructs a new <code>ResponseFareTicket</code>.
     * @alias module:model/ResponseFareTicket
     * @param type {module:model/ResponseFareTicket.TypeEnum} 
     * @param price {Number} 
     * @param currency {String} 
     */
    constructor(type, price, currency) { 
        
        ResponseFareTicket.initialize(this, type, price, currency);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, type, price, currency) { 
        obj['type'] = type;
        obj['price'] = price;
        obj['currency'] = currency;
    }

    /**
     * Constructs a <code>ResponseFareTicket</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseFareTicket} obj Optional instance to populate.
     * @return {module:model/ResponseFareTicket} The populated <code>ResponseFareTicket</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseFareTicket();

            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('price')) {
                obj['price'] = ApiClient.convertToType(data['price'], 'Number');
            }
            if (data.hasOwnProperty('currency')) {
                obj['currency'] = ApiClient.convertToType(data['currency'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseFareTicket.TypeEnum} type
 */
ResponseFareTicket.prototype['type'] = undefined;

/**
 * @member {Number} price
 */
ResponseFareTicket.prototype['price'] = undefined;

/**
 * @member {String} currency
 */
ResponseFareTicket.prototype['currency'] = undefined;





/**
 * Allowed values for the <code>type</code> property.
 * @enum {String}
 * @readonly
 */
ResponseFareTicket['TypeEnum'] = {

    /**
     * value: "single"
     * @const
     */
    "single": "single",

    /**
     * value: "week"
     * @const
     */
    "week": "week",

    /**
     * value: "month"
     * @const
     */
    "month": "month",

    /**
     * value: "year"
     * @const
     */
    "year": "year"
};



export default ResponseFareTicket;

