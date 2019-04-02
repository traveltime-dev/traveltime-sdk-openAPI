using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeSectors
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeSectors:  IEquatable<ResponseTimeFilterPostcodeSectors>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeFilterPostcodeSectorsResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeSectors.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeSectors()
        {
        }

        private ResponseTimeFilterPostcodeSectors(List<ResponseTimeFilterPostcodeSectorsResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeSectors.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorsBuilder</returns>
        public static ResponseTimeFilterPostcodeSectorsBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeSectorsBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeSectorsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorsBuilder</returns>
        public ResponseTimeFilterPostcodeSectorsBuilder With()
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

        public bool Equals(ResponseTimeFilterPostcodeSectors other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeSectors.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectors</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectors</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeSectors left, ResponseTimeFilterPostcodeSectors right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeSectors.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectors</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectors</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeSectors left, ResponseTimeFilterPostcodeSectors right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeSectors.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeSectorsBuilder
        {
            private List<ResponseTimeFilterPostcodeSectorsResult> _Results;

            internal ResponseTimeFilterPostcodeSectorsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectors.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeFilterPostcodeSectorsBuilder Results(List<ResponseTimeFilterPostcodeSectorsResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeSectors.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeSectors</returns>
            public ResponseTimeFilterPostcodeSectors Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeSectors(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeFilterPostcodeSectors and cannot be null");
                } 
            }
        }

        
    }
}