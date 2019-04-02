using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterFastArrivalSearches
    /// </summary>
    public sealed class RequestTimeFilterFastArrivalSearches:  IEquatable<RequestTimeFilterFastArrivalSearches>
    { 
        /// <summary>
        /// ManyToOne
        /// </summary>
        public List<RequestTimeFilterFastArrivalManyToOneSearch> ManyToOne { get; private set; }

        /// <summary>
        /// OneToMany
        /// </summary>
        public List<RequestTimeFilterFastArrivalOneToManySearch> OneToMany { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterFastArrivalSearches.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterFastArrivalSearches()
        {
        }

        private RequestTimeFilterFastArrivalSearches(List<RequestTimeFilterFastArrivalManyToOneSearch> ManyToOne, List<RequestTimeFilterFastArrivalOneToManySearch> OneToMany)
        {
            
            this.ManyToOne = ManyToOne;
            
            this.OneToMany = OneToMany;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterFastArrivalSearches.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalSearchesBuilder</returns>
        public static RequestTimeFilterFastArrivalSearchesBuilder Builder()
        {
            return new RequestTimeFilterFastArrivalSearchesBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterFastArrivalSearchesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalSearchesBuilder</returns>
        public RequestTimeFilterFastArrivalSearchesBuilder With()
        {
            return Builder()
                .ManyToOne(ManyToOne)
                .OneToMany(OneToMany);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTimeFilterFastArrivalSearches other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterFastArrivalSearches.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalSearches</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalSearches</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterFastArrivalSearches left, RequestTimeFilterFastArrivalSearches right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterFastArrivalSearches.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalSearches</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalSearches</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterFastArrivalSearches left, RequestTimeFilterFastArrivalSearches right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterFastArrivalSearches.
        /// </summary>
        public sealed class RequestTimeFilterFastArrivalSearchesBuilder
        {
            private List<RequestTimeFilterFastArrivalManyToOneSearch> _ManyToOne;
            private List<RequestTimeFilterFastArrivalOneToManySearch> _OneToMany;

            internal RequestTimeFilterFastArrivalSearchesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalSearches.ManyToOne property.
            /// </summary>
            /// <param name="value">ManyToOne</param>
            public RequestTimeFilterFastArrivalSearchesBuilder ManyToOne(List<RequestTimeFilterFastArrivalManyToOneSearch> value)
            {
                _ManyToOne = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalSearches.OneToMany property.
            /// </summary>
            /// <param name="value">OneToMany</param>
            public RequestTimeFilterFastArrivalSearchesBuilder OneToMany(List<RequestTimeFilterFastArrivalOneToManySearch> value)
            {
                _OneToMany = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterFastArrivalSearches.
            /// </summary>
            /// <returns>RequestTimeFilterFastArrivalSearches</returns>
            public RequestTimeFilterFastArrivalSearches Build()
            {
                Validate();
                return new RequestTimeFilterFastArrivalSearches(
                    ManyToOne: _ManyToOne,
                    OneToMany: _OneToMany
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}