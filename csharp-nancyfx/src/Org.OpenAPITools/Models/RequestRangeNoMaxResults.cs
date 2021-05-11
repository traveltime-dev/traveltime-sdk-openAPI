using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestRangeNoMaxResults
    /// </summary>
    public sealed class RequestRangeNoMaxResults:  IEquatable<RequestRangeNoMaxResults>
    { 
        /// <summary>
        /// Enabled
        /// </summary>
        public bool? Enabled { get; private set; }

        /// <summary>
        /// Width
        /// </summary>
        public int? Width { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestRangeNoMaxResults.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestRangeNoMaxResults()
        {
        }

        private RequestRangeNoMaxResults(bool? Enabled, int? Width)
        {
            
            this.Enabled = Enabled;
            
            this.Width = Width;
            
        }

        /// <summary>
        /// Returns builder of RequestRangeNoMaxResults.
        /// </summary>
        /// <returns>RequestRangeNoMaxResultsBuilder</returns>
        public static RequestRangeNoMaxResultsBuilder Builder()
        {
            return new RequestRangeNoMaxResultsBuilder();
        }

        /// <summary>
        /// Returns RequestRangeNoMaxResultsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestRangeNoMaxResultsBuilder</returns>
        public RequestRangeNoMaxResultsBuilder With()
        {
            return Builder()
                .Enabled(Enabled)
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

        public bool Equals(RequestRangeNoMaxResults other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestRangeNoMaxResults.
        /// </summary>
        /// <param name="left">Compared (RequestRangeNoMaxResults</param>
        /// <param name="right">Compared (RequestRangeNoMaxResults</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestRangeNoMaxResults left, RequestRangeNoMaxResults right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestRangeNoMaxResults.
        /// </summary>
        /// <param name="left">Compared (RequestRangeNoMaxResults</param>
        /// <param name="right">Compared (RequestRangeNoMaxResults</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestRangeNoMaxResults left, RequestRangeNoMaxResults right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestRangeNoMaxResults.
        /// </summary>
        public sealed class RequestRangeNoMaxResultsBuilder
        {
            private bool? _Enabled;
            private int? _Width;

            internal RequestRangeNoMaxResultsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestRangeNoMaxResults.Enabled property.
            /// </summary>
            /// <param name="value">Enabled</param>
            public RequestRangeNoMaxResultsBuilder Enabled(bool? value)
            {
                _Enabled = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRangeNoMaxResults.Width property.
            /// </summary>
            /// <param name="value">Width</param>
            public RequestRangeNoMaxResultsBuilder Width(int? value)
            {
                _Width = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestRangeNoMaxResults.
            /// </summary>
            /// <returns>RequestRangeNoMaxResults</returns>
            public RequestRangeNoMaxResults Build()
            {
                Validate();
                return new RequestRangeNoMaxResults(
                    Enabled: _Enabled,
                    Width: _Width
                );
            }

            private void Validate()
            { 
                if (_Enabled == null)
                {
                    throw new ArgumentException("Enabled is a required property for RequestRangeNoMaxResults and cannot be null");
                } 
                if (_Width == null)
                {
                    throw new ArgumentException("Width is a required property for RequestRangeNoMaxResults and cannot be null");
                } 
            }
        }

        
    }
}
