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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.TravelTimeApi);
  }
}(this, function(expect, TravelTimeApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties();
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

  describe('ResponseTimeFilterPostcodeDistrictProperties', function() {
    it('should create an instance of ResponseTimeFilterPostcodeDistrictProperties', function() {
      // uncomment below and update the code to test ResponseTimeFilterPostcodeDistrictProperties
      //var instane = new TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties();
      //expect(instance).to.be.a(TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties);
    });

    it('should have the property travelTimeReachable (base name: "travel_time_reachable")', function() {
      // uncomment below and update the code to test the property travelTimeReachable
      //var instance = new TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties();
      //expect(instance).to.be();
    });

    it('should have the property travelTimeAll (base name: "travel_time_all")', function() {
      // uncomment below and update the code to test the property travelTimeAll
      //var instance = new TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties();
      //expect(instance).to.be();
    });

    it('should have the property coverage (base name: "coverage")', function() {
      // uncomment below and update the code to test the property coverage
      //var instance = new TravelTimeApi.ResponseTimeFilterPostcodeDistrictProperties();
      //expect(instance).to.be();
    });

  });

}));
