using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeSectors
    /// </summary>
    public sealed class RequestTimeFilterPostcodeSectors:  IEquatable<RequestTimeFilterPostcodeSectors>
    { 
        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestTimeFilterPostcodeSectorsDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestTimeFilterPostcodeSectorsArrivalSearch> ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodeSectors.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeSectors()
        {
        }

        private RequestTimeFilterPostcodeSectors(List<RequestTimeFilterPostcodeSectorsDepartureSearch> DepartureSearches, List<RequestTimeFilterPostcodeSectorsArrivalSearch> ArrivalSearches)
        {
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodeSectors.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsBuilder</returns>
        public static RequestTimeFilterPostcodeSectorsBuilder Builder()
        {
            return new RequestTimeFilterPostcodeSectorsBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeSectorsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeSectorsBuilder</returns>
        public RequestTimeFilterPostcodeSectorsBuilder With()
        {
            return Builder()
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

        public bool Equals(RequestTimeFilterPostcodeSectors other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeSectors.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectors</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectors</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeSectors left, RequestTimeFilterPostcodeSectors right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeSectors.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeSectors</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeSectors</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeSectors left, RequestTimeFilterPostcodeSectors right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeSectors.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeSectorsBuilder
        {
            private List<RequestTimeFilterPostcodeSectorsDepartureSearch> _DepartureSearches;
            private List<RequestTimeFilterPostcodeSectorsArrivalSearch> _ArrivalSearches;

            internal RequestTimeFilterPostcodeSectorsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectors.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestTimeFilterPostcodeSectorsBuilder DepartureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeSectors.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeFilterPostcodeSectorsBuilder ArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeSectors.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeSectors</returns>
            public RequestTimeFilterPostcodeSectors Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeSectors(
                    DepartureSearches: _DepartureSearches,
                    ArrivalSearches: _ArrivalSearches
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}