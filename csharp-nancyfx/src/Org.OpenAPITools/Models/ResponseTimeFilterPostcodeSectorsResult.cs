using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeSectorsResult
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeSectorsResult:  IEquatable<ResponseTimeFilterPostcodeSectorsResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Sectors
        /// </summary>
        public List<ResponseTimeFilterPostcodeSector> Sectors { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeSectorsResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeSectorsResult()
        {
        }

        private ResponseTimeFilterPostcodeSectorsResult(string SearchId, List<ResponseTimeFilterPostcodeSector> Sectors)
        {
            
            this.SearchId = SearchId;
            
            this.Sectors = Sectors;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeSectorsResult.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorsResultBuilder</returns>
        public static ResponseTimeFilterPostcodeSectorsResultBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeSectorsResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeSectorsResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorsResultBuilder</returns>
        public ResponseTimeFilterPostcodeSectorsResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Sectors(Sectors);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodeSectorsResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeSectorsResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectorsResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectorsResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeSectorsResult left, ResponseTimeFilterPostcodeSectorsResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeSectorsResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectorsResult</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectorsResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeSectorsResult left, ResponseTimeFilterPostcodeSectorsResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeSectorsResult.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeSectorsResultBuilder
        {
            private string _SearchId;
            private List<ResponseTimeFilterPostcodeSector> _Sectors;

            internal ResponseTimeFilterPostcodeSectorsResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectorsResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeFilterPostcodeSectorsResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectorsResult.Sectors property.
            /// </summary>
            /// <param name="value">Sectors</param>
            public ResponseTimeFilterPostcodeSectorsResultBuilder Sectors(List<ResponseTimeFilterPostcodeSector> value)
            {
                _Sectors = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeSectorsResult.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeSectorsResult</returns>
            public ResponseTimeFilterPostcodeSectorsResult Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeSectorsResult(
                    SearchId: _SearchId,
                    Sectors: _Sectors
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeFilterPostcodeSectorsResult and cannot be null");
                } 
                if (_Sectors == null)
                {
                    throw new ArgumentException("Sectors is a required property for ResponseTimeFilterPostcodeSectorsResult and cannot be null");
                } 
            }
        }

        
    }
}