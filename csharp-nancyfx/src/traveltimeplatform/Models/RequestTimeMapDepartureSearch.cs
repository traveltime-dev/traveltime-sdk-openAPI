using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestTimeMapDepartureSearch
    /// </summary>
    public sealed class RequestTimeMapDepartureSearch:  IEquatable<RequestTimeMapDepartureSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Coords
        /// </summary>
        public Coords Coords { get; private set; }

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
        public List<RequestTimeMapProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeNoMaxResults Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeMapDepartureSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeMapDepartureSearch()
        {
        }

        private RequestTimeMapDepartureSearch(string Id, Coords Coords, RequestTransportation Transportation, int? TravelTime, DateTime? DepartureTime, List<RequestTimeMapProperty> Properties, RequestRangeNoMaxResults Range)
        {
            
            this.Id = Id;
            
            this.Coords = Coords;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.DepartureTime = DepartureTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeMapDepartureSearch.
        /// </summary>
        /// <returns>RequestTimeMapDepartureSearchBuilder</returns>
        public static RequestTimeMapDepartureSearchBuilder Builder()
        {
            return new RequestTimeMapDepartureSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeMapDepartureSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeMapDepartureSearchBuilder</returns>
        public RequestTimeMapDepartureSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .Coords(Coords)
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

        public bool Equals(RequestTimeMapDepartureSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeMapDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMapDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeMapDepartureSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeMapDepartureSearch left, RequestTimeMapDepartureSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeMapDepartureSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMapDepartureSearch</param>
        /// <param name="right">Compared (RequestTimeMapDepartureSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeMapDepartureSearch left, RequestTimeMapDepartureSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeMapDepartureSearch.
        /// </summary>
        public sealed class RequestTimeMapDepartureSearchBuilder
        {
            private string _Id;
            private Coords _Coords;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _DepartureTime;
            private List<RequestTimeMapProperty> _Properties;
            private RequestRangeNoMaxResults _Range;

            internal RequestTimeMapDepartureSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeMapDepartureSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.Coords property.
            /// </summary>
            /// <param name="value">Coords</param>
            public RequestTimeMapDepartureSearchBuilder Coords(Coords value)
            {
                _Coords = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeMapDepartureSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeMapDepartureSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public RequestTimeMapDepartureSearchBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeMapDepartureSearchBuilder Properties(List<RequestTimeMapProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapDepartureSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeMapDepartureSearchBuilder Range(RequestRangeNoMaxResults value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeMapDepartureSearch.
            /// </summary>
            /// <returns>RequestTimeMapDepartureSearch</returns>
            public RequestTimeMapDepartureSearch Build()
            {
                Validate();
                return new RequestTimeMapDepartureSearch(
                    Id: _Id,
                    Coords: _Coords,
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
                    throw new ArgumentException("Id is a required property for RequestTimeMapDepartureSearch and cannot be null");
                } 
                if (_Coords == null)
                {
                    throw new ArgumentException("Coords is a required property for RequestTimeMapDepartureSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeMapDepartureSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeMapDepartureSearch and cannot be null");
                } 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for RequestTimeMapDepartureSearch and cannot be null");
                } 
            }
        }

        
    }
}