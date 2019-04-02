using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeMapWktResult
    /// </summary>
    public sealed class ResponseTimeMapWktResult:  IEquatable<ResponseTimeMapWktResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Shape
        /// </summary>
        public string Shape { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseTimeMapProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapWktResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapWktResult()
        {
        }

        private ResponseTimeMapWktResult(string SearchId, string Shape, ResponseTimeMapProperties Properties)
        {
            
            this.SearchId = SearchId;
            
            this.Shape = Shape;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapWktResult.
        /// </summary>
        /// <returns>ResponseTimeMapWktResultBuilder</returns>
        public static ResponseTimeMapWktResultBuilder Builder()
        {
            return new ResponseTimeMapWktResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapWktResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapWktResultBuilder</returns>
        public ResponseTimeMapWktResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Shape(Shape)
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

        public bool Equals(ResponseTimeMapWktResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapWktResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapWktResult</param>
        /// <param name="right">Compared (ResponseTimeMapWktResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapWktResult left, ResponseTimeMapWktResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapWktResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapWktResult</param>
        /// <param name="right">Compared (ResponseTimeMapWktResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapWktResult left, ResponseTimeMapWktResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapWktResult.
        /// </summary>
        public sealed class ResponseTimeMapWktResultBuilder
        {
            private string _SearchId;
            private string _Shape;
            private ResponseTimeMapProperties _Properties;

            internal ResponseTimeMapWktResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapWktResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeMapWktResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapWktResult.Shape property.
            /// </summary>
            /// <param name="value">Shape</param>
            public ResponseTimeMapWktResultBuilder Shape(string value)
            {
                _Shape = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapWktResult.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeMapWktResultBuilder Properties(ResponseTimeMapProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapWktResult.
            /// </summary>
            /// <returns>ResponseTimeMapWktResult</returns>
            public ResponseTimeMapWktResult Build()
            {
                Validate();
                return new ResponseTimeMapWktResult(
                    SearchId: _SearchId,
                    Shape: _Shape,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeMapWktResult and cannot be null");
                } 
                if (_Shape == null)
                {
                    throw new ArgumentException("Shape is a required property for ResponseTimeMapWktResult and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeMapWktResult and cannot be null");
                } 
            }
        }

        
    }
}