using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodesDepartureSearch
    /// </summary>
    public sealed class RequestTimeFilterPostcodesDepartureSearch:  IEquatable<RequestTimeFilterPostcodesDepartureSearch>
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
        /// Properties
        /// </summary>
        public List<RequestTimeFilterPostcodesProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodesDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodesDepartureSearch()
        {
        }

        private RequestTimeFilterPostcodesDepartureSearch(string Id, RequestTransportation Transportation, int? TravelTime, DateTime? DepartureTime, List<RequestTimeFilterPostcodesProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.DepartureTime = DepartureTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodesDepartureSearch.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesDepartureSearchBuilder</returns>
        public static RequestTimeFilterPostcodesDepartureSearchBuilder Builder()
        {
            return new RequestTimeFilterPostcodesDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodesDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesDepartureSearchBuilder</returns>
        public RequestTimeFilterPostcodesDepartureSearchBuilder With()
        {
            return Builder()
                .Id(Id)
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

        public bool Equals(RequestTimeFilterPostcodesDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodesDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodesDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodesDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodesDepartureSearch left, RequestTimeFilterPostcodesDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodesDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodesDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodesDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodesDepartureSearch left, RequestTimeFilterPostcodesDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodesDepartureSearch.
        /// </summary>
        public sealed class RequestTimeFilterPostcodesDepartureSearchBuilder
        {
            private string _Id;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _DepartureTime;
            private List<RequestTimeFilterPostcodesProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestTimeFilterPostcodesDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder Properties(List<RequestTimeFilterPostcodesProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodesDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeFilterPostcodesDepartureSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodesDepartureSearch.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodesDepartureSearch</returns>
            public RequestTimeFilterPostcodesDepartureSearch Build()
            {
                Validate();
                return new RequestTimeFilterPostcodesDepartureSearch(
                    Id: _Id,
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
                    throw new ArgumentException("Id is a required property for RequestTimeFilterPostcodesDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterPostcodesDepartureSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterPostcodesDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestTimeFilterPostcodesDepartureSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterPostcodesDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}
