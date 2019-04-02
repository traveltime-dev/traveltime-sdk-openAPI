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
    instance = new TravelTimePlatformApi.ResponseRoute();
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

  describe('ResponseRoute', function() {
    it('should create an instance of ResponseRoute', function() {
      // uncomment below and update the code to test ResponseRoute
      //var instance = new TravelTimePlatformApi.ResponseRoute();
      //expect(instance).to.be.a(TravelTimePlatformApi.ResponseRoute);
    });

    it('should have the property departureTime (base name: "departure_time")', function() {
      // uncomment below and update the code to test the property departureTime
      //var instance = new TravelTimePlatformApi.ResponseRoute();
      //expect(instance).to.be();
    });

    it('should have the property arrivalTime (base name: "arrival_time")', function() {
      // uncomment below and update the code to test the property arrivalTime
      //var instance = new TravelTimePlatformApi.ResponseRoute();
      //expect(instance).to.be();
    });

    it('should have the property parts (base name: "parts")', function() {
      // uncomment below and update the code to test the property parts
      //var instance = new TravelTimePlatformApi.ResponseRoute();
      //expect(instance).to.be();
    });

  });

}));