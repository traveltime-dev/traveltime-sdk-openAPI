using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeSectorsDepartureSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodeSectorsDepartureSearch:  IEquatable<RequestTimeFilterPostcodeSectorsDepartureSearch>
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
        /// DepartureTime
        /// </summary>
        public DateTime? DepartureTime { get; private set; }

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
        /// Use RequestTimeFilterPostcodeSectorsDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeSectorsDepartureSearch()
        {
        }

        private RequestTimeFilterPostcodeSectorsDepartureSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? DepartureTime, double? ReachablePostcodesThreshold, List<RequestTimeFilterPostcodeSectorsProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.DepartureTime = DepartureTime;
            
            this.ReachablePostcodesThreshold = ReachablePostcodesThreshold;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodeSectorsDepartureSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsDepartureSearchBuilder</returns>
        public static RequestTimeFilterPostcodeSectorsDepartureSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodeSectorsDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeSectorsDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsDepartureSearchBuilder</returns>
        public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .Transportation(Transportation)
                .TravelTime(TravelTime)
                .DepartureTime(DepartureTime)
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

        public bool Equals(RequestTimeFilterPostcodeSectorsDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeSectorsDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectorsDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectorsDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeSectorsDepartureSearch left, RequestTimeFilterPostcodeSectorsDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeSectorsDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectorsDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectorsDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeSectorsDepartureSearch left, RequestTimeFilterPostcodeSectorsDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeSectorsDepartureSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeSectorsDepartureSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _DepartureTime;
            private double? _ReachablePostcodesThreshold;
            private List<RequestTimeFilterPostcodeSectorsProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodeSectorsDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.ReachablePostcodesThreshold property.
            /// </summary>
            /// <param name="value">ReachablePostcodesThreshold</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder ReachablePostcodesThreshold(double? value)
            {
                _ReachablePostcodesThreshold = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder Properties(List<RequestTimeFilterPostcodeSectorsProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectorsDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodeSectorsDepartureSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeSectorsDepartureSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeSectorsDepartureSearch</returns>
            public RequestTimeFilterPostcodeSectorsDepartureSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeSectorsDepartureSearch(
                    Id: _Id,
                    Transportation: _Transportation,
                    TravelTime: _TravelTime,
                    DepartureTime: _DepartureTime,
                    ReachablePostcodesThreshold: _ReachablePostcodesThreshold,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
                if (_ReachablePostcodesThreshold == null)
                {
                    throw new ArgumentException("ReachablePostcodesThreshold is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}
