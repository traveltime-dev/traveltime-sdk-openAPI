using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseTimeMapProperties
    /// </summary>
    public sealed class ResponseTimeMapProperties:  IEquatable<ResponseTimeMapProperties>
    { 
        /// <summary>
        /// IsOnlyWalking
        /// </summary>
        public bool? IsOnlyWalking { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeMapProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeMapProperties()
        {
        }

        private ResponseTimeMapProperties(bool? IsOnlyWalking)
        {
            
            this.IsOnlyWalking = IsOnlyWalking;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeMapProperties.
        /// </summary>
        /// <returns>ResponseTimeMapPropertiesBuilder</returns>
        public static ResponseTimeMapPropertiesBuilder Builder()
        {
            return new ResponseTimeMapPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeMapPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeMapPropertiesBuilder</returns>
        public ResponseTimeMapPropertiesBuilder With()
        {
            return Builder()
                .IsOnlyWalking(IsOnlyWalking);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeMapProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeMapProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapProperties</param>
        /// <param name="right">Compared (ResponseTimeMapProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeMapProperties left, ResponseTimeMapProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeMapProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeMapProperties</param>
        /// <param name="right">Compared (ResponseTimeMapProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeMapProperties left, ResponseTimeMapProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeMapProperties.
        /// </summary>
        public sealed class ResponseTimeMapPropertiesBuilder
        {
            private bool? _IsOnlyWalking;

            internal ResponseTimeMapPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeMapProperties.IsOnlyWalking property.
            /// </summary>
            /// <param name="value">IsOnlyWalking</param>
            public ResponseTimeMapPropertiesBuilder IsOnlyWalking(bool? value)
            {
                _IsOnlyWalking = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeMapProperties.
            /// </summary>
            /// <returns>ResponseTimeMapProperties</returns>
            public ResponseTimeMapProperties Build()
            {
                Validate();
                return new ResponseTimeMapProperties(
                    IsOnlyWalking: _IsOnlyWalking
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}