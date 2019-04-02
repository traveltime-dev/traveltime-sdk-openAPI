'use strict';

var utils = require('../utils/writer.js');
var Default = require('../service/DefaultService');

module.exports.geocodingReverseSearch = function geocodingReverseSearch (req, res, next) {
  var focusPeriodlat = req.swagger.params['focus.lat'].value;
  var focusPeriodlng = req.swagger.params['focus.lng'].value;
  var withinPeriodcountry = req.swagger.params['within.country'].value;
  Default.geocodingReverseSearch(focusPeriodlat,focusPeriodlng,withinPeriodcountry)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.geocodingSearch = function geocodingSearch (req, res, next) {
  var query = req.swagger.params['query'].value;
  var withinPeriodcountry = req.swagger.params['within.country'].value;
  var focusPeriodlat = req.swagger.params['focus.lat'].value;
  var focusPeriodlng = req.swagger.params['focus.lng'].value;
  Default.geocodingSearch(query,withinPeriodcountry,focusPeriodlat,focusPeriodlng)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.mapInfo = function mapInfo (req, res, next) {
  Default.mapInfo()
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.routes = function routes (req, res, next) {
  var requestRoutes = req.swagger.params['RequestRoutes'].value;
  Default.routes(requestRoutes)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.supportedLocations = function supportedLocations (req, res, next) {
  var requestSupportedLocations = req.swagger.params['RequestSupportedLocations'].value;
  Default.supportedLocations(requestSupportedLocations)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeFilter = function timeFilter (req, res, next) {
  var requestTimeFilter = req.swagger.params['RequestTimeFilter'].value;
  Default.timeFilter(requestTimeFilter)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeFilterFast = function timeFilterFast (req, res, next) {
  var requestTimeFilterFast = req.swagger.params['RequestTimeFilterFast'].value;
  Default.timeFilterFast(requestTimeFilterFast)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeFilterPostcodeDistricts = function timeFilterPostcodeDistricts (req, res, next) {
  var requestTimeFilterPostcodeDistricts = req.swagger.params['RequestTimeFilterPostcodeDistricts'].value;
  Default.timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeFilterPostcodeSectors = function timeFilterPostcodeSectors (req, res, next) {
  var requestTimeFilterPostcodeSectors = req.swagger.params['RequestTimeFilterPostcodeSectors'].value;
  Default.timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeFilterPostcodes = function timeFilterPostcodes (req, res, next) {
  var requestTimeFilterPostcodes = req.swagger.params['RequestTimeFilterPostcodes'].value;
  Default.timeFilterPostcodes(requestTimeFilterPostcodes)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};

module.exports.timeMap = function timeMap (req, res, next) {
  var requestTimeMap = req.swagger.params['RequestTimeMap'].value;
  Default.timeMap(requestTimeMap)
    .then(function (response) {
      utils.writeJson(res, response);
    })
    .catch(function (response) {
      utils.writeJson(res, response);
    });
};
