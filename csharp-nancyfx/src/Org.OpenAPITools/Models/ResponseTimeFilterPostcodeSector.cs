using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeSector
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeSector:  IEquatable<ResponseTimeFilterPostcodeSector>
    { 
        /// <summary>
        /// Code
        /// </summary>
        public string Code { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseTimeFilterPostcodeSectorProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeSector.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeSector()
        {
        }

        private ResponseTimeFilterPostcodeSector(string Code, ResponseTimeFilterPostcodeSectorProperties Properties)
        {
            
            this.Code = Code;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeSector.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorBuilder</returns>
        public static ResponseTimeFilterPostcodeSectorBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeSectorBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeSectorBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorBuilder</returns>
        public ResponseTimeFilterPostcodeSectorBuilder With()
        {
            return Builder()
                .Code(Code)
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

        public bool Equals(ResponseTimeFilterPostcodeSector other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeSector.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSector</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSector</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeSector left, ResponseTimeFilterPostcodeSector right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeSector.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSector</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSector</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeSector left, ResponseTimeFilterPostcodeSector right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeSector.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeSectorBuilder
        {
            private string _Code;
            private ResponseTimeFilterPostcodeSectorProperties _Properties;

            internal ResponseTimeFilterPostcodeSectorBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSector.Code property.
            /// </summary>
            /// <param name="value">Code</param>
            public ResponseTimeFilterPostcodeSectorBuilder Code(string value)
            {
                _Code = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSector.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeFilterPostcodeSectorBuilder Properties(ResponseTimeFilterPostcodeSectorProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeSector.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeSector</returns>
            public ResponseTimeFilterPostcodeSector Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeSector(
                    Code: _Code,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Code == null)
                {
                    throw new ArgumentException("Code is a required property for ResponseTimeFilterPostcodeSector and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeFilterPostcodeSector and cannot be null");
                } 
            }
        }

        
    }
}
