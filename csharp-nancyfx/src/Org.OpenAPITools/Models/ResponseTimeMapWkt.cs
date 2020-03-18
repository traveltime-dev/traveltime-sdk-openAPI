using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeMapWkt
    /// </summary>
    public sealed class ResponseTimeMapWkt:  IEquatable<ResponseTimeMapWkt>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeMapWktResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapWkt.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapWkt()
        {
        }

        private ResponseTimeMapWkt(List<ResponseTimeMapWktResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapWkt.
        /// </summary>
        /// <returns>ResponseTimeMapWktBuilder</returns>
        public static ResponseTimeMapWktBuilder Builder()
        {
            return new ResponseTimeMapWktBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapWktBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapWktBuilder</returns>
        public ResponseTimeMapWktBuilder With()
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

        public bool Equals(ResponseTimeMapWkt other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapWkt.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapWkt</param>
        /// <param name="right">Compared (ResponseTimeMapWkt</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapWkt left, ResponseTimeMapWkt right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapWkt.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapWkt</param>
        /// <param name="right">Compared (ResponseTimeMapWkt</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapWkt left, ResponseTimeMapWkt right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapWkt.
        /// </summary>
        public sealed class ResponseTimeMapWktBuilder
        {
            private List<ResponseTimeMapWktResult> _Results;

            internal ResponseTimeMapWktBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapWkt.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeMapWktBuilder Results(List<ResponseTimeMapWktResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapWkt.
            /// </summary>
            /// <returns>ResponseTimeMapWkt</returns>
            public ResponseTimeMapWkt Build()
            {
                Validate();
                return new ResponseTimeMapWkt(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeMapWkt and cannot be null");
                } 
            }
        }

        
    }
}