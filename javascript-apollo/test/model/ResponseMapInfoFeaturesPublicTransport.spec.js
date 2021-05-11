/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
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
    instance = new TravelTimeApi.ResponseMapInfoFeaturesPublicTransport();
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

  describe('ResponseMapInfoFeaturesPublicTransport', function() {
    it('should create an instance of ResponseMapInfoFeaturesPublicTransport', function() {
      // uncomment below and update the code to test ResponseMapInfoFeaturesPublicTransport
      //var instance = new TravelTimeApi.ResponseMapInfoFeaturesPublicTransport();
      //expect(instance).to.be.a(TravelTimeApi.ResponseMapInfoFeaturesPublicTransport);
    });

    it('should have the property dateStart (base name: "date_start")', function() {
      // uncomment below and update the code to test the property dateStart
      //var instane = new TravelTimeApi.ResponseMapInfoFeaturesPublicTransport();
      //expect(instance).to.be();
    });

    it('should have the property dateEnd (base name: "date_end")', function() {
      // uncomment below and update the code to test the property dateEnd
      //var instane = new TravelTimeApi.ResponseMapInfoFeaturesPublicTransport();
      //expect(instance).to.be();
    });

  });

}));
