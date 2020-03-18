using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeSectorProperties
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeSectorProperties:  IEquatable<ResponseTimeFilterPostcodeSectorProperties>
    { 
        /// <summary>
        /// TravelTimeReachable
        /// </summary>
        public ResponseTravelTimeStatistics TravelTimeReachable { get; private set; }

        /// <summary>
        /// TravelTimeAll
        /// </summary>
        public ResponseTravelTimeStatistics TravelTimeAll { get; private set; }

        /// <summary>
        /// Coverage
        /// </summary>
        public double? Coverage { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterPostcodeSectorProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeSectorProperties()
        {
        }

        private ResponseTimeFilterPostcodeSectorProperties(ResponseTravelTimeStatistics TravelTimeReachable, ResponseTravelTimeStatistics TravelTimeAll, double? Coverage)
        {
            
            this.TravelTimeReachable = TravelTimeReachable;
            
            this.TravelTimeAll = TravelTimeAll;
            
            this.Coverage = Coverage;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeSectorProperties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorPropertiesBuilder</returns>
        public static ResponseTimeFilterPostcodeSectorPropertiesBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeSectorPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeSectorPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeSectorPropertiesBuilder</returns>
        public ResponseTimeFilterPostcodeSectorPropertiesBuilder With()
        {
            return Builder()
                .TravelTimeReachable(TravelTimeReachable)
                .TravelTimeAll(TravelTimeAll)
                .Coverage(Coverage);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterPostcodeSectorProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeSectorProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectorProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectorProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeSectorProperties left, ResponseTimeFilterPostcodeSectorProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeSectorProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeSectorProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeSectorProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeSectorProperties left, ResponseTimeFilterPostcodeSectorProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeSectorProperties.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeSectorPropertiesBuilder
        {
            private ResponseTravelTimeStatistics _TravelTimeReachable;
            private ResponseTravelTimeStatistics _TravelTimeAll;
            private double? _Coverage;

            internal ResponseTimeFilterPostcodeSectorPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectorProperties.TravelTimeReachable property.
            /// </summary>
            /// <param name="value">TravelTimeReachable</param>
            public ResponseTimeFilterPostcodeSectorPropertiesBuilder TravelTimeReachable(ResponseTravelTimeStatistics value)
            {
                _TravelTimeReachable = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectorProperties.TravelTimeAll property.
            /// </summary>
            /// <param name="value">TravelTimeAll</param>
            public ResponseTimeFilterPostcodeSectorPropertiesBuilder TravelTimeAll(ResponseTravelTimeStatistics value)
            {
                _TravelTimeAll = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeSectorProperties.Coverage property.
            /// </summary>
            /// <param name="value">Coverage</param>
            public ResponseTimeFilterPostcodeSectorPropertiesBuilder Coverage(double? value)
            {
                _Coverage = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeSectorProperties.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeSectorProperties</returns>
            public ResponseTimeFilterPostcodeSectorProperties Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeSectorProperties(
                    TravelTimeReachable: _TravelTimeReachable,
                    TravelTimeAll: _TravelTimeAll,
                    Coverage: _Coverage
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}