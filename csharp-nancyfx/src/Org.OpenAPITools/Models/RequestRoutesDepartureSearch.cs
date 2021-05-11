using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestRoutesDepartureSearch
    /// </summary>
    public sealed class RequestRoutesDepartureSearch:  IEquatable<RequestRoutesDepartureSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// DepartureLocationId
        /// </summary>
        public string DepartureLocationId { get; private set; }

        /// <summary>
        /// ArrivalLocationIds
        /// </summary>
        public List<string> ArrivalLocationIds { get; private set; }

        /// <summary>
        /// Transportation
        /// </summary>
        public RequestTransportation Transportation { get; private set; }

        /// <summary>
        /// DepartureTime
        /// </summary>
        public DateTime? DepartureTime { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestRoutesProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestRoutesDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestRoutesDepartureSearch()
        {
        }

        private RequestRoutesDepartureSearch(string Id, string DepartureLocationId, List<string> ArrivalLocationIds, RequestTransportation Transportation, DateTime? DepartureTime, List<RequestRoutesProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.DepartureLocationId = DepartureLocationId;
            
            this.ArrivalLocationIds = ArrivalLocationIds;
            
            this.Transportation = Transportation;
            
            this.DepartureTime = DepartureTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestRoutesDepartureSearch.
        /// </summary>
        /// <returns>RequestRoutesDepartureSearchBuilder</returns>
        public static RequestRoutesDepartureSearchBuilder Builder()
        {
            return new RequestRoutesDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestRoutesDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestRoutesDepartureSearchBuilder</returns>
        public RequestRoutesDepartureSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .DepartureLocationId(DepartureLocationId)
                .ArrivalLocationIds(ArrivalLocationIds)
                .Transportation(Transportation)
                .DepartureTime(DepartureTime)
                .Properties(Properties)
                .Range(Range);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestRoutesDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestRoutesDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestRoutesDepartureSearch</param>
        /// <param name="right">Compared (RequestRoutesDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestRoutesDepartureSearch left, RequestRoutesDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestRoutesDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestRoutesDepartureSearch</param>
        /// <param name="right">Compared (RequestRoutesDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestRoutesDepartureSearch left, RequestRoutesDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestRoutesDepartureSearch.
        /// </summary>
        public sealed class RequestRoutesDepartureSearchBuilder
        {
            private string _Id;
            private string _DepartureLocationId;
            private List<string> _ArrivalLocationIds;
            private RequestTransportation _Transportation;
            private DateTime? _DepartureTime;
            private List<RequestRoutesProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestRoutesDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestRoutesDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.DepartureLocationId property.
            /// </summary>
            /// <param name="value">DepartureLocationId</param>
            public RequestRoutesDepartureSearchBuilder DepartureLocationId(string value)
            {
                _DepartureLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.ArrivalLocationIds property.
            /// </summary>
            /// <param name="value">ArrivalLocationIds</param>
            public RequestRoutesDepartureSearchBuilder ArrivalLocationIds(List<string> value)
            {
                _ArrivalLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestRoutesDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestRoutesDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestRoutesDepartureSearchBuilder Properties(List<RequestRoutesProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestRoutesDepartureSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestRoutesDepartureSearch.
            /// </summary>
            /// <returns>RequestRoutesDepartureSearch</returns>
            public RequestRoutesDepartureSearch Build()
            {
                Validate();
                return new RequestRoutesDepartureSearch(
                    Id: _Id,
                    DepartureLocationId: _DepartureLocationId,
                    ArrivalLocationIds: _ArrivalLocationIds,
                    Transportation: _Transportation,
                    DepartureTime: _DepartureTime,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
                if (_DepartureLocationId == null)
                {
                    throw new ArgumentException("DepartureLocationId is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
                if (_ArrivalLocationIds == null)
                {
                    throw new ArgumentException("ArrivalLocationIds is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestRoutesDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}
