using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterPostcodes
    /// </summary>
    public sealed class RequestTimeFilterPostcodes:  IEquatable<RequestTimeFilterPostcodes>
    { 
        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestTimeFilterPostcodesDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestTimeFilterPostcodesArrivalSearch> ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodes.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodes()
        {
        }

        private RequestTimeFilterPostcodes(List<RequestTimeFilterPostcodesDepartureSearch> DepartureSearches, List<RequestTimeFilterPostcodesArrivalSearch> ArrivalSearches)
        {
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodes.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesBuilder</returns>
        public static RequestTimeFilterPostcodesBuilder Builder()
        {
            return new RequestTimeFilterPostcodesBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodesBuilder</returns>
        public RequestTimeFilterPostcodesBuilder With()
        {
            return Builder()
                .DepartureSearches(DepartureSearches)
                .ArrivalSearches(ArrivalSearches);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTimeFilterPostcodes other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodes.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodes</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodes</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodes left, RequestTimeFilterPostcodes right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodes.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodes</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodes</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodes left, RequestTimeFilterPostcodes right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodes.
        /// </summary>
        public sealed class RequestTimeFilterPostcodesBuilder
        {
            private List<RequestTimeFilterPostcodesDepartureSearch> _DepartureSearches;
            private List<RequestTimeFilterPostcodesArrivalSearch> _ArrivalSearches;

            internal RequestTimeFilterPostcodesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodes.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestTimeFilterPostcodesBuilder DepartureSearches(List<RequestTimeFilterPostcodesDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodes.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeFilterPostcodesBuilder ArrivalSearches(List<RequestTimeFilterPostcodesArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodes.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodes</returns>
            public RequestTimeFilterPostcodes Build()
            {
                Validate();
                return new RequestTimeFilterPostcodes(
                    DepartureSearches: _DepartureSearches,
                    ArrivalSearches: _ArrivalSearches
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}