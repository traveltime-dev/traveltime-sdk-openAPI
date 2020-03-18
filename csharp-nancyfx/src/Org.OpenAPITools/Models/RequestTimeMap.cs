using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeMap
    /// </summary>
    public sealed class RequestTimeMap:  IEquatable<RequestTimeMap>
    { 
        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestTimeMapDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestTimeMapArrivalSearch> ArrivalSearches { get; private set; }

        /// <summary>
        /// Unions
        /// </summary>
        public List<RequestUnionOnIntersection> Unions { get; private set; }

        /// <summary>
        /// Intersections
        /// </summary>
        public List<RequestUnionOnIntersection> Intersections { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeMap.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeMap()
        {
        }

        private RequestTimeMap(List<RequestTimeMapDepartureSearch> DepartureSearches, List<RequestTimeMapArrivalSearch> ArrivalSearches, List<RequestUnionOnIntersection> Unions, List<RequestUnionOnIntersection> Intersections)
        {
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
            this.Unions = Unions;
            
            this.Intersections = Intersections;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeMap.
        /// </summary>
        /// <returns>RequestTimeMapBuilder</returns>
        public static RequestTimeMapBuilder Builder()
        {
            return new RequestTimeMapBuilder();
        }

        /// <summary>
        /// Returns RequestTimeMapBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeMapBuilder</returns>
        public RequestTimeMapBuilder With()
        {
            return Builder()
                .DepartureSearches(DepartureSearches)
                .ArrivalSearches(ArrivalSearches)
                .Unions(Unions)
                .Intersections(Intersections);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTimeMap other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeMap.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMap</param>
        /// <param name="right">Compared (RequestTimeMap</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeMap left, RequestTimeMap right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeMap.
        /// </summary>
        /// <param name="left">Compared (RequestTimeMap</param>
        /// <param name="right">Compared (RequestTimeMap</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeMap left, RequestTimeMap right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeMap.
        /// </summary>
        public sealed class RequestTimeMapBuilder
        {
            private List<RequestTimeMapDepartureSearch> _DepartureSearches;
            private List<RequestTimeMapArrivalSearch> _ArrivalSearches;
            private List<RequestUnionOnIntersection> _Unions;
            private List<RequestUnionOnIntersection> _Intersections;

            internal RequestTimeMapBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeMap.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestTimeMapBuilder DepartureSearches(List<RequestTimeMapDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMap.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeMapBuilder ArrivalSearches(List<RequestTimeMapArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMap.Unions property.
            /// </summary>
            /// <param name="value">Unions</param>
            public RequestTimeMapBuilder Unions(List<RequestUnionOnIntersection> value)
            {
                _Unions = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeMap.Intersections property.
            /// </summary>
            /// <param name="value">Intersections</param>
            public RequestTimeMapBuilder Intersections(List<RequestUnionOnIntersection> value)
            {
                _Intersections = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeMap.
            /// </summary>
            /// <returns>RequestTimeMap</returns>
            public RequestTimeMap Build()
            {
                Validate();
                return new RequestTimeMap(
                    DepartureSearches: _DepartureSearches,
                    ArrivalSearches: _ArrivalSearches,
                    Unions: _Unions,
                    Intersections: _Intersections
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}