using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseSupportedLocation
    /// </summary>
    public sealed class ResponseSupportedLocation:  IEquatable<ResponseSupportedLocation>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// MapName
        /// </summary>
        public string MapName { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseSupportedLocation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseSupportedLocation()
        {
        }

        private ResponseSupportedLocation(string Id, string MapName)
        {
            
            this.Id = Id;
            
            this.MapName = MapName;
            
        }

        /// <summary>
        /// Returns builder of ResponseSupportedLocation.
        /// </summary>
        /// <returns>ResponseSupportedLocationBuilder</returns>
        public static ResponseSupportedLocationBuilder Builder()
        {
            return new ResponseSupportedLocationBuilder();
        }

        /// <summary>
        /// Returns ResponseSupportedLocationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseSupportedLocationBuilder</returns>
        public ResponseSupportedLocationBuilder With()
        {
            return Builder()
                .Id(Id)
                .MapName(MapName);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseSupportedLocation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseSupportedLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseSupportedLocation</param>
        /// <param name="right">Compared (ResponseSupportedLocation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseSupportedLocation left, ResponseSupportedLocation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseSupportedLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseSupportedLocation</param>
        /// <param name="right">Compared (ResponseSupportedLocation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseSupportedLocation left, ResponseSupportedLocation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseSupportedLocation.
        /// </summary>
        public sealed class ResponseSupportedLocationBuilder
        {
            private string _Id;
            private string _MapName;

            internal ResponseSupportedLocationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseSupportedLocation.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public ResponseSupportedLocationBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseSupportedLocation.MapName property.
            /// </summary>
            /// <param name="value">MapName</param>
            public ResponseSupportedLocationBuilder MapName(string value)
            {
                _MapName = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseSupportedLocation.
            /// </summary>
            /// <returns>ResponseSupportedLocation</returns>
            public ResponseSupportedLocation Build()
            {
                Validate();
                return new ResponseSupportedLocation(
                    Id: _Id,
                    MapName: _MapName
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for ResponseSupportedLocation and cannot be null");
                } 
                if (_MapName == null)
                {
                    throw new ArgumentException("MapName is a required property for ResponseSupportedLocation and cannot be null");
                } 
            }
        }

        
    }
}
