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
    define(['ApiClient'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'));
  } else {
    // Browser globals (root is window)
    if (!root.TravelTimePlatformApi) {
      root.TravelTimePlatformApi = {};
    }
    root.TravelTimePlatformApi.ResponseBox = factory(root.TravelTimePlatformApi.ApiClient);
  }
}(this, function(ApiClient) {
  'use strict';



  /**
   * The ResponseBox model module.
   * @module model/ResponseBox
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>ResponseBox</code>.
   * @alias module:model/ResponseBox
   * @class
   * @param minLat {Number} 
   * @param maxLat {Number} 
   * @param minLng {Number} 
   * @param maxLng {Number} 
   */
  var exports = function(minLat, maxLat, minLng, maxLng) {
    var _this = this;

    _this['min_lat'] = minLat;
    _this['max_lat'] = maxLat;
    _this['min_lng'] = minLng;
    _this['max_lng'] = maxLng;
  };

  /**
   * Constructs a <code>ResponseBox</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ResponseBox} obj Optional instance to populate.
   * @return {module:model/ResponseBox} The populated <code>ResponseBox</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('min_lat')) {
        obj['min_lat'] = ApiClient.convertToType(data['min_lat'], 'Number');
      }
      if (data.hasOwnProperty('max_lat')) {
        obj['max_lat'] = ApiClient.convertToType(data['max_lat'], 'Number');
      }
      if (data.hasOwnProperty('min_lng')) {
        obj['min_lng'] = ApiClient.convertToType(data['min_lng'], 'Number');
      }
      if (data.hasOwnProperty('max_lng')) {
        obj['max_lng'] = ApiClient.convertToType(data['max_lng'], 'Number');
      }
    }
    return obj;
  }

  /**
   * @member {Number} min_lat
   */
  exports.prototype['min_lat'] = undefined;
  /**
   * @member {Number} max_lat
   */
  exports.prototype['max_lat'] = undefined;
  /**
   * @member {Number} min_lng
   */
  exports.prototype['min_lng'] = undefined;
  /**
   * @member {Number} max_lng
   */
  exports.prototype['max_lng'] = undefined;



  return exports;
}));

