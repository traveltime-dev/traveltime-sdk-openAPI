using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeDistrictsDepartureSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodeDistrictsDepartureSearch:  IEquatable<RequestTimeFilterPostcodeDistrictsDepartureSearch>
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
        public List<RequestTimeFilterPostcodeDistrictsProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodeDistrictsDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeDistrictsDepartureSearch()
        {
        }

        private RequestTimeFilterPostcodeDistrictsDepartureSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? DepartureTime, double? ReachablePostcodesThreshold, List<RequestTimeFilterPostcodeDistrictsProperty> Properties, RequestRangeFull Range)
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
        /// Returns builder of RequestTimeFilterPostcodeDistrictsDepartureSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder</returns>
        public static RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder</returns>
        public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder With()
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

        public bool Equals(RequestTimeFilterPostcodeDistrictsDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeDistrictsDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistrictsDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistrictsDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeDistrictsDepartureSearch left, RequestTimeFilterPostcodeDistrictsDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeDistrictsDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistrictsDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistrictsDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeDistrictsDepartureSearch left, RequestTimeFilterPostcodeDistrictsDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeDistrictsDepartureSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _DepartureTime;
            private double? _ReachablePostcodesThreshold;
            private List<RequestTimeFilterPostcodeDistrictsProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.ReachablePostcodesThreshold property.
            /// </summary>
            /// <param name="value">ReachablePostcodesThreshold</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder ReachablePostcodesThreshold(double? value)
            {
                _ReachablePostcodesThreshold = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder Properties(List<RequestTimeFilterPostcodeDistrictsProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistrictsDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodeDistrictsDepartureSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeDistrictsDepartureSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeDistrictsDepartureSearch</returns>
            public RequestTimeFilterPostcodeDistrictsDepartureSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeDistrictsDepartureSearch(
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
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
                if (_ReachablePostcodesThreshold == null)
                {
                    throw new ArgumentException("ReachablePostcodesThreshold is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodeDistrictsDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}