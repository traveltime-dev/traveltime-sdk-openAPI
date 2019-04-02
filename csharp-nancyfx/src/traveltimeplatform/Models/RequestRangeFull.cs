using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestRangeFull
    /// </summary>
    public sealed class RequestRangeFull:  IEquatable<RequestRangeFull>
    { 
        /// <summary>
        /// Enabled
        /// </summary>
        public bool? Enabled { get; private set; }

        /// <summary>
        /// MaxResults
        /// </summary>
        public int? MaxResults { get; private set; }

        /// <summary>
        /// Width
        /// </summary>
        public int? Width { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestRangeFull.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestRangeFull()
        {
        }

        private RequestRangeFull(bool? Enabled, int? MaxResults, int? Width)
        {
            
            this.Enabled = Enabled;
            
            this.MaxResults = MaxResults;
            
            this.Width = Width;
            
        }

        /// <summary>
        /// Returns builder of RequestRangeFull.
        /// </summary>
        /// <returns>RequestRangeFullBuilder</returns>
        public static RequestRangeFullBuilder Builder()
        {
            return new RequestRangeFullBuilder();
        }

        /// <summary>
        /// Returns RequestRangeFullBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestRangeFullBuilder</returns>
        public RequestRangeFullBuilder With()
        {
            return Builder()
                .Enabled(Enabled)
                .MaxResults(MaxResults)
                .Width(Width);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestRangeFull other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestRangeFull.
        /// </summary>
        /// <param name="left">Compared (RequestRangeFull</param>
        /// <param name="right">Compared (RequestRangeFull</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestRangeFull left, RequestRangeFull right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestRangeFull.
        /// </summary>
        /// <param name="left">Compared (RequestRangeFull</param>
        /// <param name="right">Compared (RequestRangeFull</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestRangeFull left, RequestRangeFull right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestRangeFull.
        /// </summary>
        public sealed class RequestRangeFullBuilder
        {
            private bool? _Enabled;
            private int? _MaxResults;
            private int? _Width;

            internal RequestRangeFullBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestRangeFull.Enabled property.
            /// </summary>
            /// <param name="value">Enabled</param>
            public RequestRangeFullBuilder Enabled(bool? value)
            {
                _Enabled = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRangeFull.MaxResults property.
            /// </summary>
            /// <param name="value">MaxResults</param>
            public RequestRangeFullBuilder MaxResults(int? value)
            {
                _MaxResults = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRangeFull.Width property.
            /// </summary>
            /// <param name="value">Width</param>
            public RequestRangeFullBuilder Width(int? value)
            {
                _Width = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestRangeFull.
            /// </summary>
            /// <returns>RequestRangeFull</returns>
            public RequestRangeFull Build()
            {
                Validate();
                return new RequestRangeFull(
                    Enabled: _Enabled,
                    MaxResults: _MaxResults,
                    Width: _Width
                );
            }

            private void Validate()
            { 
                if (_Enabled == null)
                {
                    throw new ArgumentException("Enabled is a required property for RequestRangeFull and cannot be null");
                } 
                if (_MaxResults == null)
                {
                    throw new ArgumentException("MaxResults is a required property for RequestRangeFull and cannot be null");
                } 
                if (_Width == null)
                {
                    throw new ArgumentException("Width is a required property for RequestRangeFull and cannot be null");
                } 
            }
        }

        
    }
}