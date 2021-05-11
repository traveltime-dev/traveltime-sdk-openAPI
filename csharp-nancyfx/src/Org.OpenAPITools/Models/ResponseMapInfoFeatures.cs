using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseMapInfoFeatures
    /// </summary>
    public sealed class ResponseMapInfoFeatures:  IEquatable<ResponseMapInfoFeatures>
    { 
        /// <summary>
        /// PublicTransport
        /// </summary>
        public ResponseMapInfoFeaturesPublicTransport PublicTransport { get; private set; }

        /// <summary>
        /// Fares
        /// </summary>
        public bool? Fares { get; private set; }

        /// <summary>
        /// Postcodes
        /// </summary>
        public bool? Postcodes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseMapInfoFeatures.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseMapInfoFeatures()
        {
        }

        private ResponseMapInfoFeatures(ResponseMapInfoFeaturesPublicTransport PublicTransport, bool? Fares, bool? Postcodes)
        {
            
            this.PublicTransport = PublicTransport;
            
            this.Fares = Fares;
            
            this.Postcodes = Postcodes;
            
        }

        /// <summary>
        /// Returns builder of ResponseMapInfoFeatures.
        /// </summary>
        /// <returns>ResponseMapInfoFeaturesBuilder</returns>
        public static ResponseMapInfoFeaturesBuilder Builder()
        {
            return new ResponseMapInfoFeaturesBuilder();
        }

        /// <summary>
        /// Returns ResponseMapInfoFeaturesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseMapInfoFeaturesBuilder</returns>
        public ResponseMapInfoFeaturesBuilder With()
        {
            return Builder()
                .PublicTransport(PublicTransport)
                .Fares(Fares)
                .Postcodes(Postcodes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseMapInfoFeatures other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseMapInfoFeatures.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoFeatures</param>
        /// <param name="right">Compared (ResponseMapInfoFeatures</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseMapInfoFeatures left, ResponseMapInfoFeatures right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseMapInfoFeatures.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoFeatures</param>
        /// <param name="right">Compared (ResponseMapInfoFeatures</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseMapInfoFeatures left, ResponseMapInfoFeatures right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseMapInfoFeatures.
        /// </summary>
        public sealed class ResponseMapInfoFeaturesBuilder
        {
            private ResponseMapInfoFeaturesPublicTransport _PublicTransport;
            private bool? _Fares;
            private bool? _Postcodes;

            internal ResponseMapInfoFeaturesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseMapInfoFeatures.PublicTransport property.
            /// </summary>
            /// <param name="value">PublicTransport</param>
            public ResponseMapInfoFeaturesBuilder PublicTransport(ResponseMapInfoFeaturesPublicTransport value)
            {
                _PublicTransport = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseMapInfoFeatures.Fares property.
            /// </summary>
            /// <param name="value">Fares</param>
            public ResponseMapInfoFeaturesBuilder Fares(bool? value)
            {
                _Fares = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseMapInfoFeatures.Postcodes property.
            /// </summary>
            /// <param name="value">Postcodes</param>
            public ResponseMapInfoFeaturesBuilder Postcodes(bool? value)
            {
                _Postcodes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseMapInfoFeatures.
            /// </summary>
            /// <returns>ResponseMapInfoFeatures</returns>
            public ResponseMapInfoFeatures Build()
            {
                Validate();
                return new ResponseMapInfoFeatures(
                    PublicTransport: _PublicTransport,
                    Fares: _Fares,
                    Postcodes: _Postcodes
                );
            }

            private void Validate()
            { 
                if (_Fares == null)
                {
                    throw new ArgumentException("Fares is a required property for ResponseMapInfoFeatures and cannot be null");
                } 
                if (_Postcodes == null)
                {
                    throw new ArgumentException("Postcodes is a required property for ResponseMapInfoFeatures and cannot be null");
                } 
            }
        }

        
    }
}
