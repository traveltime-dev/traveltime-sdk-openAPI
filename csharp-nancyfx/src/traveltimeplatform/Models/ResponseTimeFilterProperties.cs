using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseTimeFilterProperties
    /// </summary>
    public sealed class ResponseTimeFilterProperties:  IEquatable<ResponseTimeFilterProperties>
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
        /// DistanceBreakdown
        /// </summary>
        public List<ResponseDistanceBreakdownItem> DistanceBreakdown { get; private set; }

        /// <summary>
        /// Fares
        /// </summary>
        public ResponseFares Fares { get; private set; }

        /// <summary>
        /// Route
        /// </summary>
        public ResponseRoute Route { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTimeFilterProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTimeFilterProperties()
        {
        }

        private ResponseTimeFilterProperties(int? TravelTime, int? Distance, List<ResponseDistanceBreakdownItem> DistanceBreakdown, ResponseFares Fares, ResponseRoute Route)
        {
            
            this.TravelTime = TravelTime;
            
            this.Distance = Distance;
            
            this.DistanceBreakdown = DistanceBreakdown;
            
            this.Fares = Fares;
            
            this.Route = Route;
            
        }

        /// <summary>
        /// Returns builder of ResponseTimeFilterProperties.
        /// </summary>
        /// <returns>ResponseTimeFilterPropertiesBuilder</returns>
        public static ResponseTimeFilterPropertiesBuilder Builder()
        {
            return new ResponseTimeFilterPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseTimeFilterPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTimeFilterPropertiesBuilder</returns>
        public ResponseTimeFilterPropertiesBuilder With()
        {
            return Builder()
                .TravelTime(TravelTime)
                .Distance(Distance)
                .DistanceBreakdown(DistanceBreakdown)
                .Fares(Fares)
                .Route(Route);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTimeFilterProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTimeFilterProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTimeFilterProperties left, ResponseTimeFilterProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTimeFilterProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseTimeFilterProperties</param>
        /// <param name="right">Compared (ResponseTimeFilterProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTimeFilterProperties left, ResponseTimeFilterProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTimeFilterProperties.
        /// </summary>
        public sealed class ResponseTimeFilterPropertiesBuilder
        {
            private int? _TravelTime;
            private int? _Distance;
            private List<ResponseDistanceBreakdownItem> _DistanceBreakdown;
            private ResponseFares _Fares;
            private ResponseRoute _Route;

            internal ResponseTimeFilterPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterProperties.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public ResponseTimeFilterPropertiesBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterProperties.Distance property.
            /// </summary>
            /// <param name="value">Distance</param>
            public ResponseTimeFilterPropertiesBuilder Distance(int? value)
            {
                _Distance = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterProperties.DistanceBreakdown property.
            /// </summary>
            /// <param name="value">DistanceBreakdown</param>
            public ResponseTimeFilterPropertiesBuilder DistanceBreakdown(List<ResponseDistanceBreakdownItem> value)
            {
                _DistanceBreakdown = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterProperties.Fares property.
            /// </summary>
            /// <param name="value">Fares</param>
            public ResponseTimeFilterPropertiesBuilder Fares(ResponseFares value)
            {
                _Fares = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTimeFilterProperties.Route property.
            /// </summary>
            /// <param name="value">Route</param>
            public ResponseTimeFilterPropertiesBuilder Route(ResponseRoute value)
            {
                _Route = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTimeFilterProperties.
            /// </summary>
            /// <returns>ResponseTimeFilterProperties</returns>
            public ResponseTimeFilterProperties Build()
            {
                Validate();
                return new ResponseTimeFilterProperties(
                    TravelTime: _TravelTime,
                    Distance: _Distance,
                    DistanceBreakdown: _DistanceBreakdown,
                    Fares: _Fares,
                    Route: _Route
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}