/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent }                           from '@angular/common/http';
import { CustomHttpUrlEncodingCodec }                        from '../encoder';

import { Observable }                                        from 'rxjs/Observable';

import { RequestRoutes } from '../model/requestRoutes';
import { RequestSupportedLocations } from '../model/requestSupportedLocations';
import { RequestTimeFilter } from '../model/requestTimeFilter';
import { RequestTimeFilterFast } from '../model/requestTimeFilterFast';
import { RequestTimeFilterPostcodeDistricts } from '../model/requestTimeFilterPostcodeDistricts';
import { RequestTimeFilterPostcodeSectors } from '../model/requestTimeFilterPostcodeSectors';
import { RequestTimeFilterPostcodes } from '../model/requestTimeFilterPostcodes';
import { RequestTimeMap } from '../model/requestTimeMap';
import { ResponseError } from '../model/responseError';
import { ResponseGeocoding } from '../model/responseGeocoding';
import { ResponseMapInfo } from '../model/responseMapInfo';
import { ResponseRoutes } from '../model/responseRoutes';
import { ResponseSupportedLocations } from '../model/responseSupportedLocations';
import { ResponseTimeFilter } from '../model/responseTimeFilter';
import { ResponseTimeFilterFast } from '../model/responseTimeFilterFast';
import { ResponseTimeFilterPostcodeDistricts } from '../model/responseTimeFilterPostcodeDistricts';
import { ResponseTimeFilterPostcodeSectors } from '../model/responseTimeFilterPostcodeSectors';
import { ResponseTimeFilterPostcodes } from '../model/responseTimeFilterPostcodes';
import { ResponseTimeMap } from '../model/responseTimeMap';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable()
export class DefaultService {

    protected basePath = 'https://api.traveltimeapp.com';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {

        if (configuration) {
            this.configuration = configuration;
            this.configuration.basePath = configuration.basePath || basePath || this.basePath;

        } else {
            this.configuration.basePath = basePath || this.basePath;
        }
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        for (const consume of consumes) {
            if (form === consume) {
                return true;
            }
        }
        return false;
    }


    /**
     * 
     * 
     * @param focusLat 
     * @param focusLng 
     * @param withinCountry 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public geocodingReverseSearch(focusLat: number, focusLng: number, withinCountry?: string, observe?: 'body', reportProgress?: boolean): Observable<ResponseGeocoding>;
    public geocodingReverseSearch(focusLat: number, focusLng: number, withinCountry?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseGeocoding>>;
    public geocodingReverseSearch(focusLat: number, focusLng: number, withinCountry?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseGeocoding>>;
    public geocodingReverseSearch(focusLat: number, focusLng: number, withinCountry?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (focusLat === null || focusLat === undefined) {
            throw new Error('Required parameter focusLat was null or undefined when calling geocodingReverseSearch.');
        }
        if (focusLng === null || focusLng === undefined) {
            throw new Error('Required parameter focusLng was null or undefined when calling geocodingReverseSearch.');
        }

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (focusLat !== undefined && focusLat !== null) {
            queryParameters = queryParameters.set('focus.lat', <any>focusLat);
        }
        if (focusLng !== undefined && focusLng !== null) {
            queryParameters = queryParameters.set('focus.lng', <any>focusLng);
        }
        if (withinCountry !== undefined && withinCountry !== null) {
            queryParameters = queryParameters.set('within.country', <any>withinCountry);
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.get<ResponseGeocoding>(`${this.configuration.basePath}/v4/geocoding/reverse`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param query 
     * @param withinCountry 
     * @param focusLat 
     * @param focusLng 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public geocodingSearch(query: string, withinCountry?: string, focusLat?: number, focusLng?: number, observe?: 'body', reportProgress?: boolean): Observable<ResponseGeocoding>;
    public geocodingSearch(query: string, withinCountry?: string, focusLat?: number, focusLng?: number, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseGeocoding>>;
    public geocodingSearch(query: string, withinCountry?: string, focusLat?: number, focusLng?: number, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseGeocoding>>;
    public geocodingSearch(query: string, withinCountry?: string, focusLat?: number, focusLng?: number, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (query === null || query === undefined) {
            throw new Error('Required parameter query was null or undefined when calling geocodingSearch.');
        }

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (query !== undefined && query !== null) {
            queryParameters = queryParameters.set('query', <any>query);
        }
        if (withinCountry !== undefined && withinCountry !== null) {
            queryParameters = queryParameters.set('within.country', <any>withinCountry);
        }
        if (focusLat !== undefined && focusLat !== null) {
            queryParameters = queryParameters.set('focus.lat', <any>focusLat);
        }
        if (focusLng !== undefined && focusLng !== null) {
            queryParameters = queryParameters.set('focus.lng', <any>focusLng);
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.get<ResponseGeocoding>(`${this.configuration.basePath}/v4/geocoding/search`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public mapInfo(observe?: 'body', reportProgress?: boolean): Observable<ResponseMapInfo>;
    public mapInfo(observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseMapInfo>>;
    public mapInfo(observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseMapInfo>>;
    public mapInfo(observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.get<ResponseMapInfo>(`${this.configuration.basePath}/v4/map-info`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestRoutes 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public routes(requestRoutes: RequestRoutes, observe?: 'body', reportProgress?: boolean): Observable<ResponseRoutes>;
    public routes(requestRoutes: RequestRoutes, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseRoutes>>;
    public routes(requestRoutes: RequestRoutes, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseRoutes>>;
    public routes(requestRoutes: RequestRoutes, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestRoutes === null || requestRoutes === undefined) {
            throw new Error('Required parameter requestRoutes was null or undefined when calling routes.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseRoutes>(`${this.configuration.basePath}/v4/routes`,
            requestRoutes,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestSupportedLocations 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public supportedLocations(requestSupportedLocations: RequestSupportedLocations, observe?: 'body', reportProgress?: boolean): Observable<ResponseSupportedLocations>;
    public supportedLocations(requestSupportedLocations: RequestSupportedLocations, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseSupportedLocations>>;
    public supportedLocations(requestSupportedLocations: RequestSupportedLocations, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseSupportedLocations>>;
    public supportedLocations(requestSupportedLocations: RequestSupportedLocations, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestSupportedLocations === null || requestSupportedLocations === undefined) {
            throw new Error('Required parameter requestSupportedLocations was null or undefined when calling supportedLocations.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseSupportedLocations>(`${this.configuration.basePath}/v4/supported-locations`,
            requestSupportedLocations,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeFilter 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeFilter(requestTimeFilter: RequestTimeFilter, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeFilter>;
    public timeFilter(requestTimeFilter: RequestTimeFilter, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeFilter>>;
    public timeFilter(requestTimeFilter: RequestTimeFilter, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeFilter>>;
    public timeFilter(requestTimeFilter: RequestTimeFilter, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeFilter === null || requestTimeFilter === undefined) {
            throw new Error('Required parameter requestTimeFilter was null or undefined when calling timeFilter.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeFilter>(`${this.configuration.basePath}/v4/time-filter`,
            requestTimeFilter,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeFilterFast 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeFilterFast>;
    public timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeFilterFast>>;
    public timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeFilterFast>>;
    public timeFilterFast(requestTimeFilterFast: RequestTimeFilterFast, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeFilterFast === null || requestTimeFilterFast === undefined) {
            throw new Error('Required parameter requestTimeFilterFast was null or undefined when calling timeFilterFast.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeFilterFast>(`${this.configuration.basePath}/v4/time-filter/fast`,
            requestTimeFilterFast,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeFilterPostcodeDistricts 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeFilterPostcodeDistricts>;
    public timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeFilterPostcodeDistricts>>;
    public timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeFilterPostcodeDistricts>>;
    public timeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts: RequestTimeFilterPostcodeDistricts, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeFilterPostcodeDistricts === null || requestTimeFilterPostcodeDistricts === undefined) {
            throw new Error('Required parameter requestTimeFilterPostcodeDistricts was null or undefined when calling timeFilterPostcodeDistricts.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeFilterPostcodeDistricts>(`${this.configuration.basePath}/v4/time-filter/postcode-districts`,
            requestTimeFilterPostcodeDistricts,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeFilterPostcodeSectors 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeFilterPostcodeSectors>;
    public timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeFilterPostcodeSectors>>;
    public timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeFilterPostcodeSectors>>;
    public timeFilterPostcodeSectors(requestTimeFilterPostcodeSectors: RequestTimeFilterPostcodeSectors, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeFilterPostcodeSectors === null || requestTimeFilterPostcodeSectors === undefined) {
            throw new Error('Required parameter requestTimeFilterPostcodeSectors was null or undefined when calling timeFilterPostcodeSectors.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeFilterPostcodeSectors>(`${this.configuration.basePath}/v4/time-filter/postcode-sectors`,
            requestTimeFilterPostcodeSectors,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeFilterPostcodes 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeFilterPostcodes>;
    public timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeFilterPostcodes>>;
    public timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeFilterPostcodes>>;
    public timeFilterPostcodes(requestTimeFilterPostcodes: RequestTimeFilterPostcodes, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeFilterPostcodes === null || requestTimeFilterPostcodes === undefined) {
            throw new Error('Required parameter requestTimeFilterPostcodes was null or undefined when calling timeFilterPostcodes.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeFilterPostcodes>(`${this.configuration.basePath}/v4/time-filter/postcodes`,
            requestTimeFilterPostcodes,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * 
     * 
     * @param requestTimeMap 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public timeMap(requestTimeMap: RequestTimeMap, observe?: 'body', reportProgress?: boolean): Observable<ResponseTimeMap>;
    public timeMap(requestTimeMap: RequestTimeMap, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<ResponseTimeMap>>;
    public timeMap(requestTimeMap: RequestTimeMap, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<ResponseTimeMap>>;
    public timeMap(requestTimeMap: RequestTimeMap, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (requestTimeMap === null || requestTimeMap === undefined) {
            throw new Error('Required parameter requestTimeMap was null or undefined when calling timeMap.');
        }

        let headers = this.defaultHeaders;

        // authentication (ApiKey) required
        if (this.configuration.apiKeys["X-Api-Key"]) {
            headers = headers.set('X-Api-Key', this.configuration.apiKeys["X-Api-Key"]);
        }

        // authentication (ApplicationId) required
        if (this.configuration.apiKeys["X-Application-Id"]) {
            headers = headers.set('X-Application-Id', this.configuration.apiKeys["X-Application-Id"]);
        }

        // to determine the Accept header
        let httpHeaderAccepts: string[] = [
            'application/json',
            'application/vnd.wkt+json',
            'application/vnd.wkt-no-holes+json',
            'application/vnd.bounding-boxes+json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<ResponseTimeMap>(`${this.configuration.basePath}/v4/time-map`,
            requestTimeMap,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}