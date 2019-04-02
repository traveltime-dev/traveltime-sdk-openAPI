using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeDistrict
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeDistrict:  IEquatable<ResponseTimeFilterPostcodeDistrict>
    { 
        /// <summary>
        /// Code
        /// </summary>
        public String Code { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseTimeFilterPostcodeDistrictProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeDistrict.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeDistrict()
        {
        }

        private ResponseTimeFilterPostcodeDistrict(String Code, ResponseTimeFilterPostcodeDistrictProperties Properties)
        {
            
            this.Code = Code;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeDistrict.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictBuilder</returns>
        public static ResponseTimeFilterPostcodeDistrictBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeDistrictBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeDistrictBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictBuilder</returns>
        public ResponseTimeFilterPostcodeDistrictBuilder With()
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

        public bool Equals(ResponseTimeFilterPostcodeDistrict other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeDistrict.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrict</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrict</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeDistrict left, ResponseTimeFilterPostcodeDistrict right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeDistrict.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrict</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrict</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeDistrict left, ResponseTimeFilterPostcodeDistrict right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeDistrict.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeDistrictBuilder
        {
            private String _Code;
            private ResponseTimeFilterPostcodeDistrictProperties _Properties;

            internal ResponseTimeFilterPostcodeDistrictBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrict.Code property.
            /// </summary>
            /// <param name="value">Code</param>
            public ResponseTimeFilterPostcodeDistrictBuilder Code(String value)
            {
                _Code = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrict.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeFilterPostcodeDistrictBuilder Properties(ResponseTimeFilterPostcodeDistrictProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeDistrict.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeDistrict</returns>
            public ResponseTimeFilterPostcodeDistrict Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeDistrict(
                    Code: _Code,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Code == null)
                {
                    throw new ArgumentException("Code is a required property for ResponseTimeFilterPostcodeDistrict and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeFilterPostcodeDistrict and cannot be null");
                } 
            }
        }

        
    }
}