using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseDistanceBreakdownItem
    /// </summary>
    public sealed class ResponseDistanceBreakdownItem:  IEquatable<ResponseDistanceBreakdownItem>
    { 
        /// <summary>
        /// Mode
        /// </summary>
        public ResponseTransportationMode? Mode { get; private set; }

        /// <summary>
        /// Distance
        /// </summary>
        public int? Distance { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseDistanceBreakdownItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseDistanceBreakdownItem()
        {
        }

        private ResponseDistanceBreakdownItem(ResponseTransportationMode? Mode, int? Distance)
        {
            
            this.Mode = Mode;
            
            this.Distance = Distance;
            
        }

        /// <summary>
        /// Returns builder of ResponseDistanceBreakdownItem.
        /// </summary>
        /// <returns>ResponseDistanceBreakdownItemBuilder</returns>
        public static ResponseDistanceBreakdownItemBuilder Builder()
        {
            return new ResponseDistanceBreakdownItemBuilder();
        }

        /// <summary>
        /// Returns ResponseDistanceBreakdownItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseDistanceBreakdownItemBuilder</returns>
        public ResponseDistanceBreakdownItemBuilder With()
        {
            return Builder()
                .Mode(Mode)
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

        public bool Equals(ResponseDistanceBreakdownItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseDistanceBreakdownItem.
        /// </summary>
        /// <param name="left">Compared (ResponseDistanceBreakdownItem</param>
        /// <param name="right">Compared (ResponseDistanceBreakdownItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseDistanceBreakdownItem left, ResponseDistanceBreakdownItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseDistanceBreakdownItem.
        /// </summary>
        /// <param name="left">Compared (ResponseDistanceBreakdownItem</param>
        /// <param name="right">Compared (ResponseDistanceBreakdownItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseDistanceBreakdownItem left, ResponseDistanceBreakdownItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseDistanceBreakdownItem.
        /// </summary>
        public sealed class ResponseDistanceBreakdownItemBuilder
        {
            private ResponseTransportationMode? _Mode;
            private int? _Distance;

            internal ResponseDistanceBreakdownItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseDistanceBreakdownItem.Mode property.
            /// </summary>
            /// <param name="value">Mode</param>
            public ResponseDistanceBreakdownItemBuilder Mode(ResponseTransportationMode? value)
            {
                _Mode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseDistanceBreakdownItem.Distance property.
            /// </summary>
            /// <param name="value">Distance</param>
            public ResponseDistanceBreakdownItemBuilder Distance(int? value)
            {
                _Distance = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseDistanceBreakdownItem.
            /// </summary>
            /// <returns>ResponseDistanceBreakdownItem</returns>
            public ResponseDistanceBreakdownItem Build()
            {
                Validate();
                return new ResponseDistanceBreakdownItem(
                    Mode: _Mode,
                    Distance: _Distance
                );
            }

            private void Validate()
            { 
                if (_Mode == null)
                {
                    throw new ArgumentException("Mode is a required property for ResponseDistanceBreakdownItem and cannot be null");
                } 
                if (_Distance == null)
                {
                    throw new ArgumentException("Distance is a required property for ResponseDistanceBreakdownItem and cannot be null");
                } 
            }
        }

        
        public enum ResponseTransportationMode { Car, Parking, Boarding, Walk, Bike, Train, RailNational, RailOverground, RailUnderground, RailDlr, Bus, CableCar, Plane, Ferry, Coach };
    }
}