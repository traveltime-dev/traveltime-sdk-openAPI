using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterResult
    /// </summary>
    public sealed class ResponseTimeFilterResult:  IEquatable<ResponseTimeFilterResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Locations
        /// </summary>
        public List<ResponseTimeFilterLocation> Locations { get; private set; }

        /// <summary>
        /// Unreachable
        /// </summary>
        public List<string> Unreachable { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterResult()
        {
        }

        private ResponseTimeFilterResult(string SearchId, List<ResponseTimeFilterLocation> Locations, List<string> Unreachable)
        {
            
            this.SearchId = SearchId;
            
            this.Locations = Locations;
            
            this.Unreachable = Unreachable;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterResult.
        /// </summary>
        /// <returns>ResponseTimeFilterResultBuilder</returns>
        public static ResponseTimeFilterResultBuilder Builder()
        {
            return new ResponseTimeFilterResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterResultBuilder</returns>
        public ResponseTimeFilterResultBuilder With()
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

        public bool Equals(ResponseTimeFilterResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterResult</param>
        /// <param name="right">Compared (ResponseTimeFilterResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterResult left, ResponseTimeFilterResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterResult</param>
        /// <param name="right">Compared (ResponseTimeFilterResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterResult left, ResponseTimeFilterResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterResult.
        /// </summary>
        public sealed class ResponseTimeFilterResultBuilder
        {
            private string _SearchId;
            private List<ResponseTimeFilterLocation> _Locations;
            private List<string> _Unreachable;

            internal ResponseTimeFilterResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeFilterResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterResult.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public ResponseTimeFilterResultBuilder Locations(List<ResponseTimeFilterLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterResult.Unreachable property.
            /// </summary>
            /// <param name="value">Unreachable</param>
            public ResponseTimeFilterResultBuilder Unreachable(List<string> value)
            {
                _Unreachable = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterResult.
            /// </summary>
            /// <returns>ResponseTimeFilterResult</returns>
            public ResponseTimeFilterResult Build()
            {
                Validate();
                return new ResponseTimeFilterResult(
                    SearchId: _SearchId,
                    Locations: _Locations,
                    Unreachable: _Unreachable
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeFilterResult and cannot be null");
                } 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for ResponseTimeFilterResult and cannot be null");
                } 
                if (_Unreachable == null)
                {
                    throw new ArgumentException("Unreachable is a required property for ResponseTimeFilterResult and cannot be null");
                } 
            }
        }

        
    }
}
