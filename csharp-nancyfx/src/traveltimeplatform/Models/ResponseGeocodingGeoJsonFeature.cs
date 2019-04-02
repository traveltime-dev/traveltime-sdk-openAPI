using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseGeocodingGeoJsonFeature
    /// </summary>
    public sealed class ResponseGeocodingGeoJsonFeature:  IEquatable<ResponseGeocodingGeoJsonFeature>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public string Type { get; private set; }

        /// <summary>
        /// Geometry
        /// </summary>
        public ResponseGeocodingGeometry Geometry { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseGeocodingProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseGeocodingGeoJsonFeature.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseGeocodingGeoJsonFeature()
        {
        }

        private ResponseGeocodingGeoJsonFeature(string Type, ResponseGeocodingGeometry Geometry, ResponseGeocodingProperties Properties)
        {
            
            this.Type = Type;
            
            this.Geometry = Geometry;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseGeocodingGeoJsonFeature.
        /// </summary>
        /// <returns>ResponseGeocodingGeoJsonFeatureBuilder</returns>
        public static ResponseGeocodingGeoJsonFeatureBuilder Builder()
        {
            return new ResponseGeocodingGeoJsonFeatureBuilder();
        }

        /// <summary>
        /// Returns ResponseGeocodingGeoJsonFeatureBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseGeocodingGeoJsonFeatureBuilder</returns>
        public ResponseGeocodingGeoJsonFeatureBuilder With()
        {
            return Builder()
                .Type(Type)
                .Geometry(Geometry)
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

        public bool Equals(ResponseGeocodingGeoJsonFeature other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseGeocodingGeoJsonFeature.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingGeoJsonFeature</param>
        /// <param name="right">Compared (ResponseGeocodingGeoJsonFeature</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseGeocodingGeoJsonFeature left, ResponseGeocodingGeoJsonFeature right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseGeocodingGeoJsonFeature.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingGeoJsonFeature</param>
        /// <param name="right">Compared (ResponseGeocodingGeoJsonFeature</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseGeocodingGeoJsonFeature left, ResponseGeocodingGeoJsonFeature right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseGeocodingGeoJsonFeature.
        /// </summary>
        public sealed class ResponseGeocodingGeoJsonFeatureBuilder
        {
            private string _Type;
            private ResponseGeocodingGeometry _Geometry;
            private ResponseGeocodingProperties _Properties;

            internal ResponseGeocodingGeoJsonFeatureBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseGeocodingGeoJsonFeature.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public ResponseGeocodingGeoJsonFeatureBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingGeoJsonFeature.Geometry property.
            /// </summary>
            /// <param name="value">Geometry</param>
            public ResponseGeocodingGeoJsonFeatureBuilder Geometry(ResponseGeocodingGeometry value)
            {
                _Geometry = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingGeoJsonFeature.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseGeocodingGeoJsonFeatureBuilder Properties(ResponseGeocodingProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseGeocodingGeoJsonFeature.
            /// </summary>
            /// <returns>ResponseGeocodingGeoJsonFeature</returns>
            public ResponseGeocodingGeoJsonFeature Build()
            {
                Validate();
                return new ResponseGeocodingGeoJsonFeature(
                    Type: _Type,
                    Geometry: _Geometry,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for ResponseGeocodingGeoJsonFeature and cannot be null");
                } 
                if (_Geometry == null)
                {
                    throw new ArgumentException("Geometry is a required property for ResponseGeocodingGeoJsonFeature and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseGeocodingGeoJsonFeature and cannot be null");
                } 
            }
        }

        
    }
}