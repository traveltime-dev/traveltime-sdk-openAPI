using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeDistrictsArrivalSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodeDistrictsArrivalSearch:  IEquatable<RequestTimeFilterPostcodeDistrictsArrivalSearch>
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
        /// ReachablePostcodesThreshold
        /// </summary>
        public double? ReachablePostcodesThreshold { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestTimeFilterPostcodeDistrictsProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodeDistrictsArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeDistrictsArrivalSearch()
        {
        }

        private RequestTimeFilterPostcodeDistrictsArrivalSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? ArrivalTime, double? ReachablePostcodesThreshold, List<RequestTimeFilterPostcodeDistrictsProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTime = ArrivalTime;
            
            this.ReachablePostcodesThreshold = ReachablePostcodesThreshold;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodeDistrictsArrivalSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder</returns>
        public static RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder</returns>
        public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .Transportation(Transportation)
                .TravelTime(TravelTime)
                .ArrivalTime(ArrivalTime)
                .ReachablePostcodesThreshold(ReachablePostcodesThreshold)
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

        public bool Equals(RequestTimeFilterPostcodeDistrictsArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeDistrictsArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistrictsArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistrictsArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeDistrictsArrivalSearch left, RequestTimeFilterPostcodeDistrictsArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeDistrictsArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistrictsArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistrictsArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeDistrictsArrivalSearch left, RequestTimeFilterPostcodeDistrictsArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeDistrictsArrivalSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _ArrivalTime;
            private double? _ReachablePostcodesThreshold;
            private List<RequestTimeFilterPostcodeDistrictsProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.ReachablePostcodesThreshold property.
            /// </summary>
            /// <param name="value">ReachablePostcodesThreshold</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder ReachablePostcodesThreshold(double? value)
            {
                _ReachablePostcodesThreshold = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder Properties(List<RequestTimeFilterPostcodeDistrictsProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodeDistrictsArrivalSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeDistrictsArrivalSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeDistrictsArrivalSearch</returns>
            public RequestTimeFilterPostcodeDistrictsArrivalSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeDistrictsArrivalSearch(
                    Id: _Id,
                    Transportation: _Transportation,
                    TravelTime: _TravelTime,
                    ArrivalTime: _ArrivalTime,
                    ReachablePostcodesThreshold: _ReachablePostcodesThreshold,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
                if (_ReachablePostcodesThreshold == null)
                {
                    throw new ArgumentException("ReachablePostcodesThreshold is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodeDistrictsArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}