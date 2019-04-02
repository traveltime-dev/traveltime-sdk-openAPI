using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// RequestTimeFilterFastArrivalOneToManySearch
    /// </summary>
    public sealed class RequestTimeFilterFastArrivalOneToManySearch:  IEquatable<RequestTimeFilterFastArrivalOneToManySearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// DepartureLocationId
        /// </summary>
        public string DepartureLocationId { get; private set; }

        /// <summary>
        /// ArrivalLocationIds
        /// </summary>
        public List<string> ArrivalLocationIds { get; private set; }

        /// <summary>
        /// Transportation
        /// </summary>
        public RequestTransportationFast Transportation { get; private set; }

        /// <summary>
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// ArrivalTimePeriod
        /// </summary>
        public RequestArrivalTimePeriod? ArrivalTimePeriod { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestTimeFilterFastProperty> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterFastArrivalOneToManySearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterFastArrivalOneToManySearch()
        {
        }

        private RequestTimeFilterFastArrivalOneToManySearch(string Id, string DepartureLocationId, List<string> ArrivalLocationIds, RequestTransportationFast Transportation, int? TravelTime, RequestArrivalTimePeriod? ArrivalTimePeriod, List<RequestTimeFilterFastProperty> Properties)
        {
            
            this.Id = Id;
            
            this.DepartureLocationId = DepartureLocationId;
            
            this.ArrivalLocationIds = ArrivalLocationIds;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTimePeriod = ArrivalTimePeriod;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterFastArrivalOneToManySearch.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalOneToManySearchBuilder</returns>
        public static RequestTimeFilterFastArrivalOneToManySearchBuilder Builder()
        {
            return new RequestTimeFilterFastArrivalOneToManySearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterFastArrivalOneToManySearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalOneToManySearchBuilder</returns>
        public RequestTimeFilterFastArrivalOneToManySearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .DepartureLocationId(DepartureLocationId)
                .ArrivalLocationIds(ArrivalLocationIds)
                .Transportation(Transportation)
                .TravelTime(TravelTime)
                .ArrivalTimePeriod(ArrivalTimePeriod)
                .Properties(Properties);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTimeFilterFastArrivalOneToManySearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterFastArrivalOneToManySearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalOneToManySearch</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalOneToManySearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterFastArrivalOneToManySearch left, RequestTimeFilterFastArrivalOneToManySearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterFastArrivalOneToManySearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalOneToManySearch</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalOneToManySearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterFastArrivalOneToManySearch left, RequestTimeFilterFastArrivalOneToManySearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterFastArrivalOneToManySearch.
        /// </summary>
        public sealed class RequestTimeFilterFastArrivalOneToManySearchBuilder
        {
            private string _Id;
            private string _DepartureLocationId;
            private List<string> _ArrivalLocationIds;
            private RequestTransportationFast _Transportation;
            private int? _TravelTime;
            private RequestArrivalTimePeriod? _ArrivalTimePeriod;
            private List<RequestTimeFilterFastProperty> _Properties;

            internal RequestTimeFilterFastArrivalOneToManySearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.DepartureLocationId property.
            /// </summary>
            /// <param name="value">DepartureLocationId</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder DepartureLocationId(string value)
            {
                _DepartureLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.ArrivalLocationIds property.
            /// </summary>
            /// <param name="value">ArrivalLocationIds</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder ArrivalLocationIds(List<string> value)
            {
                _ArrivalLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder Transportation(RequestTransportationFast value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.ArrivalTimePeriod property.
            /// </summary>
            /// <param name="value">ArrivalTimePeriod</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder ArrivalTimePeriod(RequestArrivalTimePeriod? value)
            {
                _ArrivalTimePeriod = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalOneToManySearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterFastArrivalOneToManySearchBuilder Properties(List<RequestTimeFilterFastProperty> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterFastArrivalOneToManySearch.
            /// </summary>
            /// <returns>RequestTimeFilterFastArrivalOneToManySearch</returns>
            public RequestTimeFilterFastArrivalOneToManySearch Build()
            {
                Validate();
                return new RequestTimeFilterFastArrivalOneToManySearch(
                    Id: _Id,
                    DepartureLocationId: _DepartureLocationId,
                    ArrivalLocationIds: _ArrivalLocationIds,
                    Transportation: _Transportation,
                    TravelTime: _TravelTime,
                    ArrivalTimePeriod: _ArrivalTimePeriod,
                    Properties: _Properties
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_DepartureLocationId == null)
                {
                    throw new ArgumentException("DepartureLocationId is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_ArrivalLocationIds == null)
                {
                    throw new ArgumentException("ArrivalLocationIds is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_ArrivalTimePeriod == null)
                {
                    throw new ArgumentException("ArrivalTimePeriod is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterFastArrivalOneToManySearch and cannot be null");
                } 
            }
        }

        
        public enum RequestArrivalTimePeriod { WeekdayMorning };
    }
}