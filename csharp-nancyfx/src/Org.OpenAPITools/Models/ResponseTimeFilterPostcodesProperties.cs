using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodesProperties
    /// </summary>
    public sealed class ResponseTimeFilterPostcodesProperties:  IEquatable<ResponseTimeFilterPostcodesProperties>
    { 
        /// <summary>
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// Distance
        /// </summary>
        public int? Distance { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodesProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodesProperties()
        {
        }

        private ResponseTimeFilterPostcodesProperties(int? TravelTime, int? Distance)
        {
            
            this.TravelTime = TravelTime;
            
            this.Distance = Distance;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodesProperties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesPropertiesBuilder</returns>
        public static ResponseTimeFilterPostcodesPropertiesBuilder Builder()
        {
            return new ResponseTimeFilterPostcodesPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodesPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodesPropertiesBuilder</returns>
        public ResponseTimeFilterPostcodesPropertiesBuilder With()
        {
            return Builder()
                .TravelTime(TravelTime)
                .Distance(Distance);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodesProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodesProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodesProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodesProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodesProperties left, ResponseTimeFilterPostcodesProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodesProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodesProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodesProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodesProperties left, ResponseTimeFilterPostcodesProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodesProperties.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodesPropertiesBuilder
        {
            private int? _TravelTime;
            private int? _Distance;

            internal ResponseTimeFilterPostcodesPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodesProperties.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public ResponseTimeFilterPostcodesPropertiesBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodesProperties.Distance property.
            /// </summary>
            /// <param name="value">Distance</param>
            public ResponseTimeFilterPostcodesPropertiesBuilder Distance(int? value)
            {
                _Distance = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodesProperties.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodesProperties</returns>
            public ResponseTimeFilterPostcodesProperties Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodesProperties(
                    TravelTime: _TravelTime,
                    Distance: _Distance
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}
