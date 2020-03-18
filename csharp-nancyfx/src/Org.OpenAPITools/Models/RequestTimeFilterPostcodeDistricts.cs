using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTimeFilterPostcodeDistricts
    /// </summary>
    public sealed class RequestTimeFilterPostcodeDistricts:  IEquatable<RequestTimeFilterPostcodeDistricts>
    { 
        /// <summary>
        /// DepartureSearches
        /// </summary>
        public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> DepartureSearches { get; private set; }

        /// <summary>
        /// ArrivalSearches
        /// </summary>
        public List<RequestTimeFilterPostcodeDistrictsArrivalSearch> ArrivalSearches { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterPostcodeDistricts.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterPostcodeDistricts()
        {
        }

        private RequestTimeFilterPostcodeDistricts(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> DepartureSearches, List<RequestTimeFilterPostcodeDistrictsArrivalSearch> ArrivalSearches)
        {
            
            this.DepartureSearches = DepartureSearches;
            
            this.ArrivalSearches = ArrivalSearches;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterPostcodeDistricts.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsBuilder</returns>
        public static RequestTimeFilterPostcodeDistrictsBuilder Builder()
        {
            return new RequestTimeFilterPostcodeDistrictsBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterPostcodeDistrictsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterPostcodeDistrictsBuilder</returns>
        public RequestTimeFilterPostcodeDistrictsBuilder With()
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

        public bool Equals(RequestTimeFilterPostcodeDistricts other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterPostcodeDistricts.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistricts</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistricts</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterPostcodeDistricts left, RequestTimeFilterPostcodeDistricts right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterPostcodeDistricts.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterPostcodeDistricts</param>
        /// <param name="right">Compared (RequestTimeFilterPostcodeDistricts</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterPostcodeDistricts left, RequestTimeFilterPostcodeDistricts right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterPostcodeDistricts.
        /// </summary>
        public sealed class RequestTimeFilterPostcodeDistrictsBuilder
        {
            private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> _DepartureSearches;
            private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> _ArrivalSearches;

            internal RequestTimeFilterPostcodeDistrictsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistricts.DepartureSearches property.
            /// </summary>
            /// <param name="value">DepartureSearches</param>
            public RequestTimeFilterPostcodeDistrictsBuilder DepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> value)
            {
                _DepartureSearches = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterPostcodeDistricts.ArrivalSearches property.
            /// </summary>
            /// <param name="value">ArrivalSearches</param>
            public RequestTimeFilterPostcodeDistrictsBuilder ArrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> value)
            {
                _ArrivalSearches = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterPostcodeDistricts.
            /// </summary>
            /// <returns>RequestTimeFilterPostcodeDistricts</returns>
            public RequestTimeFilterPostcodeDistricts Build()
            {
                Validate();
                return new RequestTimeFilterPostcodeDistricts(
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