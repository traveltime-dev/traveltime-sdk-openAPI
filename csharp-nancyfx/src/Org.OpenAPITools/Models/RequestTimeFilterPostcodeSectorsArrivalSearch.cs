using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeSectorsArrivalSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodeSectorsArrivalSearch:  IEquatable<RequestTimeFilterPostcodeSectorsArrivalSearch>
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
        public List<RequestTimeFilterPostcodeSectorsProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodeSectorsArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeSectorsArrivalSearch()
        {
        }

        private RequestTimeFilterPostcodeSectorsArrivalSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? ArrivalTime, double? ReachablePostcodesThreshold, List<RequestTimeFilterPostcodeSectorsProperty> Properties, RequestRangeFull Range)
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
        /// Returns builder of RequestTimeFilterPostcodeSectorsArrivalSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsArrivalSearchBuilder</returns>
        public static RequestTimeFilterPostcodeSectorsArrivalSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodeSectorsArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeSectorsArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsArrivalSearchBuilder</returns>
        public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder With()
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

        public bool Equals(RequestTimeFilterPostcodeSectorsArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeSectorsArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectorsArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectorsArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeSectorsArrivalSearch left, RequestTimeFilterPostcodeSectorsArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeSectorsArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectorsArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectorsArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeSectorsArrivalSearch left, RequestTimeFilterPostcodeSectorsArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeSectorsArrivalSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeSectorsArrivalSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _ArrivalTime;
            private double? _ReachablePostcodesThreshold;
            private List<RequestTimeFilterPostcodeSectorsProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodeSectorsArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.ReachablePostcodesThreshold property.
            /// </summary>
            /// <param name="value">ReachablePostcodesThreshold</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder ReachablePostcodesThreshold(double? value)
            {
                _ReachablePostcodesThreshold = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder Properties(List<RequestTimeFilterPostcodeSectorsProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodeSectorsArrivalSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeSectorsArrivalSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeSectorsArrivalSearch</returns>
            public RequestTimeFilterPostcodeSectorsArrivalSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeSectorsArrivalSearch(
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
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
                if (_ReachablePostcodesThreshold == null)
                {
                    throw new ArgumentException("ReachablePostcodesThreshold is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodeSectorsArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}