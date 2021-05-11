using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseBox
    /// </summary>
    public sealed class ResponseBox:  IEquatable<ResponseBox>
    { 
        /// <summary>
        /// MinLat
        /// </summary>
        public double? MinLat { get; private set; }

        /// <summary>
        /// MaxLat
        /// </summary>
        public double? MaxLat { get; private set; }

        /// <summary>
        /// MinLng
        /// </summary>
        public double? MinLng { get; private set; }

        /// <summary>
        /// MaxLng
        /// </summary>
        public double? MaxLng { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseBox.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseBox()
        {
        }

        private ResponseBox(double? MinLat, double? MaxLat, double? MinLng, double? MaxLng)
        {
            
            this.MinLat = MinLat;
            
            this.MaxLat = MaxLat;
            
            this.MinLng = MinLng;
            
            this.MaxLng = MaxLng;
            
        }

        /// <summary>
        /// Returns builder of ResponseBox.
        /// </summary>
        /// <returns>ResponseBoxBuilder</returns>
        public static ResponseBoxBuilder Builder()
        {
            return new ResponseBoxBuilder();
        }

        /// <summary>
        /// Returns ResponseBoxBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseBoxBuilder</returns>
        public ResponseBoxBuilder With()
        {
            return Builder()
                .MinLat(MinLat)
                .MaxLat(MaxLat)
                .MinLng(MinLng)
                .MaxLng(MaxLng);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseBox other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseBox.
        /// </summary>
        /// <param name="left">Compared (ResponseBox</param>
        /// <param name="right">Compared (ResponseBox</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseBox left, ResponseBox right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseBox.
        /// </summary>
        /// <param name="left">Compared (ResponseBox</param>
        /// <param name="right">Compared (ResponseBox</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseBox left, ResponseBox right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseBox.
        /// </summary>
        public sealed class ResponseBoxBuilder
        {
            private double? _MinLat;
            private double? _MaxLat;
            private double? _MinLng;
            private double? _MaxLng;

            internal ResponseBoxBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseBox.MinLat property.
            /// </summary>
            /// <param name="value">MinLat</param>
            public ResponseBoxBuilder MinLat(double? value)
            {
                _MinLat = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseBox.MaxLat property.
            /// </summary>
            /// <param name="value">MaxLat</param>
            public ResponseBoxBuilder MaxLat(double? value)
            {
                _MaxLat = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseBox.MinLng property.
            /// </summary>
            /// <param name="value">MinLng</param>
            public ResponseBoxBuilder MinLng(double? value)
            {
                _MinLng = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseBox.MaxLng property.
            /// </summary>
            /// <param name="value">MaxLng</param>
            public ResponseBoxBuilder MaxLng(double? value)
            {
                _MaxLng = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseBox.
            /// </summary>
            /// <returns>ResponseBox</returns>
            public ResponseBox Build()
            {
                Validate();
                return new ResponseBox(
                    MinLat: _MinLat,
                    MaxLat: _MaxLat,
                    MinLng: _MinLng,
                    MaxLng: _MaxLng
                );
            }

            private void Validate()
            { 
                if (_MinLat == null)
                {
                    throw new ArgumentException("MinLat is a required property for ResponseBox and cannot be null");
                } 
                if (_MaxLat == null)
                {
                    throw new ArgumentException("MaxLat is a required property for ResponseBox and cannot be null");
                } 
                if (_MinLng == null)
                {
                    throw new ArgumentException("MinLng is a required property for ResponseBox and cannot be null");
                } 
                if (_MaxLng == null)
                {
                    throw new ArgumentException("MaxLng is a required property for ResponseBox and cannot be null");
                } 
            }
        }

        
    }
}
