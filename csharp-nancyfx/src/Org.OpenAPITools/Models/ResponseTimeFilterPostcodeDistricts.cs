using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeDistricts
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeDistricts:  IEquatable<ResponseTimeFilterPostcodeDistricts>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeFilterPostcodeDistrictsResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeDistricts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeDistricts()
        {
        }

        private ResponseTimeFilterPostcodeDistricts(List<ResponseTimeFilterPostcodeDistrictsResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeDistricts.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictsBuilder</returns>
        public static ResponseTimeFilterPostcodeDistrictsBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeDistrictsBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeDistrictsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictsBuilder</returns>
        public ResponseTimeFilterPostcodeDistrictsBuilder With()
        {
            return Builder()
                .Results(Results);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodeDistricts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeDistricts.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistricts</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistricts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeDistricts left, ResponseTimeFilterPostcodeDistricts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeDistricts.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistricts</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistricts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeDistricts left, ResponseTimeFilterPostcodeDistricts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeDistricts.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeDistrictsBuilder
        {
            private List<ResponseTimeFilterPostcodeDistrictsResult> _Results;

            internal ResponseTimeFilterPostcodeDistrictsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistricts.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeFilterPostcodeDistrictsBuilder Results(List<ResponseTimeFilterPostcodeDistrictsResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeDistricts.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeDistricts</returns>
            public ResponseTimeFilterPostcodeDistricts Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeDistricts(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeFilterPostcodeDistricts and cannot be null");
                } 
            }
        }

        
    }
}
