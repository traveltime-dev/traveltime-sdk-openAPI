# Nim API client for TravelTime API (Package: openapiclient)

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

## Overview

This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 1.2.1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.NimClientCodegen

## Installation

Put the package under your project folder and add the following to the nimble file of your project:

```
import openapiclient
```

## Documentation for API Endpoints

All URIs are relative to *https://api.traveltimeapp.com*

Module | Proc | HTTP request | Description
------------ | ------------- | ------------- | -------------
api_default | geocodingReverseSearch | **GET** /v4/geocoding/reverse | 
api_default | geocodingSearch | **GET** /v4/geocoding/search | 
api_default | mapInfo | **GET** /v4/map-info | 
api_default | routes | **POST** /v4/routes | 
api_default | supportedLocations | **POST** /v4/supported-locations | 
api_default | timeFilter | **POST** /v4/time-filter | 
api_default | timeFilterFast | **POST** /v4/time-filter/fast | 
api_default | timeFilterPostcodeDistricts | **POST** /v4/time-filter/postcode-districts | 
api_default | timeFilterPostcodeSectors | **POST** /v4/time-filter/postcode-sectors | 
api_default | timeFilterPostcodes | **POST** /v4/time-filter/postcodes | 
api_default | timeMap | **POST** /v4/time-map | 


To generate documentation with Nim DocGen, use:

```
nim doc --project --index:on openapiclient.nim
```
