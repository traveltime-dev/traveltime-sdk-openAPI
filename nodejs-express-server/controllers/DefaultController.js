/**
 * The DefaultController file is a very simple one, which does not need to be changed manually,
 * unless there's a case where business logic reoutes the request to an entity which is not
 * the service.
 * The heavy lifting of the Controller item is done in Request.js - that is where request
 * parameters are extracted and sent to the service, and where response is handled.
 */

const Controller = require('./Controller');
const service = require('../services/DefaultService');
const geocodingReverseSearch = async (request, response) => {
  await Controller.handleRequest(request, response, service.geocodingReverseSearch);
};

const geocodingSearch = async (request, response) => {
  await Controller.handleRequest(request, response, service.geocodingSearch);
};

const mapInfo = async (request, response) => {
  await Controller.handleRequest(request, response, service.mapInfo);
};

const routes = async (request, response) => {
  await Controller.handleRequest(request, response, service.routes);
};

const supportedLocations = async (request, response) => {
  await Controller.handleRequest(request, response, service.supportedLocations);
};

const timeFilter = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeFilter);
};

const timeFilterFast = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeFilterFast);
};

const timeFilterPostcodeDistricts = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeFilterPostcodeDistricts);
};

const timeFilterPostcodeSectors = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeFilterPostcodeSectors);
};

const timeFilterPostcodes = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeFilterPostcodes);
};

const timeMap = async (request, response) => {
  await Controller.handleRequest(request, response, service.timeMap);
};


module.exports = {
  geocodingReverseSearch,
  geocodingSearch,
  mapInfo,
  routes,
  supportedLocations,
  timeFilter,
  timeFilterFast,
  timeFilterPostcodeDistricts,
  timeFilterPostcodeSectors,
  timeFilterPostcodes,
  timeMap,
};
