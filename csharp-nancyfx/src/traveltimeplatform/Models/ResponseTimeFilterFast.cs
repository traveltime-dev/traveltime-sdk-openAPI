using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseTimeFilterFast
    /// </summary>
    public sealed class ResponseTimeFilterFast:  IEquatable<ResponseTimeFilterFast>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeFilterFastResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterFast.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterFast()
        {
        }

        private ResponseTimeFilterFast(List<ResponseTimeFilterFastResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterFast.
        /// </summary>
        /// <returns>ResponseTimeFilterFastBuilder</returns>
        public static ResponseTimeFilterFastBuilder Builder()
        {
            return new ResponseTimeFilterFastBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterFastBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterFastBuilder</returns>
        public ResponseTimeFilterFastBuilder With()
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

        public bool Equals(ResponseTimeFilterFast other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterFast.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFast</param>
        /// <param name="right">Compared (ResponseTimeFilterFast</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterFast left, ResponseTimeFilterFast right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterFast.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFast</param>
        /// <param name="right">Compared (ResponseTimeFilterFast</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterFast left, ResponseTimeFilterFast right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterFast.
        /// </summary>
        public sealed class ResponseTimeFilterFastBuilder
        {
            private List<ResponseTimeFilterFastResult> _Results;

            internal ResponseTimeFilterFastBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFast.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeFilterFastBuilder Results(List<ResponseTimeFilterFastResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterFast.
            /// </summary>
            /// <returns>ResponseTimeFilterFast</returns>
            public ResponseTimeFilterFast Build()
            {
                Validate();
                return new ResponseTimeFilterFast(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeFilterFast and cannot be null");
                } 
            }
        }

        
    }
}