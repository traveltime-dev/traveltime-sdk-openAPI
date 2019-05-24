using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseFares
    /// </summary>
    public sealed class ResponseFares:  IEquatable<ResponseFares>
    { 
        /// <summary>
        /// Breakdown
        /// </summary>
        public List<ResponseFaresBreakdownItem> Breakdown { get; private set; }

        /// <summary>
        /// TicketsTotal
        /// </summary>
        public List<ResponseFareTicket> TicketsTotal { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseFares.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseFares()
        {
        }

        private ResponseFares(List<ResponseFaresBreakdownItem> Breakdown, List<ResponseFareTicket> TicketsTotal)
        {
            
            this.Breakdown = Breakdown;
            
            this.TicketsTotal = TicketsTotal;
            
        }

        /// <summary>
        /// Returns builder of ResponseFares.
        /// </summary>
        /// <returns>ResponseFaresBuilder</returns>
        public static ResponseFaresBuilder Builder()
        {
            return new ResponseFaresBuilder();
        }

        /// <summary>
        /// Returns ResponseFaresBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseFaresBuilder</returns>
        public ResponseFaresBuilder With()
        {
            return Builder()
                .Breakdown(Breakdown)
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

        public bool Equals(ResponseFares other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseFares.
        /// </summary>
        /// <param name="left">Compared (ResponseFares</param>
        /// <param name="right">Compared (ResponseFares</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseFares left, ResponseFares right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseFares.
        /// </summary>
        /// <param name="left">Compared (ResponseFares</param>
        /// <param name="right">Compared (ResponseFares</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseFares left, ResponseFares right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseFares.
        /// </summary>
        public sealed class ResponseFaresBuilder
        {
            private List<ResponseFaresBreakdownItem> _Breakdown;
            private List<ResponseFareTicket> _TicketsTotal;

            internal ResponseFaresBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseFares.Breakdown property.
            /// </summary>
            /// <param name="value">Breakdown</param>
            public ResponseFaresBuilder Breakdown(List<ResponseFaresBreakdownItem> value)
            {
                _Breakdown = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseFares.TicketsTotal property.
            /// </summary>
            /// <param name="value">TicketsTotal</param>
            public ResponseFaresBuilder TicketsTotal(List<ResponseFareTicket> value)
            {
                _TicketsTotal = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseFares.
            /// </summary>
            /// <returns>ResponseFares</returns>
            public ResponseFares Build()
            {
                Validate();
                return new ResponseFares(
                    Breakdown: _Breakdown,
                    TicketsTotal: _TicketsTotal
                );
            }

            private void Validate()
            { 
                if (_Breakdown == null)
                {
                    throw new ArgumentException("Breakdown is a required property for ResponseFares and cannot be null");
                } 
                if (_TicketsTotal == null)
                {
                    throw new ArgumentException("TicketsTotal is a required property for ResponseFares and cannot be null");
                } 
            }
        }

        
    }
}