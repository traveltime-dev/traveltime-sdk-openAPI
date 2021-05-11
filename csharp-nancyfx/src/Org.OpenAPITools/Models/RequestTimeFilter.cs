using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilter
    /// </summary>
    public sealed class RequestTimeFilter:  IEquatable<RequestTimeFilter>
    { 
        /// <summary>
        /// Locations
        /// </summary>
        public List<RequestLocation> Locations { get; private set; }

        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestTimeFilterDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestTimeFilterArrivalSearch> ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilter.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilter()
        {
        }

        private RequestTimeFilter(List<RequestLocation> Locations, List<RequestTimeFilterDepartureSearch> DepartureSearches, List<RequestTimeFilterArrivalSearch> ArrivalSearches)
        {
            
            this.Locations = Locations;
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilter.
        /// </summary>
        /// <returns>RequestTimeFilterBuilder</returns>
        public static RequestTimeFilterBuilder Builder()
        {
            return new RequestTimeFilterBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterBuilder</returns>
        public RequestTimeFilterBuilder With()
        {
            return Builder()
                .Locations(Locations)
                .DepartureSearches(DepartureSearches)
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

        public bool Equals(RequestTimeFilter other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilter.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilter</param>
        /// <param name="right">Compared (RequestTimeFilter</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilter left, RequestTimeFilter right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilter.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilter</param>
        /// <param name="right">Compared (RequestTimeFilter</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilter left, RequestTimeFilter right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilter.
        /// </summary>
        public sealed class RequestTimeFilterBuilder
        {
            private List<RequestLocation> _Locations;
            private List<RequestTimeFilterDepartureSearch> _DepartureSearches;
            private List<RequestTimeFilterArrivalSearch> _ArrivalSearches;

            internal RequestTimeFilterBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilter.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public RequestTimeFilterBuilder Locations(List<RequestLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilter.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestTimeFilterBuilder DepartureSearches(List<RequestTimeFilterDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilter.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeFilterBuilder ArrivalSearches(List<RequestTimeFilterArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilter.
            /// </summary>
            /// <returns>RequestTimeFilter</returns>
            public RequestTimeFilter Build()
            {
                Validate();
                return new RequestTimeFilter(
                    Locations: _Locations,
                    DepartureSearches: _DepartureSearches,
                    ArrivalSearches: _ArrivalSearches
                );
            }

            private void Validate()
            { 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for RequestTimeFilter and cannot be null");
                } 
            }
        }

        
    }
}
