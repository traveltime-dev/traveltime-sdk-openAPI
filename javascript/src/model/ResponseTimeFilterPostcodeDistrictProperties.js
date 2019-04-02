/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 *
 * OpenAPI Generator version: 3.3.4
 *
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD. Register as an anonymous module.
    define(['ApiClient', 'model/ResponseTravelTimeStatistics'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./ResponseTravelTimeStatistics'));
  } else {
    // Browser globals (root is window)
    if (!root.TravelTimePlatformApi) {
      root.TravelTimePlatformApi = {};
    }
    root.TravelTimePlatformApi.ResponseTimeFilterPostcodeDistrictProperties = factory(root.TravelTimePlatformApi.ApiClient, root.TravelTimePlatformApi.ResponseTravelTimeStatistics);
  }
}(this, function(ApiClient, ResponseTravelTimeStatistics) {
  'use strict';



  /**
   * The ResponseTimeFilterPostcodeDistrictProperties model module.
   * @module model/ResponseTimeFilterPostcodeDistrictProperties
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>ResponseTimeFilterPostcodeDistrictProperties</code>.
   * @alias module:model/ResponseTimeFilterPostcodeDistrictProperties
   * @class
   */
  var exports = function() {
    var _this = this;

  };

  /**
   * Constructs a <code>ResponseTimeFilterPostcodeDistrictProperties</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ResponseTimeFilterPostcodeDistrictProperties} obj Optional instance to populate.
   * @return {module:model/ResponseTimeFilterPostcodeDistrictProperties} The populated <code>ResponseTimeFilterPostcodeDistrictProperties</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
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

  /**
   * @member {module:model/ResponseTravelTimeStatistics} travel_time_reachable
   */
  exports.prototype['travel_time_reachable'] = undefined;
  /**
   * @member {module:model/ResponseTravelTimeStatistics} travel_time_all
   */
  exports.prototype['travel_time_all'] = undefined;
  /**
   * @member {Number} coverage
   */
  exports.prototype['coverage'] = undefined;



  return exports;
}));

