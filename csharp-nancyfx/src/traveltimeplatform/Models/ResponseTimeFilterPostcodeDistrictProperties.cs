using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseTimeFilterPostcodeDistrictProperties
    /// </summary>
    public sealed class ResponseTimeFilterPostcodeDistrictProperties:  IEquatable<ResponseTimeFilterPostcodeDistrictProperties>
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
        /// Use ResponseTimeFilterPostcodeDistrictProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterPostcodeDistrictProperties()
        {
        }

        private ResponseTimeFilterPostcodeDistrictProperties(ResponseTravelTimeStatistics TravelTimeReachable, ResponseTravelTimeStatistics TravelTimeAll, double? Coverage)
        {
            
            this.TravelTimeReachable = TravelTimeReachable;
            
            this.TravelTimeAll = TravelTimeAll;
            
            this.Coverage = Coverage;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterPostcodeDistrictProperties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictPropertiesBuilder</returns>
        public static ResponseTimeFilterPostcodeDistrictPropertiesBuilder Builder()
        {
            return new ResponseTimeFilterPostcodeDistrictPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPostcodeDistrictPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPostcodeDistrictPropertiesBuilder</returns>
        public ResponseTimeFilterPostcodeDistrictPropertiesBuilder With()
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

        public bool Equals(ResponseTimeFilterPostcodeDistrictProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterPostcodeDistrictProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrictProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrictProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterPostcodeDistrictProperties left, ResponseTimeFilterPostcodeDistrictProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterPostcodeDistrictProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterPostcodeDistrictProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterPostcodeDistrictProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterPostcodeDistrictProperties left, ResponseTimeFilterPostcodeDistrictProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterPostcodeDistrictProperties.
        /// </summary>
        public sealed class ResponseTimeFilterPostcodeDistrictPropertiesBuilder
        {
            private ResponseTravelTimeStatistics _TravelTimeReachable;
            private ResponseTravelTimeStatistics _TravelTimeAll;
            private double? _Coverage;

            internal ResponseTimeFilterPostcodeDistrictPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrictProperties.TravelTimeReachable property.
            /// </summary>
            /// <param name="value">TravelTimeReachable</param>
            public ResponseTimeFilterPostcodeDistrictPropertiesBuilder TravelTimeReachable(ResponseTravelTimeStatistics value)
            {
                _TravelTimeReachable = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrictProperties.TravelTimeAll property.
            /// </summary>
            /// <param name="value">TravelTimeAll</param>
            public ResponseTimeFilterPostcodeDistrictPropertiesBuilder TravelTimeAll(ResponseTravelTimeStatistics value)
            {
                _TravelTimeAll = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterPostcodeDistrictProperties.Coverage property.
            /// </summary>
            /// <param name="value">Coverage</param>
            public ResponseTimeFilterPostcodeDistrictPropertiesBuilder Coverage(double? value)
            {
                _Coverage = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterPostcodeDistrictProperties.
            /// </summary>
            /// <returns>ResponseTimeFilterPostcodeDistrictProperties</returns>
            public ResponseTimeFilterPostcodeDistrictProperties Build()
            {
                Validate();
                return new ResponseTimeFilterPostcodeDistrictProperties(
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