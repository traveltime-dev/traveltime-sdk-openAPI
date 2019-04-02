using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseRoutesResult
    /// </summary>
    public sealed class ResponseRoutesResult:  IEquatable<ResponseRoutesResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Locations
        /// </summary>
        public List<ResponseRoutesLocation> Locations { get; private set; }

        /// <summary>
        /// Unreachable
        /// </summary>
        public List<string> Unreachable { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoutesResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoutesResult()
        {
        }

        private ResponseRoutesResult(string SearchId, List<ResponseRoutesLocation> Locations, List<string> Unreachable)
        {
            
            this.SearchId = SearchId;
            
            this.Locations = Locations;
            
            this.Unreachable = Unreachable;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoutesResult.
        /// </summary>
        /// <returns>ResponseRoutesResultBuilder</returns>
        public static ResponseRoutesResultBuilder Builder()
        {
            return new ResponseRoutesResultBuilder();
        }

        /// <summary>
        /// Returns ResponseRoutesResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRoutesResultBuilder</returns>
        public ResponseRoutesResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Locations(Locations)
                .Unreachable(Unreachable);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseRoutesResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoutesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesResult</param>
        /// <param name="right">Compared (ResponseRoutesResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoutesResult left, ResponseRoutesResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoutesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesResult</param>
        /// <param name="right">Compared (ResponseRoutesResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoutesResult left, ResponseRoutesResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoutesResult.
        /// </summary>
        public sealed class ResponseRoutesResultBuilder
        {
            private string _SearchId;
            private List<ResponseRoutesLocation> _Locations;
            private List<string> _Unreachable;

            internal ResponseRoutesResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoutesResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseRoutesResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesResult.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public ResponseRoutesResultBuilder Locations(List<ResponseRoutesLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesResult.Unreachable property.
            /// </summary>
            /// <param name="value">Unreachable</param>
            public ResponseRoutesResultBuilder Unreachable(List<string> value)
            {
                _Unreachable = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoutesResult.
            /// </summary>
            /// <returns>ResponseRoutesResult</returns>
            public ResponseRoutesResult Build()
            {
                Validate();
                return new ResponseRoutesResult(
                    SearchId: _SearchId,
                    Locations: _Locations,
                    Unreachable: _Unreachable
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseRoutesResult and cannot be null");
                } 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for ResponseRoutesResult and cannot be null");
                } 
                if (_Unreachable == null)
                {
                    throw new ArgumentException("Unreachable is a required property for ResponseRoutesResult and cannot be null");
                } 
            }
        }

        
    }
}