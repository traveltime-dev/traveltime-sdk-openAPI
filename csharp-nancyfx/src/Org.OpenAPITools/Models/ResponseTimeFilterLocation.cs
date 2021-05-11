using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterLocation
    /// </summary>
    public sealed class ResponseTimeFilterLocation:  IEquatable<ResponseTimeFilterLocation>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<ResponseTimeFilterProperties> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterLocation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterLocation()
        {
        }

        private ResponseTimeFilterLocation(string Id, List<ResponseTimeFilterProperties> Properties)
        {
            
            this.Id = Id;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterLocation.
        /// </summary>
        /// <returns>ResponseTimeFilterLocationBuilder</returns>
        public static ResponseTimeFilterLocationBuilder Builder()
        {
            return new ResponseTimeFilterLocationBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterLocationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterLocationBuilder</returns>
        public ResponseTimeFilterLocationBuilder With()
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

        public bool Equals(ResponseTimeFilterLocation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterLocation</param>
        /// <param name="right">Compared (ResponseTimeFilterLocation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterLocation left, ResponseTimeFilterLocation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterLocation</param>
        /// <param name="right">Compared (ResponseTimeFilterLocation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterLocation left, ResponseTimeFilterLocation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterLocation.
        /// </summary>
        public sealed class ResponseTimeFilterLocationBuilder
        {
            private string _Id;
            private List<ResponseTimeFilterProperties> _Properties;

            internal ResponseTimeFilterLocationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterLocation.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public ResponseTimeFilterLocationBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterLocation.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeFilterLocationBuilder Properties(List<ResponseTimeFilterProperties> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterLocation.
            /// </summary>
            /// <returns>ResponseTimeFilterLocation</returns>
            public ResponseTimeFilterLocation Build()
            {
                Validate();
                return new ResponseTimeFilterLocation(
                    Id: _Id,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for ResponseTimeFilterLocation and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeFilterLocation and cannot be null");
                } 
            }
        }

        
    }
}
