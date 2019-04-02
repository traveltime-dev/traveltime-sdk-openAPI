using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodes
    /// </summary>
    public sealed class ResponseTimeFilterPostcodes:  IEquatable<ResponseTimeFilterPostcodes>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeFilterPostcodesResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodes()
        {
        }

        private ResponseTimeFilterPostcodes(List<ResponseTimeFilterPostcodesResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodes.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesBuilder</returns>
        public static ResponseTimeFilterPostcodesBuilder Builder()
        {
            return new ResponseTimeFilterPostcodesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesBuilder</returns>
        public ResponseTimeFilterPostcodesBuilder With()
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

        public bool Equals(ResponseTimeFilterPostcodes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodes.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodes</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodes left, ResponseTimeFilterPostcodes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodes.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodes</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodes left, ResponseTimeFilterPostcodes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodes.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodesBuilder
        {
            private List<ResponseTimeFilterPostcodesResult> _Results;

            internal ResponseTimeFilterPostcodesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodes.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeFilterPostcodesBuilder Results(List<ResponseTimeFilterPostcodesResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodes.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodes</returns>
            public ResponseTimeFilterPostcodes Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodes(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeFilterPostcodes and cannot be null");
                } 
            }
        }

        
    }
}