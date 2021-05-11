using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodesResult
    /// </summary>
    public sealed class ResponseTimeFilterPostcodesResult:  IEquatable<ResponseTimeFilterPostcodesResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Postcodes
        /// </summary>
        public List<ResponseTimeFilterPostcode> Postcodes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodesResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodesResult()
        {
        }

        private ResponseTimeFilterPostcodesResult(string SearchId, List<ResponseTimeFilterPostcode> Postcodes)
        {
            
            this.SearchId = SearchId;
            
            this.Postcodes = Postcodes;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodesResult.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesResultBuilder</returns>
        public static ResponseTimeFilterPostcodesResultBuilder Builder()
        {
            return new ResponseTimeFilterPostcodesResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodesResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesResultBuilder</returns>
        public ResponseTimeFilterPostcodesResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Postcodes(Postcodes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodesResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodesResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodesResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodesResult left, ResponseTimeFilterPostcodesResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodesResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodesResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodesResult left, ResponseTimeFilterPostcodesResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodesResult.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodesResultBuilder
        {
            private string _SearchId;
            private List<ResponseTimeFilterPostcode> _Postcodes;

            internal ResponseTimeFilterPostcodesResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodesResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeFilterPostcodesResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodesResult.Postcodes property.
            /// </summary>
            /// <param name="value">Postcodes</param>
            public ResponseTimeFilterPostcodesResultBuilder Postcodes(List<ResponseTimeFilterPostcode> value)
            {
                _Postcodes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodesResult.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodesResult</returns>
            public ResponseTimeFilterPostcodesResult Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodesResult(
                    SearchId: _SearchId,
                    Postcodes: _Postcodes
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeFilterPostcodesResult and cannot be null");
                } 
                if (_Postcodes == null)
                {
                    throw new ArgumentException("Postcodes is a required property for ResponseTimeFilterPostcodesResult and cannot be null");
                } 
            }
        }

        
    }
}
