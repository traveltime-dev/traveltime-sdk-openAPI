using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseTimeFilterFastLocation
    /// </summary>
    public sealed class ResponseTimeFilterFastLocation:  IEquatable<ResponseTimeFilterFastLocation>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<ResponseTimeFilterFastProperties> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterFastLocation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterFastLocation()
        {
        }

        private ResponseTimeFilterFastLocation(string Id, List<ResponseTimeFilterFastProperties> Properties)
        {
            
            this.Id = Id;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterFastLocation.
        /// </summary>
        /// <returns>ResponseTimeFilterFastLocationBuilder</returns>
        public static ResponseTimeFilterFastLocationBuilder Builder()
        {
            return new ResponseTimeFilterFastLocationBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterFastLocationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterFastLocationBuilder</returns>
        public ResponseTimeFilterFastLocationBuilder With()
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

        public bool Equals(ResponseTimeFilterFastLocation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterFastLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastLocation</param>
        /// <param name="right">Compared (ResponseTimeFilterFastLocation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterFastLocation left, ResponseTimeFilterFastLocation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterFastLocation.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastLocation</param>
        /// <param name="right">Compared (ResponseTimeFilterFastLocation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterFastLocation left, ResponseTimeFilterFastLocation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterFastLocation.
        /// </summary>
        public sealed class ResponseTimeFilterFastLocationBuilder
        {
            private string _Id;
            private List<ResponseTimeFilterFastProperties> _Properties;

            internal ResponseTimeFilterFastLocationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastLocation.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public ResponseTimeFilterFastLocationBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastLocation.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeFilterFastLocationBuilder Properties(List<ResponseTimeFilterFastProperties> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterFastLocation.
            /// </summary>
            /// <returns>ResponseTimeFilterFastLocation</returns>
            public ResponseTimeFilterFastLocation Build()
            {
                Validate();
                return new ResponseTimeFilterFastLocation(
                    Id: _Id,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for ResponseTimeFilterFastLocation and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeFilterFastLocation and cannot be null");
                } 
            }
        }

        
    }
}