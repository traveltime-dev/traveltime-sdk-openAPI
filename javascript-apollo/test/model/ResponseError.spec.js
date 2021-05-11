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
    instance = new TravelTimeApi.ResponseError();
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

  describe('ResponseError', function() {
    it('should create an instance of ResponseError', function() {
      // uncomment below and update the code to test ResponseError
      //var instance = new TravelTimeApi.ResponseError();
      //expect(instance).to.be.a(TravelTimeApi.ResponseError);
    });

    it('should have the property httpStatus (base name: "http_status")', function() {
      // uncomment below and update the code to test the property httpStatus
      //var instane = new TravelTimeApi.ResponseError();
      //expect(instance).to.be();
    });

    it('should have the property errorCode (base name: "error_code")', function() {
      // uncomment below and update the code to test the property errorCode
      //var instane = new TravelTimeApi.ResponseError();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new TravelTimeApi.ResponseError();
      //expect(instance).to.be();
    });

    it('should have the property documentationLink (base name: "documentation_link")', function() {
      // uncomment below and update the code to test the property documentationLink
      //var instane = new TravelTimeApi.ResponseError();
      //expect(instance).to.be();
    });

    it('should have the property additionalInfo (base name: "additional_info")', function() {
      // uncomment below and update the code to test the property additionalInfo
      //var instane = new TravelTimeApi.ResponseError();
      //expect(instance).to.be();
    });

  });

}));
