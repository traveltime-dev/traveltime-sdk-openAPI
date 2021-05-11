using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeMapBoundingBoxesResult
    /// </summary>
    public sealed class ResponseTimeMapBoundingBoxesResult:  IEquatable<ResponseTimeMapBoundingBoxesResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// BoundingBoxes
        /// </summary>
        public List<ResponseBoundingBox> BoundingBoxes { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseTimeMapProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapBoundingBoxesResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapBoundingBoxesResult()
        {
        }

        private ResponseTimeMapBoundingBoxesResult(string SearchId, List<ResponseBoundingBox> BoundingBoxes, ResponseTimeMapProperties Properties)
        {
            
            this.SearchId = SearchId;
            
            this.BoundingBoxes = BoundingBoxes;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapBoundingBoxesResult.
        /// </summary>
        /// <returns>ResponseTimeMapBoundingBoxesResultBuilder</returns>
        public static ResponseTimeMapBoundingBoxesResultBuilder Builder()
        {
            return new ResponseTimeMapBoundingBoxesResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapBoundingBoxesResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapBoundingBoxesResultBuilder</returns>
        public ResponseTimeMapBoundingBoxesResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .BoundingBoxes(BoundingBoxes)
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

        public bool Equals(ResponseTimeMapBoundingBoxesResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapBoundingBoxesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapBoundingBoxesResult</param>
        /// <param name="right">Compared (ResponseTimeMapBoundingBoxesResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapBoundingBoxesResult left, ResponseTimeMapBoundingBoxesResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapBoundingBoxesResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapBoundingBoxesResult</param>
        /// <param name="right">Compared (ResponseTimeMapBoundingBoxesResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapBoundingBoxesResult left, ResponseTimeMapBoundingBoxesResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapBoundingBoxesResult.
        /// </summary>
        public sealed class ResponseTimeMapBoundingBoxesResultBuilder
        {
            private string _SearchId;
            private List<ResponseBoundingBox> _BoundingBoxes;
            private ResponseTimeMapProperties _Properties;

            internal ResponseTimeMapBoundingBoxesResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapBoundingBoxesResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeMapBoundingBoxesResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapBoundingBoxesResult.BoundingBoxes property.
            /// </summary>
            /// <param name="value">BoundingBoxes</param>
            public ResponseTimeMapBoundingBoxesResultBuilder BoundingBoxes(List<ResponseBoundingBox> value)
            {
                _BoundingBoxes = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapBoundingBoxesResult.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeMapBoundingBoxesResultBuilder Properties(ResponseTimeMapProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapBoundingBoxesResult.
            /// </summary>
            /// <returns>ResponseTimeMapBoundingBoxesResult</returns>
            public ResponseTimeMapBoundingBoxesResult Build()
            {
                Validate();
                return new ResponseTimeMapBoundingBoxesResult(
                    SearchId: _SearchId,
                    BoundingBoxes: _BoundingBoxes,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeMapBoundingBoxesResult and cannot be null");
                } 
                if (_BoundingBoxes == null)
                {
                    throw new ArgumentException("BoundingBoxes is a required property for ResponseTimeMapBoundingBoxesResult and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeMapBoundingBoxesResult and cannot be null");
                } 
            }
        }

        
    }
}
