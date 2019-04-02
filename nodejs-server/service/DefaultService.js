'use strict';


/**
 *
 * focusPeriodlat Double 
 * focusPeriodlng Double 
 * withinPeriodcountry String  (optional)
 * returns ResponseGeocoding
 **/
exports.geocodingReverseSearch = function(focusPeriodlat,focusPeriodlng,withinPeriodcountry) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "features" : [ {
    "geometry" : {
      "coordinates" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "type" : "type"
    },
    "type" : "type",
    "properties" : {
      "continent" : "continent",
      "country" : "country",
      "city" : "city",
      "county" : "county",
      "postcode" : "postcode",
      "house_number" : "house_number",
      "label" : "label",
      "macroregion" : "macroregion",
      "score" : 6.02745618307040320615897144307382404804229736328125,
      "country_code" : "country_code",
      "features" : {
        "public_transport" : {
          "date_start" : "2000-01-23T04:56:07.000+00:00",
          "date_end" : "2000-01-23T04:56:07.000+00:00"
        },
        "fares" : true,
        "postcodes" : true
      },
      "street" : "street",
      "neighbourhood" : "neighbourhood",
      "name" : "name",
      "region" : "region",
      "region_code" : "region_code"
    }
  }, {
    "geometry" : {
      "coordinates" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "type" : "type"
    },
    "type" : "type",
    "properties" : {
      "continent" : "continent",
      "country" : "country",
      "city" : "city",
      "county" : "county",
      "postcode" : "postcode",
      "house_number" : "house_number",
      "label" : "label",
      "macroregion" : "macroregion",
      "score" : 6.02745618307040320615897144307382404804229736328125,
      "country_code" : "country_code",
      "features" : {
        "public_transport" : {
          "date_start" : "2000-01-23T04:56:07.000+00:00",
          "date_end" : "2000-01-23T04:56:07.000+00:00"
        },
        "fares" : true,
        "postcodes" : true
      },
      "street" : "street",
      "neighbourhood" : "neighbourhood",
      "name" : "name",
      "region" : "region",
      "region_code" : "region_code"
    }
  } ],
  "type" : "type"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * query String 
 * withinPeriodcountry String  (optional)
 * focusPeriodlat Double  (optional)
 * focusPeriodlng Double  (optional)
 * returns ResponseGeocoding
 **/
exports.geocodingSearch = function(query,withinPeriodcountry,focusPeriodlat,focusPeriodlng) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "features" : [ {
    "geometry" : {
      "coordinates" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "type" : "type"
    },
    "type" : "type",
    "properties" : {
      "continent" : "continent",
      "country" : "country",
      "city" : "city",
      "county" : "county",
      "postcode" : "postcode",
      "house_number" : "house_number",
      "label" : "label",
      "macroregion" : "macroregion",
      "score" : 6.02745618307040320615897144307382404804229736328125,
      "country_code" : "country_code",
      "features" : {
        "public_transport" : {
          "date_start" : "2000-01-23T04:56:07.000+00:00",
          "date_end" : "2000-01-23T04:56:07.000+00:00"
        },
        "fares" : true,
        "postcodes" : true
      },
      "street" : "street",
      "neighbourhood" : "neighbourhood",
      "name" : "name",
      "region" : "region",
      "region_code" : "region_code"
    }
  }, {
    "geometry" : {
      "coordinates" : [ 0.80082819046101150206595775671303272247314453125, 0.80082819046101150206595775671303272247314453125 ],
      "type" : "type"
    },
    "type" : "type",
    "properties" : {
      "continent" : "continent",
      "country" : "country",
      "city" : "city",
      "county" : "county",
      "postcode" : "postcode",
      "house_number" : "house_number",
      "label" : "label",
      "macroregion" : "macroregion",
      "score" : 6.02745618307040320615897144307382404804229736328125,
      "country_code" : "country_code",
      "features" : {
        "public_transport" : {
          "date_start" : "2000-01-23T04:56:07.000+00:00",
          "date_end" : "2000-01-23T04:56:07.000+00:00"
        },
        "fares" : true,
        "postcodes" : true
      },
      "street" : "street",
      "neighbourhood" : "neighbourhood",
      "name" : "name",
      "region" : "region",
      "region_code" : "region_code"
    }
  } ],
  "type" : "type"
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * returns ResponseMapInfo
 **/
exports.mapInfo = function() {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "maps" : [ {
    "features" : {
      "public_transport" : {
        "date_start" : "2000-01-23T04:56:07.000+00:00",
        "date_end" : "2000-01-23T04:56:07.000+00:00"
      },
      "fares" : true,
      "postcodes" : true
    },
    "name" : "name"
  }, {
    "features" : {
      "public_transport" : {
        "date_start" : "2000-01-23T04:56:07.000+00:00",
        "date_end" : "2000-01-23T04:56:07.000+00:00"
      },
      "fares" : true,
      "postcodes" : true
    },
    "name" : "name"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestRoutes RequestRoutes 
 * returns ResponseRoutes
 **/
exports.routes = function(requestRoutes) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  }, {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestSupportedLocations RequestSupportedLocations 
 * returns ResponseSupportedLocations
 **/
exports.supportedLocations = function(requestSupportedLocations) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "unsupported_locations" : [ "unsupported_locations", "unsupported_locations" ],
  "locations" : [ {
    "map_name" : "map_name",
    "id" : "id"
  }, {
    "map_name" : "map_name",
    "id" : "id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeFilter RequestTimeFilter 
 * returns ResponseTimeFilter
 **/
exports.timeFilter = function(requestTimeFilter) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  }, {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "distance_breakdown" : [ {
          "distance" : 1
        }, {
          "distance" : 1
        } ],
        "route" : {
          "arrival_time" : "2000-01-23T04:56:07.000+00:00",
          "parts" : [ {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          }, {
            "departs_at" : "departs_at",
            "distance" : 2,
            "line" : "line",
            "num_stops" : 2,
            "turn" : "turn",
            "type" : "basic",
            "travel_time" : 7,
            "directions" : "directions",
            "arrives_at" : "arrives_at",
            "road" : "road",
            "departure_station" : "departure_station",
            "id" : "id",
            "arrival_station" : "arrival_station",
            "coords" : [ {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            }, {
              "lng" : 3.61607674925191080461672754609026014804840087890625,
              "lat" : 9.301444243932575517419536481611430644989013671875
            } ],
            "direction" : "direction"
          } ],
          "departure_time" : "2000-01-23T04:56:07.000+00:00"
        },
        "distance" : 6,
        "travel_time" : 0,
        "fares" : {
          "breakdown" : [ {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          }, {
            "modes" : [ null, null ],
            "tickets" : [ {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            }, {
              "price" : 5.63737665663332876420099637471139430999755859375,
              "currency" : "currency",
              "type" : "single"
            } ],
            "route_part_ids" : [ 5, 5 ]
          } ],
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeFilterFast RequestTimeFilterFast 
 * returns ResponseTimeFilterFast
 **/
exports.timeFilterFast = function(requestTimeFilterFast) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  }, {
    "unreachable" : [ "unreachable", "unreachable" ],
    "locations" : [ {
      "id" : "id",
      "properties" : [ {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    }, {
      "id" : "id",
      "properties" : [ {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      }, {
        "travel_time" : 0,
        "fares" : {
          "tickets_total" : [ {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          }, {
            "price" : 5.63737665663332876420099637471139430999755859375,
            "currency" : "currency",
            "type" : "single"
          } ]
        }
      } ]
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeFilterPostcodeDistricts RequestTimeFilterPostcodeDistricts 
 * returns ResponseTimeFilterPostcodeDistricts
 **/
exports.timeFilterPostcodeDistricts = function(requestTimeFilterPostcodeDistricts) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "districts" : [ {
      "code" : "",
      "properties" : {
        "coverage" : 5.63737665663332876420099637471139430999755859375,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    }, {
      "code" : "",
      "properties" : {
        "coverage" : 5.63737665663332876420099637471139430999755859375,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    } ],
    "search_id" : "search_id"
  }, {
    "districts" : [ {
      "code" : "",
      "properties" : {
        "coverage" : 5.63737665663332876420099637471139430999755859375,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    }, {
      "code" : "",
      "properties" : {
        "coverage" : 5.63737665663332876420099637471139430999755859375,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeFilterPostcodeSectors RequestTimeFilterPostcodeSectors 
 * returns ResponseTimeFilterPostcodeSectors
 **/
exports.timeFilterPostcodeSectors = function(requestTimeFilterPostcodeSectors) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "sectors" : [ {
      "code" : "",
      "properties" : {
        "coverage" : 0.80082819046101150206595775671303272247314453125,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    }, {
      "code" : "",
      "properties" : {
        "coverage" : 0.80082819046101150206595775671303272247314453125,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    } ],
    "search_id" : "search_id"
  }, {
    "sectors" : [ {
      "code" : "",
      "properties" : {
        "coverage" : 0.80082819046101150206595775671303272247314453125,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    }, {
      "code" : "",
      "properties" : {
        "coverage" : 0.80082819046101150206595775671303272247314453125,
        "travel_time_all" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        },
        "travel_time_reachable" : {
          "min" : 0,
          "median" : 5,
          "max" : 6,
          "mean" : 1
        }
      }
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeFilterPostcodes RequestTimeFilterPostcodes 
 * returns ResponseTimeFilterPostcodes
 **/
exports.timeFilterPostcodes = function(requestTimeFilterPostcodes) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "postcodes" : [ {
      "code" : "",
      "properties" : [ {
        "distance" : 6,
        "travel_time" : 0
      }, {
        "distance" : 6,
        "travel_time" : 0
      } ]
    }, {
      "code" : "",
      "properties" : [ {
        "distance" : 6,
        "travel_time" : 0
      }, {
        "distance" : 6,
        "travel_time" : 0
      } ]
    } ],
    "search_id" : "search_id"
  }, {
    "postcodes" : [ {
      "code" : "",
      "properties" : [ {
        "distance" : 6,
        "travel_time" : 0
      }, {
        "distance" : 6,
        "travel_time" : 0
      } ]
    }, {
      "code" : "",
      "properties" : [ {
        "distance" : 6,
        "travel_time" : 0
      }, {
        "distance" : 6,
        "travel_time" : 0
      } ]
    } ],
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}


/**
 *
 * requestTimeMap RequestTimeMap 
 * returns ResponseTimeMap
 **/
exports.timeMap = function(requestTimeMap) {
  return new Promise(function(resolve, reject) {
    var examples = {};
    examples['application/json'] = {
  "results" : [ {
    "shapes" : [ {
      "shell" : [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ],
      "holes" : [ [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ], [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ] ]
    }, {
      "shell" : [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ],
      "holes" : [ [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ], [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ] ]
    } ],
    "properties" : {
      "is_only_walking" : true
    },
    "search_id" : "search_id"
  }, {
    "shapes" : [ {
      "shell" : [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ],
      "holes" : [ [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ], [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ] ]
    }, {
      "shell" : [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ],
      "holes" : [ [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ], [ {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      }, {
        "lng" : 3.61607674925191080461672754609026014804840087890625,
        "lat" : 9.301444243932575517419536481611430644989013671875
      } ] ]
    } ],
    "properties" : {
      "is_only_walking" : true
    },
    "search_id" : "search_id"
  } ]
};
    if (Object.keys(examples).length > 0) {
      resolve(examples[Object.keys(examples)[0]]);
    } else {
      resolve();
    }
  });
}

