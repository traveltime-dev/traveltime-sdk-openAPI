using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcode
    /// </summary>
    public sealed class ResponseTimeFilterPostcode:  IEquatable<ResponseTimeFilterPostcode>
    { 
        /// <summary>
        /// Code
        /// </summary>
        public String Code { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<ResponseTimeFilterPostcodesProperties> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcode.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcode()
        {
        }

        private ResponseTimeFilterPostcode(String Code, List<ResponseTimeFilterPostcodesProperties> Properties)
        {
            
            this.Code = Code;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcode.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeBuilder</returns>
        public static ResponseTimeFilterPostcodeBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeBuilder</returns>
        public ResponseTimeFilterPostcodeBuilder With()
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

        public bool Equals(ResponseTimeFilterPostcode other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcode.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcode</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcode</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcode left, ResponseTimeFilterPostcode right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcode.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcode</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcode</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcode left, ResponseTimeFilterPostcode right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcode.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeBuilder
        {
            private String _Code;
            private List<ResponseTimeFilterPostcodesProperties> _Properties;

            internal ResponseTimeFilterPostcodeBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcode.Code property.
            /// </summary>
            /// <param name="value">Code</param>
            public ResponseTimeFilterPostcodeBuilder Code(String value)
            {
                _Code = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcode.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeFilterPostcodeBuilder Properties(List<ResponseTimeFilterPostcodesProperties> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcode.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcode</returns>
            public ResponseTimeFilterPostcode Build()
            {
                Validate();
                return new ResponseTimeFilterPostcode(
                    Code: _Code,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Code == null)
                {
                    throw new ArgumentException("Code is a required property for ResponseTimeFilterPostcode and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeFilterPostcode and cannot be null");
                } 
            }
        }

        
    }
}