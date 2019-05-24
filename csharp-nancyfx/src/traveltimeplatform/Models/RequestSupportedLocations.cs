using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestSupportedLocations
    /// </summary>
    public sealed class RequestSupportedLocations:  IEquatable<RequestSupportedLocations>
    { 
        /// <summary>
        /// Locations
        /// </summary>
        public List<RequestLocation> Locations { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestSupportedLocations.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestSupportedLocations()
        {
        }

        private RequestSupportedLocations(List<RequestLocation> Locations)
        {
            
            this.Locations = Locations;
            
        }

        /// <summary>
        /// Returns builder of RequestSupportedLocations.
        /// </summary>
        /// <returns>RequestSupportedLocationsBuilder</returns>
        public static RequestSupportedLocationsBuilder Builder()
        {
            return new RequestSupportedLocationsBuilder();
        }

        /// <summary>
        /// Returns RequestSupportedLocationsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestSupportedLocationsBuilder</returns>
        public RequestSupportedLocationsBuilder With()
        {
            return Builder()
                .Locations(Locations);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestSupportedLocations other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestSupportedLocations.
        /// </summary>
        /// <param name="left">Compared (RequestSupportedLocations</param>
        /// <param name="right">Compared (RequestSupportedLocations</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestSupportedLocations left, RequestSupportedLocations right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestSupportedLocations.
        /// </summary>
        /// <param name="left">Compared (RequestSupportedLocations</param>
        /// <param name="right">Compared (RequestSupportedLocations</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestSupportedLocations left, RequestSupportedLocations right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestSupportedLocations.
        /// </summary>
        public sealed class RequestSupportedLocationsBuilder
        {
            private List<RequestLocation> _Locations;

            internal RequestSupportedLocationsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestSupportedLocations.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public RequestSupportedLocationsBuilder Locations(List<RequestLocation> value)
            {
                _Locations = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestSupportedLocations.
            /// </summary>
            /// <returns>RequestSupportedLocations</returns>
            public RequestSupportedLocations Build()
            {
                Validate();
                return new RequestSupportedLocations(
                    Locations: _Locations
                );
            }

            private void Validate()
            { 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for RequestSupportedLocations and cannot be null");
                } 
            }
        }

        
    }
}