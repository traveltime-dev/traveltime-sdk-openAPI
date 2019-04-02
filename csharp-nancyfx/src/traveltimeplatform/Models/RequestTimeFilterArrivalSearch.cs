using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterArrivalSearch
    /// </summary>
    public sealed class RequestTimeFilterArrivalSearch:  IEquatable<RequestTimeFilterArrivalSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// DepartureLocationIds
        /// </summary>
        public List<string> DepartureLocationIds { get; private set; }

        /// <summary>
        /// ArrivalLocationId
        /// </summary>
        public string ArrivalLocationId { get; private set; }

        /// <summary>
        /// Transportation
        /// </summary>
        public RequestTransportation Transportation { get; private set; }

        /// <summary>
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// ArrivalTime
        /// </summary>
        public DateTime? ArrivalTime { get; private set; }

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
        /// Use RequestTimeFilterArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterArrivalSearch()
        {
        }

        private RequestTimeFilterArrivalSearch(string Id, List<string> DepartureLocationIds, string ArrivalLocationId, RequestTransportation Transportation, int? TravelTime, DateTime? ArrivalTime, List<RequestTimeFilterProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.DepartureLocationIds = DepartureLocationIds;
            
            this.ArrivalLocationId = ArrivalLocationId;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTime = ArrivalTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterArrivalSearch.
        /// </summary>
        /// <returns>RequestTimeFilterArrivalSearchBuilder</returns>
        public static RequestTimeFilterArrivalSearchBuilder Builder()
        {
            return new RequestTimeFilterArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterArrivalSearchBuilder</returns>
        public RequestTimeFilterArrivalSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .DepartureLocationIds(DepartureLocationIds)
                .ArrivalLocationId(ArrivalLocationId)
                .Transportation(Transportation)
                .TravelTime(TravelTime)
                .ArrivalTime(ArrivalTime)
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

        public bool Equals(RequestTimeFilterArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterArrivalSearch left, RequestTimeFilterArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterArrivalSearch left, RequestTimeFilterArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterArrivalSearch.
        /// </summary>
        public sealed class RequestTimeFilterArrivalSearchBuilder
        {
            private string _Id;
            private List<string> _DepartureLocationIds;
            private string _ArrivalLocationId;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _ArrivalTime;
            private List<RequestTimeFilterProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.DepartureLocationIds property.
            /// </summary>
            /// <param name="value">DepartureLocationIds</param>
            public RequestTimeFilterArrivalSearchBuilder DepartureLocationIds(List<string> value)
            {
                _DepartureLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.ArrivalLocationId property.
            /// </summary>
            /// <param name="value">ArrivalLocationId</param>
            public RequestTimeFilterArrivalSearchBuilder ArrivalLocationId(string value)
            {
                _ArrivalLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterArrivalSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestTimeFilterArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterArrivalSearchBuilder Properties(List<RequestTimeFilterProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterArrivalSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterArrivalSearch.
            /// </summary>
            /// <returns>RequestTimeFilterArrivalSearch</returns>
            public RequestTimeFilterArrivalSearch Build()
            {
                Validate();
                return new RequestTimeFilterArrivalSearch(
                    Id: _Id,
                    DepartureLocationIds: _DepartureLocationIds,
                    ArrivalLocationId: _ArrivalLocationId,
                    Transportation: _Transportation,
                    TravelTime: _TravelTime,
                    ArrivalTime: _ArrivalTime,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_DepartureLocationIds == null)
                {
                    throw new ArgumentException("DepartureLocationIds is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_ArrivalLocationId == null)
                {
                    throw new ArgumentException("ArrivalLocationId is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}