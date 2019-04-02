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
    define(['ApiClient', 'model/Coords'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    module.exports = factory(require('../ApiClient'), require('./Coords'));
  } else {
    // Browser globals (root is window)
    if (!root.TravelTimePlatformApi) {
      root.TravelTimePlatformApi = {};
    }
    root.TravelTimePlatformApi.ResponseShape = factory(root.TravelTimePlatformApi.ApiClient, root.TravelTimePlatformApi.Coords);
  }
}(this, function(ApiClient, Coords) {
  'use strict';



  /**
   * The ResponseShape model module.
   * @module model/ResponseShape
   * @version 1.0.0
   */

  /**
   * Constructs a new <code>ResponseShape</code>.
   * @alias module:model/ResponseShape
   * @class
   * @param shell {Array.<module:model/Coords>} 
   * @param holes {Array.<Array.<module:model/Coords>>} 
   */
  var exports = function(shell, holes) {
    var _this = this;

    _this['shell'] = shell;
    _this['holes'] = holes;
  };

  /**
   * Constructs a <code>ResponseShape</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ResponseShape} obj Optional instance to populate.
   * @return {module:model/ResponseShape} The populated <code>ResponseShape</code> instance.
   */
  exports.constructFromObject = function(data, obj) {
    if (data) {
      obj = obj || new exports();
      if (data.hasOwnProperty('shell')) {
        obj['shell'] = ApiClient.convertToType(data['shell'], [Coords]);
      }
      if (data.hasOwnProperty('holes')) {
        obj['holes'] = ApiClient.convertToType(data['holes'], [[Coords]]);
      }
    }
    return obj;
  }

  /**
   * @member {Array.<module:model/Coords>} shell
   */
  exports.prototype['shell'] = undefined;
  /**
   * @member {Array.<Array.<module:model/Coords>>} holes
   */
  exports.prototype['holes'] = undefined;



  return exports;
}));

