using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterFastProperties
    /// </summary>
    public sealed class ResponseTimeFilterFastProperties:  IEquatable<ResponseTimeFilterFastProperties>
    { 
        /// <summary>
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// Fares
        /// </summary>
        public ResponseFaresFast Fares { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterFastProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterFastProperties()
        {
        }

        private ResponseTimeFilterFastProperties(int? TravelTime, ResponseFaresFast Fares)
        {
            
            this.TravelTime = TravelTime;
            
            this.Fares = Fares;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterFastProperties.
        /// </summary>
        /// <returns>ResponseTimeFilterFastPropertiesBuilder</returns>
        public static ResponseTimeFilterFastPropertiesBuilder Builder()
        {
            return new ResponseTimeFilterFastPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterFastPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterFastPropertiesBuilder</returns>
        public ResponseTimeFilterFastPropertiesBuilder With()
        {
            return Builder()
                .TravelTime(TravelTime)
                .Fares(Fares);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterFastProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterFastProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterFastProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterFastProperties left, ResponseTimeFilterFastProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterFastProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterFastProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterFastProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterFastProperties left, ResponseTimeFilterFastProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterFastProperties.
        /// </summary>
        public sealed class ResponseTimeFilterFastPropertiesBuilder
        {
            private int? _TravelTime;
            private ResponseFaresFast _Fares;

            internal ResponseTimeFilterFastPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastProperties.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public ResponseTimeFilterFastPropertiesBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterFastProperties.Fares property.
            /// </summary>
            /// <param name="value">Fares</param>
            public ResponseTimeFilterFastPropertiesBuilder Fares(ResponseFaresFast value)
            {
                _Fares = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterFastProperties.
            /// </summary>
            /// <returns>ResponseTimeFilterFastProperties</returns>
            public ResponseTimeFilterFastProperties Build()
            {
                Validate();
                return new ResponseTimeFilterFastProperties(
                    TravelTime: _TravelTime,
                    Fares: _Fares
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}