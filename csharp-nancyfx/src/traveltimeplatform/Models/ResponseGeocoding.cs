using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseGeocoding
    /// </summary>
    public sealed class ResponseGeocoding:  IEquatable<ResponseGeocoding>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public string Type { get; private set; }

        /// <summary>
        /// Features
        /// </summary>
        public List<ResponseGeocodingGeoJsonFeature> Features { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseGeocoding.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseGeocoding()
        {
        }

        private ResponseGeocoding(string Type, List<ResponseGeocodingGeoJsonFeature> Features)
        {
            
            this.Type = Type;
            
            this.Features = Features;
            
        }

        /// <summary>
        /// Returns builder of ResponseGeocoding.
        /// </summary>
        /// <returns>ResponseGeocodingBuilder</returns>
        public static ResponseGeocodingBuilder Builder()
        {
            return new ResponseGeocodingBuilder();
        }

        /// <summary>
        /// Returns ResponseGeocodingBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseGeocodingBuilder</returns>
        public ResponseGeocodingBuilder With()
        {
            return Builder()
                .Type(Type)
                .Features(Features);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseGeocoding other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseGeocoding.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocoding</param>
        /// <param name="right">Compared (ResponseGeocoding</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseGeocoding left, ResponseGeocoding right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseGeocoding.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocoding</param>
        /// <param name="right">Compared (ResponseGeocoding</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseGeocoding left, ResponseGeocoding right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseGeocoding.
        /// </summary>
        public sealed class ResponseGeocodingBuilder
        {
            private string _Type;
            private List<ResponseGeocodingGeoJsonFeature> _Features;

            internal ResponseGeocodingBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseGeocoding.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public ResponseGeocodingBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocoding.Features property.
            /// </summary>
            /// <param name="value">Features</param>
            public ResponseGeocodingBuilder Features(List<ResponseGeocodingGeoJsonFeature> value)
            {
                _Features = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseGeocoding.
            /// </summary>
            /// <returns>ResponseGeocoding</returns>
            public ResponseGeocoding Build()
            {
                Validate();
                return new ResponseGeocoding(
                    Type: _Type,
                    Features: _Features
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for ResponseGeocoding and cannot be null");
                } 
                if (_Features == null)
                {
                    throw new ArgumentException("Features is a required property for ResponseGeocoding and cannot be null");
                } 
            }
        }

        
    }
}