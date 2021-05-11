using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseFaresBreakdownItem
    /// </summary>
    public sealed class ResponseFaresBreakdownItem:  IEquatable<ResponseFaresBreakdownItem>
    { 
        /// <summary>
        /// Modes
        /// </summary>
        public List<ResponseTransportationMode> Modes { get; private set; }

        /// <summary>
        /// RoutePartIds
        /// </summary>
        public List<int?> RoutePartIds { get; private set; }

        /// <summary>
        /// Tickets
        /// </summary>
        public List<ResponseFareTicket> Tickets { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseFaresBreakdownItem.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseFaresBreakdownItem()
        {
        }

        private ResponseFaresBreakdownItem(List<ResponseTransportationMode> Modes, List<int?> RoutePartIds, List<ResponseFareTicket> Tickets)
        {
            
            this.Modes = Modes;
            
            this.RoutePartIds = RoutePartIds;
            
            this.Tickets = Tickets;
            
        }

        /// <summary>
        /// Returns builder of ResponseFaresBreakdownItem.
        /// </summary>
        /// <returns>ResponseFaresBreakdownItemBuilder</returns>
        public static ResponseFaresBreakdownItemBuilder Builder()
        {
            return new ResponseFaresBreakdownItemBuilder();
        }

        /// <summary>
        /// Returns ResponseFaresBreakdownItemBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseFaresBreakdownItemBuilder</returns>
        public ResponseFaresBreakdownItemBuilder With()
        {
            return Builder()
                .Modes(Modes)
                .RoutePartIds(RoutePartIds)
                .Tickets(Tickets);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseFaresBreakdownItem other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseFaresBreakdownItem.
        /// </summary>
        /// <param name="left">Compared (ResponseFaresBreakdownItem</param>
        /// <param name="right">Compared (ResponseFaresBreakdownItem</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseFaresBreakdownItem left, ResponseFaresBreakdownItem right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseFaresBreakdownItem.
        /// </summary>
        /// <param name="left">Compared (ResponseFaresBreakdownItem</param>
        /// <param name="right">Compared (ResponseFaresBreakdownItem</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseFaresBreakdownItem left, ResponseFaresBreakdownItem right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseFaresBreakdownItem.
        /// </summary>
        public sealed class ResponseFaresBreakdownItemBuilder
        {
            private List<ResponseTransportationMode> _Modes;
            private List<int?> _RoutePartIds;
            private List<ResponseFareTicket> _Tickets;

            internal ResponseFaresBreakdownItemBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseFaresBreakdownItem.Modes property.
            /// </summary>
            /// <param name="value">Modes</param>
            public ResponseFaresBreakdownItemBuilder Modes(List<ResponseTransportationMode> value)
            {
                _Modes = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseFaresBreakdownItem.RoutePartIds property.
            /// </summary>
            /// <param name="value">RoutePartIds</param>
            public ResponseFaresBreakdownItemBuilder RoutePartIds(List<int?> value)
            {
                _RoutePartIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseFaresBreakdownItem.Tickets property.
            /// </summary>
            /// <param name="value">Tickets</param>
            public ResponseFaresBreakdownItemBuilder Tickets(List<ResponseFareTicket> value)
            {
                _Tickets = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseFaresBreakdownItem.
            /// </summary>
            /// <returns>ResponseFaresBreakdownItem</returns>
            public ResponseFaresBreakdownItem Build()
            {
                Validate();
                return new ResponseFaresBreakdownItem(
                    Modes: _Modes,
                    RoutePartIds: _RoutePartIds,
                    Tickets: _Tickets
                );
            }

            private void Validate()
            { 
                if (_Modes == null)
                {
                    throw new ArgumentException("Modes is a required property for ResponseFaresBreakdownItem and cannot be null");
                } 
                if (_RoutePartIds == null)
                {
                    throw new ArgumentException("RoutePartIds is a required property for ResponseFaresBreakdownItem and cannot be null");
                } 
                if (_Tickets == null)
                {
                    throw new ArgumentException("Tickets is a required property for ResponseFaresBreakdownItem and cannot be null");
                } 
            }
        }

        
    }
}
