using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeMapBoundingBoxes
    /// </summary>
    public sealed class ResponseTimeMapBoundingBoxes:  IEquatable<ResponseTimeMapBoundingBoxes>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeMapBoundingBoxesResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapBoundingBoxes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapBoundingBoxes()
        {
        }

        private ResponseTimeMapBoundingBoxes(List<ResponseTimeMapBoundingBoxesResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapBoundingBoxes.
        /// </summary>
        /// <returns>ResponseTimeMapBoundingBoxesBuilder</returns>
        public static ResponseTimeMapBoundingBoxesBuilder Builder()
        {
            return new ResponseTimeMapBoundingBoxesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapBoundingBoxesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapBoundingBoxesBuilder</returns>
        public ResponseTimeMapBoundingBoxesBuilder With()
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

        public bool Equals(ResponseTimeMapBoundingBoxes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapBoundingBoxes.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapBoundingBoxes</param>
        /// <param name="right">Compared (ResponseTimeMapBoundingBoxes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapBoundingBoxes left, ResponseTimeMapBoundingBoxes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapBoundingBoxes.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapBoundingBoxes</param>
        /// <param name="right">Compared (ResponseTimeMapBoundingBoxes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapBoundingBoxes left, ResponseTimeMapBoundingBoxes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapBoundingBoxes.
        /// </summary>
        public sealed class ResponseTimeMapBoundingBoxesBuilder
        {
            private List<ResponseTimeMapBoundingBoxesResult> _Results;

            internal ResponseTimeMapBoundingBoxesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapBoundingBoxes.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeMapBoundingBoxesBuilder Results(List<ResponseTimeMapBoundingBoxesResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapBoundingBoxes.
            /// </summary>
            /// <returns>ResponseTimeMapBoundingBoxes</returns>
            public ResponseTimeMapBoundingBoxes Build()
            {
                Validate();
                return new ResponseTimeMapBoundingBoxes(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeMapBoundingBoxes and cannot be null");
                } 
            }
        }

        
    }
}
