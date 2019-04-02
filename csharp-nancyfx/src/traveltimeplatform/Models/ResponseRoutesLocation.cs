using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseRoutesLocation
    /// </summary>
    public sealed class ResponseRoutesLocation:  IEquatable<ResponseRoutesLocation>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<ResponseRoutesProperties> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoutesLocation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoutesLocation()
        {
        }

        private ResponseRoutesLocation(string Id, List<ResponseRoutesProperties> Properties)
        {
            
            this.Id = Id;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoutesLocation.
        /// </summary>
        /// <returns>ResponseRoutesLocationBuilder</returns>
        public static ResponseRoutesLocationBuilder Builder()
        {
            return new ResponseRoutesLocationBuilder();
        }

        /// <summary>
        /// Returns ResponseRoutesLocationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRoutesLocationBuilder</returns>
        public ResponseRoutesLocationBuilder With()
        {
            return Builder()
                .Id(Id)
                .Properties(Properties);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseRoutesLocation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoutesLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesLocation</param>
        /// <param name="right">Compared (ResponseRoutesLocation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoutesLocation left, ResponseRoutesLocation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoutesLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesLocation</param>
        /// <param name="right">Compared (ResponseRoutesLocation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoutesLocation left, ResponseRoutesLocation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoutesLocation.
        /// </summary>
        public sealed class ResponseRoutesLocationBuilder
        {
            private string _Id;
            private List<ResponseRoutesProperties> _Properties;

            internal ResponseRoutesLocationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoutesLocation.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public ResponseRoutesLocationBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesLocation.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseRoutesLocationBuilder Properties(List<ResponseRoutesProperties> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoutesLocation.
            /// </summary>
            /// <returns>ResponseRoutesLocation</returns>
            public ResponseRoutesLocation Build()
            {
                Validate();
                return new ResponseRoutesLocation(
                    Id: _Id,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for ResponseRoutesLocation and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseRoutesLocation and cannot be null");
                } 
            }
        }

        
    }
}