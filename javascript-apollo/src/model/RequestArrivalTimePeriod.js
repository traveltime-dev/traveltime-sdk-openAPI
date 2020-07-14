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
/**
* Enum class RequestArrivalTimePeriod.
* @enum {}
* @readonly
*/
export default class RequestArrivalTimePeriod {
    
        /**
         * value: "weekday_morning"
         * @const
         */
        "weekday_morning" = "weekday_morning";

    

    /**
    * Returns a <code>RequestArrivalTimePeriod</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/RequestArrivalTimePeriod} The enum <code>RequestArrivalTimePeriod</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}
