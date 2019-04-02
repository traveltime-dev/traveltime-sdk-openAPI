<?php
require_once __DIR__ . '/vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Silex\Application;

$app = new Silex\Application();


$app->GET('/v4/geocoding/reverse', function(Application $app, Request $request) {
            $focus/lat = $request->get('focus/lat');
            $focus/lng = $request->get('focus/lng');
            $within/country = $request->get('within/country');
            return new Response('How about implementing geocodingReverseSearch as a GET method ?');
            });


$app->GET('/v4/geocoding/search', function(Application $app, Request $request) {
            $query = $request->get('query');
            $within/country = $request->get('within/country');
            $focus/lat = $request->get('focus/lat');
            $focus/lng = $request->get('focus/lng');
            return new Response('How about implementing geocodingSearch as a GET method ?');
            });


$app->GET('/v4/map-info', function(Application $app, Request $request) {
            return new Response('How about implementing mapInfo as a GET method ?');
            });


$app->POST('/v4/routes', function(Application $app, Request $request) {
            return new Response('How about implementing routes as a POST method ?');
            });


$app->POST('/v4/supported-locations', function(Application $app, Request $request) {
            return new Response('How about implementing supportedLocations as a POST method ?');
            });


$app->POST('/v4/time-filter', function(Application $app, Request $request) {
            return new Response('How about implementing timeFilter as a POST method ?');
            });


$app->POST('/v4/time-filter/fast', function(Application $app, Request $request) {
            return new Response('How about implementing timeFilterFast as a POST method ?');
            });


$app->POST('/v4/time-filter/postcode-districts', function(Application $app, Request $request) {
            return new Response('How about implementing timeFilterPostcodeDistricts as a POST method ?');
            });


$app->POST('/v4/time-filter/postcode-sectors', function(Application $app, Request $request) {
            return new Response('How about implementing timeFilterPostcodeSectors as a POST method ?');
            });


$app->POST('/v4/time-filter/postcodes', function(Application $app, Request $request) {
            return new Response('How about implementing timeFilterPostcodes as a POST method ?');
            });


$app->POST('/v4/time-map', function(Application $app, Request $request) {
            return new Response('How about implementing timeMap as a POST method ?');
            });


$app->run();
