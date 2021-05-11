using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseFareTicket
    /// </summary>
    public sealed class ResponseFareTicket:  IEquatable<ResponseFareTicket>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public TypeEnum? Type { get; private set; }

        /// <summary>
        /// Price
        /// </summary>
        public double? Price { get; private set; }

        /// <summary>
        /// Currency
        /// </summary>
        public string Currency { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseFareTicket.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseFareTicket()
        {
        }

        private ResponseFareTicket(TypeEnum? Type, double? Price, string Currency)
        {
            
            this.Type = Type;
            
            this.Price = Price;
            
            this.Currency = Currency;
            
        }

        /// <summary>
        /// Returns builder of ResponseFareTicket.
        /// </summary>
        /// <returns>ResponseFareTicketBuilder</returns>
        public static ResponseFareTicketBuilder Builder()
        {
            return new ResponseFareTicketBuilder();
        }

        /// <summary>
        /// Returns ResponseFareTicketBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseFareTicketBuilder</returns>
        public ResponseFareTicketBuilder With()
        {
            return Builder()
                .Type(Type)
                .Price(Price)
                .Currency(Currency);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseFareTicket other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseFareTicket.
        /// </summary>
        /// <param name="left">Compared (ResponseFareTicket</param>
        /// <param name="right">Compared (ResponseFareTicket</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseFareTicket left, ResponseFareTicket right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseFareTicket.
        /// </summary>
        /// <param name="left">Compared (ResponseFareTicket</param>
        /// <param name="right">Compared (ResponseFareTicket</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseFareTicket left, ResponseFareTicket right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseFareTicket.
        /// </summary>
        public sealed class ResponseFareTicketBuilder
        {
            private TypeEnum? _Type;
            private double? _Price;
            private string _Currency;

            internal ResponseFareTicketBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseFareTicket.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public ResponseFareTicketBuilder Type(TypeEnum? value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseFareTicket.Price property.
            /// </summary>
            /// <param name="value">Price</param>
            public ResponseFareTicketBuilder Price(double? value)
            {
                _Price = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseFareTicket.Currency property.
            /// </summary>
            /// <param name="value">Currency</param>
            public ResponseFareTicketBuilder Currency(string value)
            {
                _Currency = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseFareTicket.
            /// </summary>
            /// <returns>ResponseFareTicket</returns>
            public ResponseFareTicket Build()
            {
                Validate();
                return new ResponseFareTicket(
                    Type: _Type,
                    Price: _Price,
                    Currency: _Currency
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for ResponseFareTicket and cannot be null");
                } 
                if (_Price == null)
                {
                    throw new ArgumentException("Price is a required property for ResponseFareTicket and cannot be null");
                } 
                if (_Currency == null)
                {
                    throw new ArgumentException("Currency is a required property for ResponseFareTicket and cannot be null");
                } 
            }
        }

        
        public enum TypeEnum { Single, Week, Month, Year };
    }
}
