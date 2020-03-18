using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseGeocodingGeometry
    /// </summary>
    public sealed class ResponseGeocodingGeometry:  IEquatable<ResponseGeocodingGeometry>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public string Type { get; private set; }

        /// <summary>
        /// Coordinates
        /// </summary>
        public List<double?> Coordinates { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseGeocodingGeometry.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseGeocodingGeometry()
        {
        }

        private ResponseGeocodingGeometry(string Type, List<double?> Coordinates)
        {
            
            this.Type = Type;
            
            this.Coordinates = Coordinates;
            
        }

        /// <summary>
        /// Returns builder of ResponseGeocodingGeometry.
        /// </summary>
        /// <returns>ResponseGeocodingGeometryBuilder</returns>
        public static ResponseGeocodingGeometryBuilder Builder()
        {
            return new ResponseGeocodingGeometryBuilder();
        }

        /// <summary>
        /// Returns ResponseGeocodingGeometryBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseGeocodingGeometryBuilder</returns>
        public ResponseGeocodingGeometryBuilder With()
        {
            return Builder()
                .Type(Type)
                .Coordinates(Coordinates);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseGeocodingGeometry other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseGeocodingGeometry.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingGeometry</param>
        /// <param name="right">Compared (ResponseGeocodingGeometry</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseGeocodingGeometry left, ResponseGeocodingGeometry right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseGeocodingGeometry.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingGeometry</param>
        /// <param name="right">Compared (ResponseGeocodingGeometry</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseGeocodingGeometry left, ResponseGeocodingGeometry right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseGeocodingGeometry.
        /// </summary>
        public sealed class ResponseGeocodingGeometryBuilder
        {
            private string _Type;
            private List<double?> _Coordinates;

            internal ResponseGeocodingGeometryBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseGeocodingGeometry.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public ResponseGeocodingGeometryBuilder Type(string value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingGeometry.Coordinates property.
            /// </summary>
            /// <param name="value">Coordinates</param>
            public ResponseGeocodingGeometryBuilder Coordinates(List<double?> value)
            {
                _Coordinates = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseGeocodingGeometry.
            /// </summary>
            /// <returns>ResponseGeocodingGeometry</returns>
            public ResponseGeocodingGeometry Build()
            {
                Validate();
                return new ResponseGeocodingGeometry(
                    Type: _Type,
                    Coordinates: _Coordinates
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for ResponseGeocodingGeometry and cannot be null");
                } 
                if (_Coordinates == null)
                {
                    throw new ArgumentException("Coordinates is a required property for ResponseGeocodingGeometry and cannot be null");
                } 
            }
        }

        
    }
}