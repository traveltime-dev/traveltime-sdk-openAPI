using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseRoute
    /// </summary>
    public sealed class ResponseRoute:  IEquatable<ResponseRoute>
    { 
        /// <summary>
        /// DepartureTime
        /// </summary>
        public DateTime? DepartureTime { get; private set; }

        /// <summary>
        /// ArrivalTime
        /// </summary>
        public DateTime? ArrivalTime { get; private set; }

        /// <summary>
        /// Parts
        /// </summary>
        public List<ResponseRoutePart> Parts { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoute.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoute()
        {
        }

        private ResponseRoute(DateTime? DepartureTime, DateTime? ArrivalTime, List<ResponseRoutePart> Parts)
        {
            
            this.DepartureTime = DepartureTime;
            
            this.ArrivalTime = ArrivalTime;
            
            this.Parts = Parts;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoute.
        /// </summary>
        /// <returns>ResponseRouteBuilder</returns>
        public static ResponseRouteBuilder Builder()
        {
            return new ResponseRouteBuilder();
        }

        /// <summary>
        /// Returns ResponseRouteBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRouteBuilder</returns>
        public ResponseRouteBuilder With()
        {
            return Builder()
                .DepartureTime(DepartureTime)
                .ArrivalTime(ArrivalTime)
                .Parts(Parts);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseRoute other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoute.
        /// </summary>
        /// <param name="left">Compared (ResponseRoute</param>
        /// <param name="right">Compared (ResponseRoute</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoute left, ResponseRoute right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoute.
        /// </summary>
        /// <param name="left">Compared (ResponseRoute</param>
        /// <param name="right">Compared (ResponseRoute</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoute left, ResponseRoute right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoute.
        /// </summary>
        public sealed class ResponseRouteBuilder
        {
            private DateTime? _DepartureTime;
            private DateTime? _ArrivalTime;
            private List<ResponseRoutePart> _Parts;

            internal ResponseRouteBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoute.DepartureTime property.
            /// </summary>
            /// <param name="value">DepartureTime</param>
            public ResponseRouteBuilder DepartureTime(DateTime? value)
            {
                _DepartureTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoute.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public ResponseRouteBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoute.Parts property.
            /// </summary>
            /// <param name="value">Parts</param>
            public ResponseRouteBuilder Parts(List<ResponseRoutePart> value)
            {
                _Parts = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoute.
            /// </summary>
            /// <returns>ResponseRoute</returns>
            public ResponseRoute Build()
            {
                Validate();
                return new ResponseRoute(
                    DepartureTime: _DepartureTime,
                    ArrivalTime: _ArrivalTime,
                    Parts: _Parts
                );
            }

            private void Validate()
            { 
                if (_DepartureTime == null)
                {
                    throw new ArgumentException("DepartureTime is a required property for ResponseRoute and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for ResponseRoute and cannot be null");
                } 
                if (_Parts == null)
                {
                    throw new ArgumentException("Parts is a required property for ResponseRoute and cannot be null");
                } 
            }
        }

        
    }
}