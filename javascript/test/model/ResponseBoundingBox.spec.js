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
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.TravelTimePlatformApi);
  }
}(this, function(expect, TravelTimePlatformApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new TravelTimePlatformApi.ResponseBoundingBox();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('ResponseBoundingBox', function() {
    it('should create an instance of ResponseBoundingBox', function() {
      // uncomment below and update the code to test ResponseBoundingBox
      //var instance = new TravelTimePlatformApi.ResponseBoundingBox();
      //expect(instance).to.be.a(TravelTimePlatformApi.ResponseBoundingBox);
    });

    it('should have the property envelope (base name: "envelope")', function() {
      // uncomment below and update the code to test the property envelope
      //var instance = new TravelTimePlatformApi.ResponseBoundingBox();
      //expect(instance).to.be();
    });

    it('should have the property boxes (base name: "boxes")', function() {
      // uncomment below and update the code to test the property boxes
      //var instance = new TravelTimePlatformApi.ResponseBoundingBox();
      //expect(instance).to.be();
    });

  });

}));