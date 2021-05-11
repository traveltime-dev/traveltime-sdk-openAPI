using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterDepartureSearch
    /// </summary>
    public sealed class RequestTimeFilterDepartureSearch:  IEquatable<RequestTimeFilterDepartureSearch>
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
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// DepartureTime
        /// </summary>
        public DateTime? DepartureTime { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestTimeFilterProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterDepartureSearch()
        {
        }

        private RequestTimeFilterDepartureSearch(string Id, string DepartureLocationId, List<string> ArrivalLocationIds, RequestTransportation Transportation, int? TravelTime, DateTime? DepartureTime, List<RequestTimeFilterProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.DepartureLocationId = DepartureLocationId;
            
            this.ArrivalLocationIds = ArrivalLocationIds;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.DepartureTime = DepartureTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterDepartureSearch.
        /// </summary>
        /// <returns>RequestTimeFilterDepartureSearchBuilder</returns>
        public static RequestTimeFilterDepartureSearchBuilder Builder()
        {
            return new RequestTimeFilterDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterDepartureSearchBuilder</returns>
        public RequestTimeFilterDepartureSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .DepartureLocationId(DepartureLocationId)
                .ArrivalLocationIds(ArrivalLocationIds)
                .Transportation(Transportation)
                .TravelTime(TravelTime)
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

        public bool Equals(RequestTimeFilterDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterDepartureSearch left, RequestTimeFilterDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterDepartureSearch left, RequestTimeFilterDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterDepartureSearch.
        /// </summary>
        public sealed class RequestTimeFilterDepartureSearchBuilder
        {
            private string _Id;
            private string _DepartureLocationId;
            private List<string> _ArrivalLocationIds;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _DepartureTime;
            private List<RequestTimeFilterProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.DepartureLocationId property.
            /// </summary>
            /// <param name="value">DepartureLocationId</param>
            public RequestTimeFilterDepartureSearchBuilder DepartureLocationId(string value)
            {
                _DepartureLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.ArrivalLocationIds property.
            /// </summary>
            /// <param name="value">ArrivalLocationIds</param>
            public RequestTimeFilterDepartureSearchBuilder ArrivalLocationIds(List<string> value)
            {
                _ArrivalLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterDepartureSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestTimeFilterDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterDepartureSearchBuilder Properties(List<RequestTimeFilterProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterDepartureSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterDepartureSearch.
            /// </summary>
            /// <returns>RequestTimeFilterDepartureSearch</returns>
            public RequestTimeFilterDepartureSearch Build()
            {
                Validate();
                return new RequestTimeFilterDepartureSearch(
                    Id: _Id,
                    DepartureLocationId: _DepartureLocationId,
                    ArrivalLocationIds: _ArrivalLocationIds,
                    Transportation: _Transportation,
                    TravelTime: _TravelTime,
                    DepartureTime: _DepartureTime,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_DepartureLocationId == null)
                {
                    throw new ArgumentException("DepartureLocationId is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_ArrivalLocationIds == null)
                {
                    throw new ArgumentException("ArrivalLocationIds is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}
