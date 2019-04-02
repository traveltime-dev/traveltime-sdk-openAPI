using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeMapArrivalSearch
    /// </summary>
    public sealed class RequestTimeMapArrivalSearch:  IEquatable<RequestTimeMapArrivalSearch>
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
        /// ArrivalTime
        /// </summary>
        public DateTime? ArrivalTime { get; private set; }

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
        /// Use RequestTimeMapArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeMapArrivalSearch()
        {
        }

        private RequestTimeMapArrivalSearch(string Id, Coords Coords, RequestTransportation Transportation, int? TravelTime, DateTime? ArrivalTime, List<RequestTimeMapProperty> Properties, RequestRangeNoMaxResults Range)
        {
            
            this.Id = Id;
            
            this.Coords = Coords;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTime = ArrivalTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeMapArrivalSearch.
        /// </summary>
        /// <returns>RequestTimeMapArrivalSearchBuilder</returns>
        public static RequestTimeMapArrivalSearchBuilder Builder()
        {
            return new RequestTimeMapArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeMapArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeMapArrivalSearchBuilder</returns>
        public RequestTimeMapArrivalSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .Coords(Coords)
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

        public bool Equals(RequestTimeMapArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeMapArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMapArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeMapArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeMapArrivalSearch left, RequestTimeMapArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeMapArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMapArrivalSearch</param>
        /// <param name="right">Compared (RequestTimeMapArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeMapArrivalSearch left, RequestTimeMapArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeMapArrivalSearch.
        /// </summary>
        public sealed class RequestTimeMapArrivalSearchBuilder
        {
            private string _Id;
            private Coords _Coords;
            private RequestTransportation _Transportation;
            private int? _TravelTime;
            private DateTime? _ArrivalTime;
            private List<RequestTimeMapProperty> _Properties;
            private RequestRangeNoMaxResults _Range;

            internal RequestTimeMapArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeMapArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.Coords property.
            /// </summary>
            /// <param name="value">Coords</param>
            public RequestTimeMapArrivalSearchBuilder Coords(Coords value)
            {
                _Coords = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeMapArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeMapArrivalSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestTimeMapArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeMapArrivalSearchBuilder Properties(List<RequestTimeMapProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMapArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestTimeMapArrivalSearchBuilder Range(RequestRangeNoMaxResults value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeMapArrivalSearch.
            /// </summary>
            /// <returns>RequestTimeMapArrivalSearch</returns>
            public RequestTimeMapArrivalSearch Build()
            {
                Validate();
                return new RequestTimeMapArrivalSearch(
                    Id: _Id,
                    Coords: _Coords,
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
                    throw new ArgumentException("Id is a required property for RequestTimeMapArrivalSearch and cannot be null");
                } 
                if (_Coords == null)
                {
                    throw new ArgumentException("Coords is a required property for RequestTimeMapArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeMapArrivalSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeMapArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestTimeMapArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}