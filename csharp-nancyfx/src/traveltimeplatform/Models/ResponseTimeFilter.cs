using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeFilter
    /// </summary>
    public sealed class ResponseTimeFilter:  IEquatable<ResponseTimeFilter>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeFilterResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilter.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilter()
        {
        }

        private ResponseTimeFilter(List<ResponseTimeFilterResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilter.
        /// </summary>
        /// <returns>ResponseTimeFilterBuilder</returns>
        public static ResponseTimeFilterBuilder Builder()
        {
            return new ResponseTimeFilterBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterBuilder</returns>
        public ResponseTimeFilterBuilder With()
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

        public bool Equals(ResponseTimeFilter other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilter.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilter</param>
        /// <param name="right">Compared (ResponseTimeFilter</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilter left, ResponseTimeFilter right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilter.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilter</param>
        /// <param name="right">Compared (ResponseTimeFilter</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilter left, ResponseTimeFilter right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilter.
        /// </summary>
        public sealed class ResponseTimeFilterBuilder
        {
            private List<ResponseTimeFilterResult> _Results;

            internal ResponseTimeFilterBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilter.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeFilterBuilder Results(List<ResponseTimeFilterResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilter.
            /// </summary>
            /// <returns>ResponseTimeFilter</returns>
            public ResponseTimeFilter Build()
            {
                Validate();
                return new ResponseTimeFilter(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeFilter and cannot be null");
                } 
            }
        }

        
    }
}