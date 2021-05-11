using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeMapResult
    /// </summary>
    public sealed class ResponseTimeMapResult:  IEquatable<ResponseTimeMapResult>
    { 
        /// <summary>
        /// SearchId
        /// </summary>
        public string SearchId { get; private set; }

        /// <summary>
        /// Shapes
        /// </summary>
        public List<ResponseShape> Shapes { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public ResponseTimeMapProperties Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapResult.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapResult()
        {
        }

        private ResponseTimeMapResult(string SearchId, List<ResponseShape> Shapes, ResponseTimeMapProperties Properties)
        {
            
            this.SearchId = SearchId;
            
            this.Shapes = Shapes;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapResult.
        /// </summary>
        /// <returns>ResponseTimeMapResultBuilder</returns>
        public static ResponseTimeMapResultBuilder Builder()
        {
            return new ResponseTimeMapResultBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapResultBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapResultBuilder</returns>
        public ResponseTimeMapResultBuilder With()
        {
            return Builder()
                .SearchId(SearchId)
                .Shapes(Shapes)
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

        public bool Equals(ResponseTimeMapResult other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapResult</param>
        /// <param name="right">Compared (ResponseTimeMapResult</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapResult left, ResponseTimeMapResult right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapResult.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapResult</param>
        /// <param name="right">Compared (ResponseTimeMapResult</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapResult left, ResponseTimeMapResult right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapResult.
        /// </summary>
        public sealed class ResponseTimeMapResultBuilder
        {
            private string _SearchId;
            private List<ResponseShape> _Shapes;
            private ResponseTimeMapProperties _Properties;

            internal ResponseTimeMapResultBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapResult.SearchId property.
            /// </summary>
            /// <param name="value">SearchId</param>
            public ResponseTimeMapResultBuilder SearchId(string value)
            {
                _SearchId = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapResult.Shapes property.
            /// </summary>
            /// <param name="value">Shapes</param>
            public ResponseTimeMapResultBuilder Shapes(List<ResponseShape> value)
            {
                _Shapes = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeMapResult.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public ResponseTimeMapResultBuilder Properties(ResponseTimeMapProperties value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapResult.
            /// </summary>
            /// <returns>ResponseTimeMapResult</returns>
            public ResponseTimeMapResult Build()
            {
                Validate();
                return new ResponseTimeMapResult(
                    SearchId: _SearchId,
                    Shapes: _Shapes,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_SearchId == null)
                {
                    throw new ArgumentException("SearchId is a required property for ResponseTimeMapResult and cannot be null");
                } 
                if (_Shapes == null)
                {
                    throw new ArgumentException("Shapes is a required property for ResponseTimeMapResult and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for ResponseTimeMapResult and cannot be null");
                } 
            }
        }

        
    }
}
