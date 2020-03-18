using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeDistrictsResult
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeDistrictsResult:  IEquatable<ResponseTimeFilterPostcodeDistrictsResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Districts
        /// </summary>
        public List<ResponseTimeFilterPostcodeDistrict> Districts { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeDistrictsResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeDistrictsResult()
        {
        }

        private ResponseTimeFilterPostcodeDistrictsResult(string SearchId, List<ResponseTimeFilterPostcodeDistrict> Districts)
        {
            
            this.SearchId = SearchId;
            
            this.Districts = Districts;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeDistrictsResult.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictsResultBuilder</returns>
        public static ResponseTimeFilterPostcodeDistrictsResultBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeDistrictsResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeDistrictsResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictsResultBuilder</returns>
        public ResponseTimeFilterPostcodeDistrictsResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Districts(Districts);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodeDistrictsResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeDistrictsResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrictsResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrictsResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeDistrictsResult left, ResponseTimeFilterPostcodeDistrictsResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeDistrictsResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrictsResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrictsResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeDistrictsResult left, ResponseTimeFilterPostcodeDistrictsResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeDistrictsResult.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeDistrictsResultBuilder
        {
            private string _SearchId;
            private List<ResponseTimeFilterPostcodeDistrict> _Districts;

            internal ResponseTimeFilterPostcodeDistrictsResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrictsResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeFilterPostcodeDistrictsResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrictsResult.Districts property.
            /// </summary>
            /// <param name="value">Districts</param>
            public ResponseTimeFilterPostcodeDistrictsResultBuilder Districts(List<ResponseTimeFilterPostcodeDistrict> value)
            {
                _Districts = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeDistrictsResult.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeDistrictsResult</returns>
            public ResponseTimeFilterPostcodeDistrictsResult Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeDistrictsResult(
                    SearchId: _SearchId,
                    Districts: _Districts
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeFilterPostcodeDistrictsResult and cannot be null");
                } 
                if (_Districts == null)
                {
                    throw new ArgumentException("Districts is a required property for ResponseTimeFilterPostcodeDistrictsResult and cannot be null");
                } 
            }
        }

        
    }
}