using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseSupportedLocations
    /// </summary>
    public sealed class ResponseSupportedLocations:  IEquatable<ResponseSupportedLocations>
    { 
        /// <summary>
        /// Locations
        /// </summary>
        public List<ResponseSupportedLocation> Locations { get; private set; }

        /// <summary>
        /// UnsupportedLocations
        /// </summary>
        public List<string> UnsupportedLocations { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseSupportedLocations.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseSupportedLocations()
        {
        }

        private ResponseSupportedLocations(List<ResponseSupportedLocation> Locations, List<string> UnsupportedLocations)
        {
            
            this.Locations = Locations;
            
            this.UnsupportedLocations = UnsupportedLocations;
            
        }

        /// <summary>
        /// Returns builder of ResponseSupportedLocations.
        /// </summary>
        /// <returns>ResponseSupportedLocationsBuilder</returns>
        public static ResponseSupportedLocationsBuilder Builder()
        {
            return new ResponseSupportedLocationsBuilder();
        }

        /// <summary>
        /// Returns ResponseSupportedLocationsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseSupportedLocationsBuilder</returns>
        public ResponseSupportedLocationsBuilder With()
        {
            return Builder()
                .Locations(Locations)
                .UnsupportedLocations(UnsupportedLocations);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseSupportedLocations other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseSupportedLocations.
        /// </summary>
        /// <param name="left">Compared (ResponseSupportedLocations</param>
        /// <param name="right">Compared (ResponseSupportedLocations</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseSupportedLocations left, ResponseSupportedLocations right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseSupportedLocations.
        /// </summary>
        /// <param name="left">Compared (ResponseSupportedLocations</param>
        /// <param name="right">Compared (ResponseSupportedLocations</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseSupportedLocations left, ResponseSupportedLocations right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseSupportedLocations.
        /// </summary>
        public sealed class ResponseSupportedLocationsBuilder
        {
            private List<ResponseSupportedLocation> _Locations;
            private List<string> _UnsupportedLocations;

            internal ResponseSupportedLocationsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseSupportedLocations.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public ResponseSupportedLocationsBuilder Locations(List<ResponseSupportedLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseSupportedLocations.UnsupportedLocations property.
            /// </summary>
            /// <param name="value">UnsupportedLocations</param>
            public ResponseSupportedLocationsBuilder UnsupportedLocations(List<string> value)
            {
                _UnsupportedLocations = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseSupportedLocations.
            /// </summary>
            /// <returns>ResponseSupportedLocations</returns>
            public ResponseSupportedLocations Build()
            {
                Validate();
                return new ResponseSupportedLocations(
                    Locations: _Locations,
                    UnsupportedLocations: _UnsupportedLocations
                );
            }

            private void Validate()
            { 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for ResponseSupportedLocations and cannot be null");
                } 
                if (_UnsupportedLocations == null)
                {
                    throw new ArgumentException("UnsupportedLocations is a required property for ResponseSupportedLocations and cannot be null");
                } 
            }
        }

        
    }
}