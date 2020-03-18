using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseMapInfoFeaturesPublicTransport
    /// </summary>
    public sealed class ResponseMapInfoFeaturesPublicTransport:  IEquatable<ResponseMapInfoFeaturesPublicTransport>
    { 
        /// <summary>
        /// DateStart
        /// </summary>
        public DateTime? DateStart { get; private set; }

        /// <summary>
        /// DateEnd
        /// </summary>
        public DateTime? DateEnd { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseMapInfoFeaturesPublicTransport.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseMapInfoFeaturesPublicTransport()
        {
        }

        private ResponseMapInfoFeaturesPublicTransport(DateTime? DateStart, DateTime? DateEnd)
        {
            
            this.DateStart = DateStart;
            
            this.DateEnd = DateEnd;
            
        }

        /// <summary>
        /// Returns builder of ResponseMapInfoFeaturesPublicTransport.
        /// </summary>
        /// <returns>ResponseMapInfoFeaturesPublicTransportBuilder</returns>
        public static ResponseMapInfoFeaturesPublicTransportBuilder Builder()
        {
            return new ResponseMapInfoFeaturesPublicTransportBuilder();
        }

        /// <summary>
        /// Returns ResponseMapInfoFeaturesPublicTransportBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseMapInfoFeaturesPublicTransportBuilder</returns>
        public ResponseMapInfoFeaturesPublicTransportBuilder With()
        {
            return Builder()
                .DateStart(DateStart)
                .DateEnd(DateEnd);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseMapInfoFeaturesPublicTransport other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseMapInfoFeaturesPublicTransport.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoFeaturesPublicTransport</param>
        /// <param name="right">Compared (ResponseMapInfoFeaturesPublicTransport</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseMapInfoFeaturesPublicTransport left, ResponseMapInfoFeaturesPublicTransport right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseMapInfoFeaturesPublicTransport.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoFeaturesPublicTransport</param>
        /// <param name="right">Compared (ResponseMapInfoFeaturesPublicTransport</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseMapInfoFeaturesPublicTransport left, ResponseMapInfoFeaturesPublicTransport right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseMapInfoFeaturesPublicTransport.
        /// </summary>
        public sealed class ResponseMapInfoFeaturesPublicTransportBuilder
        {
            private DateTime? _DateStart;
            private DateTime? _DateEnd;

            internal ResponseMapInfoFeaturesPublicTransportBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseMapInfoFeaturesPublicTransport.DateStart property.
            /// </summary>
            /// <param name="value">DateStart</param>
            public ResponseMapInfoFeaturesPublicTransportBuilder DateStart(DateTime? value)
            {
                _DateStart = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseMapInfoFeaturesPublicTransport.DateEnd property.
            /// </summary>
            /// <param name="value">DateEnd</param>
            public ResponseMapInfoFeaturesPublicTransportBuilder DateEnd(DateTime? value)
            {
                _DateEnd = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseMapInfoFeaturesPublicTransport.
            /// </summary>
            /// <returns>ResponseMapInfoFeaturesPublicTransport</returns>
            public ResponseMapInfoFeaturesPublicTransport Build()
            {
                Validate();
                return new ResponseMapInfoFeaturesPublicTransport(
                    DateStart: _DateStart,
                    DateEnd: _DateEnd
                );
            }

            private void Validate()
            { 
                if (_DateStart == null)
                {
                    throw new ArgumentException("DateStart is a required property for ResponseMapInfoFeaturesPublicTransport and cannot be null");
                } 
                if (_DateEnd == null)
                {
                    throw new ArgumentException("DateEnd is a required property for ResponseMapInfoFeaturesPublicTransport and cannot be null");
                } 
            }
        }

        
    }
}