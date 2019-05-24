using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseFaresFast
    /// </summary>
    public sealed class ResponseFaresFast:  IEquatable<ResponseFaresFast>
    { 
        /// <summary>
        /// TicketsTotal
        /// </summary>
        public List<ResponseFareTicket> TicketsTotal { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseFaresFast.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseFaresFast()
        {
        }

        private ResponseFaresFast(List<ResponseFareTicket> TicketsTotal)
        {
            
            this.TicketsTotal = TicketsTotal;
            
        }

        /// <summary>
        /// Returns builder of ResponseFaresFast.
        /// </summary>
        /// <returns>ResponseFaresFastBuilder</returns>
        public static ResponseFaresFastBuilder Builder()
        {
            return new ResponseFaresFastBuilder();
        }

        /// <summary>
        /// Returns ResponseFaresFastBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseFaresFastBuilder</returns>
        public ResponseFaresFastBuilder With()
        {
            return Builder()
                .TicketsTotal(TicketsTotal);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseFaresFast other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseFaresFast.
        /// </summary>
        /// <param name="left">Compared (ResponseFaresFast</param>
        /// <param name="right">Compared (ResponseFaresFast</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseFaresFast left, ResponseFaresFast right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseFaresFast.
        /// </summary>
        /// <param name="left">Compared (ResponseFaresFast</param>
        /// <param name="right">Compared (ResponseFaresFast</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseFaresFast left, ResponseFaresFast right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseFaresFast.
        /// </summary>
        public sealed class ResponseFaresFastBuilder
        {
            private List<ResponseFareTicket> _TicketsTotal;

            internal ResponseFaresFastBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseFaresFast.TicketsTotal property.
            /// </summary>
            /// <param name="value">TicketsTotal</param>
            public ResponseFaresFastBuilder TicketsTotal(List<ResponseFareTicket> value)
            {
                _TicketsTotal = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseFaresFast.
            /// </summary>
            /// <returns>ResponseFaresFast</returns>
            public ResponseFaresFast Build()
            {
                Validate();
                return new ResponseFaresFast(
                    TicketsTotal: _TicketsTotal
                );
            }

            private void Validate()
            { 
                if (_TicketsTotal == null)
                {
                    throw new ArgumentException("TicketsTotal is a required property for ResponseFaresFast and cannot be null");
                } 
            }
        }

        
    }
}