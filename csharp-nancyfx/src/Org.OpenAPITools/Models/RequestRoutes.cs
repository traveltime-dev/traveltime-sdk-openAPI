using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestRoutes
    /// </summary>
    public sealed class RequestRoutes:  IEquatable<RequestRoutes>
    { 
        /// <summary>
        /// Locations
        /// </summary>
        public List<RequestLocation> Locations { get; private set; }

        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestRoutesDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestRoutesArrivalSearch> ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestRoutes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestRoutes()
        {
        }

        private RequestRoutes(List<RequestLocation> Locations, List<RequestRoutesDepartureSearch> DepartureSearches, List<RequestRoutesArrivalSearch> ArrivalSearches)
        {
            
            this.Locations = Locations;
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestRoutes.
        /// </summary>
        /// <returns>RequestRoutesBuilder</returns>
        public static RequestRoutesBuilder Builder()
        {
            return new RequestRoutesBuilder();
        }

        /// <summary>
        /// Returns RequestRoutesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestRoutesBuilder</returns>
        public RequestRoutesBuilder With()
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

        public bool Equals(RequestRoutes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestRoutes.
        /// </summary>
        /// <param name="left">Compared (RequestRoutes</param>
        /// <param name="right">Compared (RequestRoutes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestRoutes left, RequestRoutes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestRoutes.
        /// </summary>
        /// <param name="left">Compared (RequestRoutes</param>
        /// <param name="right">Compared (RequestRoutes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestRoutes left, RequestRoutes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestRoutes.
        /// </summary>
        public sealed class RequestRoutesBuilder
        {
            private List<RequestLocation> _Locations;
            private List<RequestRoutesDepartureSearch> _DepartureSearches;
            private List<RequestRoutesArrivalSearch> _ArrivalSearches;

            internal RequestRoutesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestRoutes.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public RequestRoutesBuilder Locations(List<RequestLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutes.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestRoutesBuilder DepartureSearches(List<RequestRoutesDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutes.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestRoutesBuilder ArrivalSearches(List<RequestRoutesArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestRoutes.
            /// </summary>
            /// <returns>RequestRoutes</returns>
            public RequestRoutes Build()
            {
                Validate();
                return new RequestRoutes(
                    Locations: _Locations,
                    DepartureSearches: _DepartureSearches,
                    ArrivalSearches: _ArrivalSearches
                );
            }

            private void Validate()
            { 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for RequestRoutes and cannot be null");
                } 
            }
        }

        
    }
}