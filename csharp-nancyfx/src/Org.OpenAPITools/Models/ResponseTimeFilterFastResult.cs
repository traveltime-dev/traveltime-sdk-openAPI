using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterFastResult
    /// </summary>
    public sealed class ResponseTimeFilterFastResult:  IEquatable<ResponseTimeFilterFastResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Locations
        /// </summary>
        public List<ResponseTimeFilterFastLocation> Locations { get; private set; }

        /// <summary>
        /// Unreachable
        /// </summary>
        public List<string> Unreachable { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterFastResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterFastResult()
        {
        }

        private ResponseTimeFilterFastResult(string SearchId, List<ResponseTimeFilterFastLocation> Locations, List<string> Unreachable)
        {
            
            this.SearchId = SearchId;
            
            this.Locations = Locations;
            
            this.Unreachable = Unreachable;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterFastResult.
        /// </summary>
        /// <returns>ResponseTimeFilterFastResultBuilder</returns>
        public static ResponseTimeFilterFastResultBuilder Builder()
        {
            return new ResponseTimeFilterFastResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterFastResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterFastResultBuilder</returns>
        public ResponseTimeFilterFastResultBuilder With()
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

        public bool Equals(ResponseTimeFilterFastResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterFastResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastResult</param>
        /// <param name="right">Compared (ResponseTimeFilterFastResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterFastResult left, ResponseTimeFilterFastResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterFastResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastResult</param>
        /// <param name="right">Compared (ResponseTimeFilterFastResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterFastResult left, ResponseTimeFilterFastResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterFastResult.
        /// </summary>
        public sealed class ResponseTimeFilterFastResultBuilder
        {
            private string _SearchId;
            private List<ResponseTimeFilterFastLocation> _Locations;
            private List<string> _Unreachable;

            internal ResponseTimeFilterFastResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeFilterFastResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastResult.Locations property.
            /// </summary>
            /// <param name="value">Locations</param>
            public ResponseTimeFilterFastResultBuilder Locations(List<ResponseTimeFilterFastLocation> value)
            {
                _Locations = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastResult.Unreachable property.
            /// </summary>
            /// <param name="value">Unreachable</param>
            public ResponseTimeFilterFastResultBuilder Unreachable(List<string> value)
            {
                _Unreachable = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterFastResult.
            /// </summary>
            /// <returns>ResponseTimeFilterFastResult</returns>
            public ResponseTimeFilterFastResult Build()
            {
                Validate();
                return new ResponseTimeFilterFastResult(
                    SearchId: _SearchId,
                    Locations: _Locations,
                    Unreachable: _Unreachable
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeFilterFastResult and cannot be null");
                } 
                if (_Locations == null)
                {
                    throw new ArgumentException("Locations is a required property for ResponseTimeFilterFastResult and cannot be null");
                } 
                if (_Unreachable == null)
                {
                    throw new ArgumentException("Unreachable is a required property for ResponseTimeFilterFastResult and cannot be null");
                } 
            }
        }

        
    }
}