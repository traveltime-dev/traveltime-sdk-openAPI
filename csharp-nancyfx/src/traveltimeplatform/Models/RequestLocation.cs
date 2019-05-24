using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestLocation
    /// </summary>
    public sealed class RequestLocation:  IEquatable<RequestLocation>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Coords
        /// </summary>
        public Coords Coords { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestLocation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestLocation()
        {
        }

        private RequestLocation(string Id, Coords Coords)
        {
            
            this.Id = Id;
            
            this.Coords = Coords;
            
        }

        /// <summary>
        /// Returns builder of RequestLocation.
        /// </summary>
        /// <returns>RequestLocationBuilder</returns>
        public static RequestLocationBuilder Builder()
        {
            return new RequestLocationBuilder();
        }

        /// <summary>
        /// Returns RequestLocationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestLocationBuilder</returns>
        public RequestLocationBuilder With()
        {
            return Builder()
                .Id(Id)
                .Coords(Coords);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestLocation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestLocation.
        /// </summary>
        /// <param name="left">Compared (RequestLocation</param>
        /// <param name="right">Compared (RequestLocation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestLocation left, RequestLocation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestLocation.
        /// </summary>
        /// <param name="left">Compared (RequestLocation</param>
        /// <param name="right">Compared (RequestLocation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestLocation left, RequestLocation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestLocation.
        /// </summary>
        public sealed class RequestLocationBuilder
        {
            private string _Id;
            private Coords _Coords;

            internal RequestLocationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestLocation.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestLocationBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestLocation.Coords property.
            /// </summary>
            /// <param name="value">Coords</param>
            public RequestLocationBuilder Coords(Coords value)
            {
                _Coords = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestLocation.
            /// </summary>
            /// <returns>RequestLocation</returns>
            public RequestLocation Build()
            {
                Validate();
                return new RequestLocation(
                    Id: _Id,
                    Coords: _Coords
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestLocation and cannot be null");
                } 
                if (_Coords == null)
                {
                    throw new ArgumentException("Coords is a required property for RequestLocation and cannot be null");
                } 
            }
        }

        
    }
}