using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodesArrivalSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodesArrivalSearch:  IEquatable<RequestTimeFilterPostcodesArrivalSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

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
        public List<RequestTimeFilterPostcodesProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodesArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodesArrivalSearch()
        {
        }

        private RequestTimeFilterPostcodesArrivalSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? ArrivalTime, List<RequestTimeFilterPostcodesProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTime = ArrivalTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodesArrivalSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesArrivalSearchBuilder</returns>
        public static RequestTimeFilterPostcodesArrivalSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodesArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodesArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesArrivalSearchBuilder</returns>
        public RequestTimeFilterPostcodesArrivalSearchBuilder With()
        {
            return Builder()
                .Id(Id)
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

        public bool Equals(RequestTimeFilterPostcodesArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodesArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodesArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodesArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodesArrivalSearch left, RequestTimeFilterPostcodesArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodesArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodesArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodesArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodesArrivalSearch left, RequestTimeFilterPostcodesArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodesArrivalSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodesArrivalSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _ArrivalTime;
            private List<RequestTimeFilterPostcodesProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodesArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder Properties(List<RequestTimeFilterPostcodesProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodesArrivalSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodesArrivalSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodesArrivalSearch</returns>
            public RequestTimeFilterPostcodesArrivalSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodesArrivalSearch(
                    Id: _Id,
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
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodesArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodesArrivalSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodesArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestTimeFilterPostcodesArrivalSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodesArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}