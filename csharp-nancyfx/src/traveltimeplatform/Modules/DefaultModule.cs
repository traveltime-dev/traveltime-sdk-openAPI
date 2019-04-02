using System;
using Nancy;
using Nancy.ModelBinding;
using System.Collections.Generic;
using Sharpility.Base;
using traveltimeplatform..Models;
using traveltimeplatform..Utils;
using NodaTime;

namespace traveltimeplatform..Modules
{ 

    /// <summary>
    /// Module processing requests of Default domain.
    /// </summary>
    public sealed class DefaultModule : NancyModule
    {
        /// <summary>
        /// Sets up HTTP methods mappings.
        /// </summary>
        /// <param name="service">Service handling requests</param>
        public DefaultModule(DefaultService service) : base("/")
        { 
            Get["/v4/geocoding/reverse"] = parameters =>
            {
                var focusLat = Parameters.ValueOf<double?>(parameters, Context.Request, "focusLat", ParameterType.Query);
                var focusLng = Parameters.ValueOf<double?>(parameters, Context.Request, "focusLng", ParameterType.Query);
                var withinCountry = Parameters.ValueOf<string>(parameters, Context.Request, "withinCountry", ParameterType.Query);
                Preconditions.IsNotNull(focusLat, "Required parameter: 'focusLat' is missing at 'GeocodingReverseSearch'");
                
                Preconditions.IsNotNull(focusLng, "Required parameter: 'focusLng' is missing at 'GeocodingReverseSearch'");
                
                return service.GeocodingReverseSearch(Context, focusLat, focusLng, withinCountry);
            };

            Get["/v4/geocoding/search"] = parameters =>
            {
                var query = Parameters.ValueOf<string>(parameters, Context.Request, "query", ParameterType.Query);
                var withinCountry = Parameters.ValueOf<string>(parameters, Context.Request, "withinCountry", ParameterType.Query);
                var focusLat = Parameters.ValueOf<double?>(parameters, Context.Request, "focusLat", ParameterType.Query);
                var focusLng = Parameters.ValueOf<double?>(parameters, Context.Request, "focusLng", ParameterType.Query);
                Preconditions.IsNotNull(query, "Required parameter: 'query' is missing at 'GeocodingSearch'");
                
                return service.GeocodingSearch(Context, query, withinCountry, focusLat, focusLng);
            };

            Get["/v4/map-info"] = parameters =>
            {
                
                return service.MapInfo(Context);
            };

            Post["/v4/routes"] = parameters =>
            {
                var requestRoutes = this.Bind<RequestRoutes>();
                Preconditions.IsNotNull(requestRoutes, "Required parameter: 'requestRoutes' is missing at 'Routes'");
                
                return service.Routes(Context, requestRoutes);
            };

            Post["/v4/supported-locations"] = parameters =>
            {
                var requestSupportedLocations = this.Bind<RequestSupportedLocations>();
                Preconditions.IsNotNull(requestSupportedLocations, "Required parameter: 'requestSupportedLocations' is missing at 'SupportedLocations'");
                
                return service.SupportedLocations(Context, requestSupportedLocations);
            };

            Post["/v4/time-filter"] = parameters =>
            {
                var requestTimeFilter = this.Bind<RequestTimeFilter>();
                Preconditions.IsNotNull(requestTimeFilter, "Required parameter: 'requestTimeFilter' is missing at 'TimeFilter'");
                
                return service.TimeFilter(Context, requestTimeFilter);
            };

            Post["/v4/time-filter/fast"] = parameters =>
            {
                var requestTimeFilterFast = this.Bind<RequestTimeFilterFast>();
                Preconditions.IsNotNull(requestTimeFilterFast, "Required parameter: 'requestTimeFilterFast' is missing at 'TimeFilterFast'");
                
                return service.TimeFilterFast(Context, requestTimeFilterFast);
            };

            Post["/v4/time-filter/postcode-districts"] = parameters =>
            {
                var requestTimeFilterPostcodeDistricts = this.Bind<RequestTimeFilterPostcodeDistricts>();
                Preconditions.IsNotNull(requestTimeFilterPostcodeDistricts, "Required parameter: 'requestTimeFilterPostcodeDistricts' is missing at 'TimeFilterPostcodeDistricts'");
                
                return service.TimeFilterPostcodeDistricts(Context, requestTimeFilterPostcodeDistricts);
            };

            Post["/v4/time-filter/postcode-sectors"] = parameters =>
            {
                var requestTimeFilterPostcodeSectors = this.Bind<RequestTimeFilterPostcodeSectors>();
                Preconditions.IsNotNull(requestTimeFilterPostcodeSectors, "Required parameter: 'requestTimeFilterPostcodeSectors' is missing at 'TimeFilterPostcodeSectors'");
                
                return service.TimeFilterPostcodeSectors(Context, requestTimeFilterPostcodeSectors);
            };

            Post["/v4/time-filter/postcodes"] = parameters =>
            {
                var requestTimeFilterPostcodes = this.Bind<RequestTimeFilterPostcodes>();
                Preconditions.IsNotNull(requestTimeFilterPostcodes, "Required parameter: 'requestTimeFilterPostcodes' is missing at 'TimeFilterPostcodes'");
                
                return service.TimeFilterPostcodes(Context, requestTimeFilterPostcodes);
            };

            Post["/v4/time-map"] = parameters =>
            {
                var requestTimeMap = this.Bind<RequestTimeMap>();
                Preconditions.IsNotNull(requestTimeMap, "Required parameter: 'requestTimeMap' is missing at 'TimeMap'");
                
                return service.TimeMap(Context, requestTimeMap);
            };
        }
    }

    /// <summary>
    /// Service handling Default requests.
    /// </summary>
    public interface DefaultService
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="focusLat"></param>
        /// <param name="focusLng"></param>
        /// <param name="withinCountry"> (optional)</param>
        /// <returns>ResponseGeocoding</returns>
        ResponseGeocoding GeocodingReverseSearch(NancyContext context, double? focusLat, double? focusLng, string withinCountry);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="query"></param>
        /// <param name="withinCountry"> (optional)</param>
        /// <param name="focusLat"> (optional)</param>
        /// <param name="focusLng"> (optional)</param>
        /// <returns>ResponseGeocoding</returns>
        ResponseGeocoding GeocodingSearch(NancyContext context, string query, string withinCountry, double? focusLat, double? focusLng);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <returns>ResponseMapInfo</returns>
        ResponseMapInfo MapInfo(NancyContext context);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestRoutes"></param>
        /// <returns>ResponseRoutes</returns>
        ResponseRoutes Routes(NancyContext context, RequestRoutes requestRoutes);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestSupportedLocations"></param>
        /// <returns>ResponseSupportedLocations</returns>
        ResponseSupportedLocations SupportedLocations(NancyContext context, RequestSupportedLocations requestSupportedLocations);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeFilter"></param>
        /// <returns>ResponseTimeFilter</returns>
        ResponseTimeFilter TimeFilter(NancyContext context, RequestTimeFilter requestTimeFilter);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeFilterFast"></param>
        /// <returns>ResponseTimeFilterFast</returns>
        ResponseTimeFilterFast TimeFilterFast(NancyContext context, RequestTimeFilterFast requestTimeFilterFast);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeFilterPostcodeDistricts"></param>
        /// <returns>ResponseTimeFilterPostcodeDistricts</returns>
        ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts(NancyContext context, RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeFilterPostcodeSectors"></param>
        /// <returns>ResponseTimeFilterPostcodeSectors</returns>
        ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors(NancyContext context, RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeFilterPostcodes"></param>
        /// <returns>ResponseTimeFilterPostcodes</returns>
        ResponseTimeFilterPostcodes TimeFilterPostcodes(NancyContext context, RequestTimeFilterPostcodes requestTimeFilterPostcodes);

        /// <summary>
        /// 
        /// </summary>
        /// <param name="context">Context of request</param>
        /// <param name="requestTimeMap"></param>
        /// <returns>ResponseTimeMap</returns>
        ResponseTimeMap TimeMap(NancyContext context, RequestTimeMap requestTimeMap);
    }

    /// <summary>
    /// Abstraction of DefaultService.
    /// </summary>
    public abstract class AbstractDefaultService: DefaultService
    {
        public virtual ResponseGeocoding GeocodingReverseSearch(NancyContext context, double? focusLat, double? focusLng, string withinCountry)
        {
            return GeocodingReverseSearch(focusLat, focusLng, withinCountry);
        }

        public virtual ResponseGeocoding GeocodingSearch(NancyContext context, string query, string withinCountry, double? focusLat, double? focusLng)
        {
            return GeocodingSearch(query, withinCountry, focusLat, focusLng);
        }

        public virtual ResponseMapInfo MapInfo(NancyContext context)
        {
            return MapInfo();
        }

        public virtual ResponseRoutes Routes(NancyContext context, RequestRoutes requestRoutes)
        {
            return Routes(requestRoutes);
        }

        public virtual ResponseSupportedLocations SupportedLocations(NancyContext context, RequestSupportedLocations requestSupportedLocations)
        {
            return SupportedLocations(requestSupportedLocations);
        }

        public virtual ResponseTimeFilter TimeFilter(NancyContext context, RequestTimeFilter requestTimeFilter)
        {
            return TimeFilter(requestTimeFilter);
        }

        public virtual ResponseTimeFilterFast TimeFilterFast(NancyContext context, RequestTimeFilterFast requestTimeFilterFast)
        {
            return TimeFilterFast(requestTimeFilterFast);
        }

        public virtual ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts(NancyContext context, RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts)
        {
            return TimeFilterPostcodeDistricts(requestTimeFilterPostcodeDistricts);
        }

        public virtual ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors(NancyContext context, RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors)
        {
            return TimeFilterPostcodeSectors(requestTimeFilterPostcodeSectors);
        }

        public virtual ResponseTimeFilterPostcodes TimeFilterPostcodes(NancyContext context, RequestTimeFilterPostcodes requestTimeFilterPostcodes)
        {
            return TimeFilterPostcodes(requestTimeFilterPostcodes);
        }

        public virtual ResponseTimeMap TimeMap(NancyContext context, RequestTimeMap requestTimeMap)
        {
            return TimeMap(requestTimeMap);
        }

        protected abstract ResponseGeocoding GeocodingReverseSearch(double? focusLat, double? focusLng, string withinCountry);

        protected abstract ResponseGeocoding GeocodingSearch(string query, string withinCountry, double? focusLat, double? focusLng);

        protected abstract ResponseMapInfo MapInfo();

        protected abstract ResponseRoutes Routes(RequestRoutes requestRoutes);

        protected abstract ResponseSupportedLocations SupportedLocations(RequestSupportedLocations requestSupportedLocations);

        protected abstract ResponseTimeFilter TimeFilter(RequestTimeFilter requestTimeFilter);

        protected abstract ResponseTimeFilterFast TimeFilterFast(RequestTimeFilterFast requestTimeFilterFast);

        protected abstract ResponseTimeFilterPostcodeDistricts TimeFilterPostcodeDistricts(RequestTimeFilterPostcodeDistricts requestTimeFilterPostcodeDistricts);

        protected abstract ResponseTimeFilterPostcodeSectors TimeFilterPostcodeSectors(RequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors);

        protected abstract ResponseTimeFilterPostcodes TimeFilterPostcodes(RequestTimeFilterPostcodes requestTimeFilterPostcodes);

        protected abstract ResponseTimeMap TimeMap(RequestTimeMap requestTimeMap);
    }

}
