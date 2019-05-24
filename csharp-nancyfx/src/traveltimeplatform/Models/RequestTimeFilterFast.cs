using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestTimeFilterFast
    /// </summary>
    public sealed class RequestTimeFilterFast:  IEquatable<RequestTimeFilterFast>
    { 
        /// <summary>
        /// Locations
        /// </summary>
        public List<RequestLocation> Locations { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public RequestTimeFilterFastArrivalSearches ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterFast.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterFast()
        {
        }

        private RequestTimeFilterFast(List<RequestLocation> Locations, RequestTimeFilterFastArrivalSearches ArrivalSearches)
        {
            
            this.Locations = Locations;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterFast.
        /// </summary>
        /// <returns>RequestTimeFilterFastBuilder</returns>
        public static RequestTimeFilterFastBuilder Builder()
        {
            return new RequestTimeFilterFastBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterFastBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterFastBuilder</returns>
        public RequestTimeFilterFastBuilder With()
        {
            return Builder()
                .Locations(Locations)
                .ArrivalSearches(ArrivalSearches);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTimeFilterFast other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterFast.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFast</param>
        /// <param name="right">Compared (RequestTimeFilterFast</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterFast left, RequestTimeFilterFast right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterFast.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFast</param>
        /// <param name="right">Compared (RequestTimeFilterFast</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterFast left, RequestTimeFilterFast right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterFast.
        /// </summary>
        public sealed class RequestTimeFilterFastBuilder
        {
            private List<RequestLocation> _Locations;
            private RequestTimeFilterFastArrivalSearches _ArrivalSearches;

            internal RequestTimeFilterFastBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFast.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public RequestTimeFilterFastBuilder Locations(List<RequestLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFast.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeFilterFastBuilder ArrivalSearches(RequestTimeFilterFastArrivalSearches value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterFast.
            /// </summary>
            /// <returns>RequestTimeFilterFast</returns>
            public RequestTimeFilterFast Build()
            {
                Validate();
                return new RequestTimeFilterFast(
                    Locations: _Locations,
                    ArrivalSearches: _ArrivalSearches
                );
            }

            private void Validate()
            { 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for RequestTimeFilterFast and cannot be null");
                } 
                if (_ArrivalSearches == null)
                {
                    throw new ArgumentException("ArrivalSearches is a required property for RequestTimeFilterFast and cannot be null");
                } 
            }
        }

        
    }
}