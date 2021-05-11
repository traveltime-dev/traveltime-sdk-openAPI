using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTransportationFast
    /// </summary>
    public sealed class RequestTransportationFast:  IEquatable<RequestTransportationFast>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public TypeEnum? Type { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTransportationFast.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTransportationFast()
        {
        }

        private RequestTransportationFast(TypeEnum? Type)
        {
            
            this.Type = Type;
            
        }

        /// <summary>
        /// Returns builder of RequestTransportationFast.
        /// </summary>
        /// <returns>RequestTransportationFastBuilder</returns>
        public static RequestTransportationFastBuilder Builder()
        {
            return new RequestTransportationFastBuilder();
        }

        /// <summary>
        /// Returns RequestTransportationFastBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTransportationFastBuilder</returns>
        public RequestTransportationFastBuilder With()
        {
            return Builder()
                .Type(Type);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTransportationFast other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTransportationFast.
        /// </summary>
        /// <param name="left">Compared (RequestTransportationFast</param>
        /// <param name="right">Compared (RequestTransportationFast</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTransportationFast left, RequestTransportationFast right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTransportationFast.
        /// </summary>
        /// <param name="left">Compared (RequestTransportationFast</param>
        /// <param name="right">Compared (RequestTransportationFast</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTransportationFast left, RequestTransportationFast right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTransportationFast.
        /// </summary>
        public sealed class RequestTransportationFastBuilder
        {
            private TypeEnum? _Type;

            internal RequestTransportationFastBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTransportationFast.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public RequestTransportationFastBuilder Type(TypeEnum? value)
            {
                _Type = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTransportationFast.
            /// </summary>
            /// <returns>RequestTransportationFast</returns>
            public RequestTransportationFast Build()
            {
                Validate();
                return new RequestTransportationFast(
                    Type: _Type
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for RequestTransportationFast and cannot be null");
                } 
            }
        }

        
        public enum TypeEnum { PublicTransport, Driving, DrivingpublicTransport };
    }
}
