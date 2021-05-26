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
* Enum class ResponseTransportationMode.
* @enum {}
* @readonly
*/
export default class ResponseTransportationMode {
    
        /**
         * value: "car"
         * @const
         */
        "car" = "car";

    
        /**
         * value: "parking"
         * @const
         */
        "parking" = "parking";

    
        /**
         * value: "boarding"
         * @const
         */
        "boarding" = "boarding";

    
        /**
         * value: "walk"
         * @const
         */
        "walk" = "walk";

    
        /**
         * value: "bike"
         * @const
         */
        "bike" = "bike";

    
        /**
         * value: "train"
         * @const
         */
        "train" = "train";

    
        /**
         * value: "rail_national"
         * @const
         */
        "rail_national" = "rail_national";

    
        /**
         * value: "rail_overground"
         * @const
         */
        "rail_overground" = "rail_overground";

    
        /**
         * value: "rail_underground"
         * @const
         */
        "rail_underground" = "rail_underground";

    
        /**
         * value: "rail_dlr"
         * @const
         */
        "rail_dlr" = "rail_dlr";

    
        /**
         * value: "bus"
         * @const
         */
        "bus" = "bus";

    
        /**
         * value: "cable_car"
         * @const
         */
        "cable_car" = "cable_car";

    
        /**
         * value: "plane"
         * @const
         */
        "plane" = "plane";

    
        /**
         * value: "ferry"
         * @const
         */
        "ferry" = "ferry";

    
        /**
         * value: "coach"
         * @const
         */
        "coach" = "coach";

    

    /**
    * Returns a <code>ResponseTransportationMode</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/ResponseTransportationMode} The enum <code>ResponseTransportationMode</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

