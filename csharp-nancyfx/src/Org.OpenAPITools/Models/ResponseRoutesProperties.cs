using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseRoutesProperties
    /// </summary>
    public sealed class ResponseRoutesProperties:  IEquatable<ResponseRoutesProperties>
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
        /// Fares
        /// </summary>
        public ResponseFares Fares { get; private set; }

        /// <summary>
        /// Route
        /// </summary>
        public ResponseRoute Route { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoutesProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoutesProperties()
        {
        }

        private ResponseRoutesProperties(int? TravelTime, int? Distance, ResponseFares Fares, ResponseRoute Route)
        {
            
            this.TravelTime = TravelTime;
            
            this.Distance = Distance;
            
            this.Fares = Fares;
            
            this.Route = Route;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoutesProperties.
        /// </summary>
        /// <returns>ResponseRoutesPropertiesBuilder</returns>
        public static ResponseRoutesPropertiesBuilder Builder()
        {
            return new ResponseRoutesPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseRoutesPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRoutesPropertiesBuilder</returns>
        public ResponseRoutesPropertiesBuilder With()
        {
            return Builder()
                .TravelTime(TravelTime)
                .Distance(Distance)
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

        public bool Equals(ResponseRoutesProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoutesProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesProperties</param>
        /// <param name="right">Compared (ResponseRoutesProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoutesProperties left, ResponseRoutesProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoutesProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutesProperties</param>
        /// <param name="right">Compared (ResponseRoutesProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoutesProperties left, ResponseRoutesProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoutesProperties.
        /// </summary>
        public sealed class ResponseRoutesPropertiesBuilder
        {
            private int? _TravelTime;
            private int? _Distance;
            private ResponseFares _Fares;
            private ResponseRoute _Route;

            internal ResponseRoutesPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoutesProperties.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public ResponseRoutesPropertiesBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesProperties.Distance property.
            /// </summary>
            /// <param name="value">Distance</param>
            public ResponseRoutesPropertiesBuilder Distance(int? value)
            {
                _Distance = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesProperties.Fares property.
            /// </summary>
            /// <param name="value">Fares</param>
            public ResponseRoutesPropertiesBuilder Fares(ResponseFares value)
            {
                _Fares = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutesProperties.Route property.
            /// </summary>
            /// <param name="value">Route</param>
            public ResponseRoutesPropertiesBuilder Route(ResponseRoute value)
            {
                _Route = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoutesProperties.
            /// </summary>
            /// <returns>ResponseRoutesProperties</returns>
            public ResponseRoutesProperties Build()
            {
                Validate();
                return new ResponseRoutesProperties(
                    TravelTime: _TravelTime,
                    Distance: _Distance,
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
