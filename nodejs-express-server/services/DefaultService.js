/* eslint-disable no-unused-vars */
const Service = require('./Service');

/**
*
* lat Double 
* lng Double 
* withinPeriodcountry String  (optional)
* returns ResponseGeocoding
* */
const geocodingReverseSearch = ({ lat, lng, withinPeriodcountry }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        lat,
        lng,
        withinPeriodcountry,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* query String 
* focusPeriodlat Double  (optional)
* focusPeriodlng Double  (optional)
* withinPeriodcountry String  (optional)
* returns ResponseGeocoding
* */
const geocodingSearch = ({ query, focusPeriodlat, focusPeriodlng, withinPeriodcountry }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        query,
        focusPeriodlat,
        focusPeriodlng,
        withinPeriodcountry,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* returns ResponseMapInfo
* */
const mapInfo = () => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestRoutes RequestRoutes 
* returns ResponseRoutes
* */
const routes = ({ requestRoutes }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestRoutes,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestSupportedLocations RequestSupportedLocations 
* returns ResponseSupportedLocations
* */
const supportedLocations = ({ requestSupportedLocations }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestSupportedLocations,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeFilter RequestTimeFilter 
* returns ResponseTimeFilter
* */
const timeFilter = ({ requestTimeFilter }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeFilter,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeFilterFast RequestTimeFilterFast 
* returns ResponseTimeFilterFast
* */
const timeFilterFast = ({ requestTimeFilterFast }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeFilterFast,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeFilterPostcodeDistricts RequestTimeFilterPostcodeDistricts 
* returns ResponseTimeFilterPostcodeDistricts
* */
const timeFilterPostcodeDistricts = ({ requestTimeFilterPostcodeDistricts }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeFilterPostcodeDistricts,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeFilterPostcodeSectors RequestTimeFilterPostcodeSectors 
* returns ResponseTimeFilterPostcodeSectors
* */
const timeFilterPostcodeSectors = ({ requestTimeFilterPostcodeSectors }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeFilterPostcodeSectors,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeFilterPostcodes RequestTimeFilterPostcodes 
* returns ResponseTimeFilterPostcodes
* */
const timeFilterPostcodes = ({ requestTimeFilterPostcodes }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeFilterPostcodes,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);
/**
*
* requestTimeMap RequestTimeMap 
* returns ResponseTimeMap
* */
const timeMap = ({ requestTimeMap }) => new Promise(
  async (resolve, reject) => {
    try {
      resolve(Service.successResponse({
        requestTimeMap,
      }));
    } catch (e) {
      reject(Service.rejectResponse(
        e.message || 'Invalid input',
        e.status || 405,
      ));
    }
  },
);

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
