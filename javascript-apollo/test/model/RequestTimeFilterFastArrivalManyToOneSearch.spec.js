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
    instance = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
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

  describe('RequestTimeFilterFastArrivalManyToOneSearch', function() {
    it('should create an instance of RequestTimeFilterFastArrivalManyToOneSearch', function() {
      // uncomment below and update the code to test RequestTimeFilterFastArrivalManyToOneSearch
      //var instance = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be.a(TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch);
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property arrivalLocationId (base name: "arrival_location_id")', function() {
      // uncomment below and update the code to test the property arrivalLocationId
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property departureLocationIds (base name: "departure_location_ids")', function() {
      // uncomment below and update the code to test the property departureLocationIds
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property transportation (base name: "transportation")', function() {
      // uncomment below and update the code to test the property transportation
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property travelTime (base name: "travel_time")', function() {
      // uncomment below and update the code to test the property travelTime
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property arrivalTimePeriod (base name: "arrival_time_period")', function() {
      // uncomment below and update the code to test the property arrivalTimePeriod
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

    it('should have the property properties (base name: "properties")', function() {
      // uncomment below and update the code to test the property properties
      //var instane = new TravelTimeApi.RequestTimeFilterFastArrivalManyToOneSearch();
      //expect(instance).to.be();
    });

  });

}));
