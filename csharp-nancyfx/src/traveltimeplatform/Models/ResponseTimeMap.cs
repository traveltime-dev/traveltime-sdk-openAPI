using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseTimeMap
    /// </summary>
    public sealed class ResponseTimeMap:  IEquatable<ResponseTimeMap>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseTimeMapResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMap.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMap()
        {
        }

        private ResponseTimeMap(List<ResponseTimeMapResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMap.
        /// </summary>
        /// <returns>ResponseTimeMapBuilder</returns>
        public static ResponseTimeMapBuilder Builder()
        {
            return new ResponseTimeMapBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapBuilder</returns>
        public ResponseTimeMapBuilder With()
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

        public bool Equals(ResponseTimeMap other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMap.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMap</param>
        /// <param name="right">Compared (ResponseTimeMap</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMap left, ResponseTimeMap right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMap.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMap</param>
        /// <param name="right">Compared (ResponseTimeMap</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMap left, ResponseTimeMap right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMap.
        /// </summary>
        public sealed class ResponseTimeMapBuilder
        {
            private List<ResponseTimeMapResult> _Results;

            internal ResponseTimeMapBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMap.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseTimeMapBuilder Results(List<ResponseTimeMapResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMap.
            /// </summary>
            /// <returns>ResponseTimeMap</returns>
            public ResponseTimeMap Build()
            {
                Validate();
                return new ResponseTimeMap(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseTimeMap and cannot be null");
                } 
            }
        }

        
    }
}