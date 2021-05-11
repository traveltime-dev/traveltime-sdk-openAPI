using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseRoutes
    /// </summary>
    public sealed class ResponseRoutes:  IEquatable<ResponseRoutes>
    { 
        /// <summary>
        /// Results
        /// </summary>
        public List<ResponseRoutesResult> Results { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoutes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoutes()
        {
        }

        private ResponseRoutes(List<ResponseRoutesResult> Results)
        {
            
            this.Results = Results;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoutes.
        /// </summary>
        /// <returns>ResponseRoutesBuilder</returns>
        public static ResponseRoutesBuilder Builder()
        {
            return new ResponseRoutesBuilder();
        }

        /// <summary>
        /// Returns ResponseRoutesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRoutesBuilder</returns>
        public ResponseRoutesBuilder With()
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

        public bool Equals(ResponseRoutes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoutes.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutes</param>
        /// <param name="right">Compared (ResponseRoutes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoutes left, ResponseRoutes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoutes.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutes</param>
        /// <param name="right">Compared (ResponseRoutes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoutes left, ResponseRoutes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoutes.
        /// </summary>
        public sealed class ResponseRoutesBuilder
        {
            private List<ResponseRoutesResult> _Results;

            internal ResponseRoutesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoutes.Results property.
            /// </summary>
            /// <param name="value">Results</param>
            public ResponseRoutesBuilder Results(List<ResponseRoutesResult> value)
            {
                _Results = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoutes.
            /// </summary>
            /// <returns>ResponseRoutes</returns>
            public ResponseRoutes Build()
            {
                Validate();
                return new ResponseRoutes(
                    Results: _Results
                );
            }

            private void Validate()
            { 
                if (_Results == null)
                {
                    throw new ArgumentException("Results is a required property for ResponseRoutes and cannot be null");
                } 
            }
        }

        
    }
}
