using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// Coords
    /// </summary>
    public sealed class Coords:  IEquatable<Coords>
    { 
        /// <summary>
        /// Lat
        /// </summary>
        public double? Lat { get; private set; }

        /// <summary>
        /// Lng
        /// </summary>
        public double? Lng { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use Coords.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public Coords()
        {
        }

        private Coords(double? Lat, double? Lng)
        {
            
            this.Lat = Lat;
            
            this.Lng = Lng;
            
        }

        /// <summary>
        /// Returns builder of Coords.
        /// </summary>
        /// <returns>CoordsBuilder</returns>
        public static CoordsBuilder Builder()
        {
            return new CoordsBuilder();
        }

        /// <summary>
        /// Returns CoordsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>CoordsBuilder</returns>
        public CoordsBuilder With()
        {
            return Builder()
                .Lat(Lat)
                .Lng(Lng);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(Coords other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (Coords.
        /// </summary>
        /// <param name="left">Compared (Coords</param>
        /// <param name="right">Compared (Coords</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (Coords left, Coords right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (Coords.
        /// </summary>
        /// <param name="left">Compared (Coords</param>
        /// <param name="right">Compared (Coords</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (Coords left, Coords right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of Coords.
        /// </summary>
        public sealed class CoordsBuilder
        {
            private double? _Lat;
            private double? _Lng;

            internal CoordsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for Coords.Lat property.
            /// </summary>
            /// <param name="value">Lat</param>
            public CoordsBuilder Lat(double? value)
            {
                _Lat = value;
                return this;
            }

            /// <summary>
            /// Sets value for Coords.Lng property.
            /// </summary>
            /// <param name="value">Lng</param>
            public CoordsBuilder Lng(double? value)
            {
                _Lng = value;
                return this;
            }


            /// <summary>
            /// Builds instance of Coords.
            /// </summary>
            /// <returns>Coords</returns>
            public Coords Build()
            {
                Validate();
                return new Coords(
                    Lat: _Lat,
                    Lng: _Lng
                );
            }

            private void Validate()
            { 
                if (_Lat == null)
                {
                    throw new ArgumentException("Lat is a required property for Coords and cannot be null");
                } 
                if (_Lng == null)
                {
                    throw new ArgumentException("Lng is a required property for Coords and cannot be null");
                } 
            }
        }

        
    }
}