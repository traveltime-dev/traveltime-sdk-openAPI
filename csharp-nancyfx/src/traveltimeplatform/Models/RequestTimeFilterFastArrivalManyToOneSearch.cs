using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestTimeFilterFastArrivalManyToOneSearch
    /// </summary>
    public sealed class RequestTimeFilterFastArrivalManyToOneSearch:  IEquatable<RequestTimeFilterFastArrivalManyToOneSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// ArrivalLocationId
        /// </summary>
        public string ArrivalLocationId { get; private set; }

        /// <summary>
        /// DepartureLocationIds
        /// </summary>
        public List<string> DepartureLocationIds { get; private set; }

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
        public RequestArrivalTimePeriod ArrivalTimePeriod { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestTimeFilterFastProperty> Properties { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTimeFilterFastArrivalManyToOneSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTimeFilterFastArrivalManyToOneSearch()
        {
        }

        private RequestTimeFilterFastArrivalManyToOneSearch(string Id, string ArrivalLocationId, List<string> DepartureLocationIds, RequestTransportationFast Transportation, int? TravelTime, RequestArrivalTimePeriod ArrivalTimePeriod, List<RequestTimeFilterFastProperty> Properties)
        {
            
            this.Id = Id;
            
            this.ArrivalLocationId = ArrivalLocationId;
            
            this.DepartureLocationIds = DepartureLocationIds;
            
            this.Transportation = Transportation;
            
            this.TravelTime = TravelTime;
            
            this.ArrivalTimePeriod = ArrivalTimePeriod;
            
            this.Properties = Properties;
            
        }

        /// <summary>
        /// Returns builder of RequestTimeFilterFastArrivalManyToOneSearch.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalManyToOneSearchBuilder</returns>
        public static RequestTimeFilterFastArrivalManyToOneSearchBuilder Builder()
        {
            return new RequestTimeFilterFastArrivalManyToOneSearchBuilder();
        }

        /// <summary>
        /// Returns RequestTimeFilterFastArrivalManyToOneSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTimeFilterFastArrivalManyToOneSearchBuilder</returns>
        public RequestTimeFilterFastArrivalManyToOneSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .ArrivalLocationId(ArrivalLocationId)
                .DepartureLocationIds(DepartureLocationIds)
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

        public bool Equals(RequestTimeFilterFastArrivalManyToOneSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTimeFilterFastArrivalManyToOneSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalManyToOneSearch</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalManyToOneSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTimeFilterFastArrivalManyToOneSearch left, RequestTimeFilterFastArrivalManyToOneSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTimeFilterFastArrivalManyToOneSearch.
        /// </summary>
        /// <param name="left">Compared (RequestTimeFilterFastArrivalManyToOneSearch</param>
        /// <param name="right">Compared (RequestTimeFilterFastArrivalManyToOneSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTimeFilterFastArrivalManyToOneSearch left, RequestTimeFilterFastArrivalManyToOneSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTimeFilterFastArrivalManyToOneSearch.
        /// </summary>
        public sealed class RequestTimeFilterFastArrivalManyToOneSearchBuilder
        {
            private string _Id;
            private string _ArrivalLocationId;
            private List<string> _DepartureLocationIds;
            private RequestTransportationFast _Transportation;
            private int? _TravelTime;
            private RequestArrivalTimePeriod _ArrivalTimePeriod;
            private List<RequestTimeFilterFastProperty> _Properties;

            internal RequestTimeFilterFastArrivalManyToOneSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.ArrivalLocationId property.
            /// </summary>
            /// <param name="value">ArrivalLocationId</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder ArrivalLocationId(string value)
            {
                _ArrivalLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.DepartureLocationIds property.
            /// </summary>
            /// <param name="value">DepartureLocationIds</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder DepartureLocationIds(List<string> value)
            {
                _DepartureLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder Transportation(RequestTransportationFast value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.ArrivalTimePeriod property.
            /// </summary>
            /// <param name="value">ArrivalTimePeriod</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder ArrivalTimePeriod(RequestArrivalTimePeriod value)
            {
                _ArrivalTimePeriod = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTimeFilterFastArrivalManyToOneSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestTimeFilterFastArrivalManyToOneSearchBuilder Properties(List<RequestTimeFilterFastProperty> value)
            {
                _Properties = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTimeFilterFastArrivalManyToOneSearch.
            /// </summary>
            /// <returns>RequestTimeFilterFastArrivalManyToOneSearch</returns>
            public RequestTimeFilterFastArrivalManyToOneSearch Build()
            {
                Validate();
                return new RequestTimeFilterFastArrivalManyToOneSearch(
                    Id: _Id,
                    ArrivalLocationId: _ArrivalLocationId,
                    DepartureLocationIds: _DepartureLocationIds,
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
                    throw new ArgumentException("Id is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_ArrivalLocationId == null)
                {
                    throw new ArgumentException("ArrivalLocationId is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_DepartureLocationIds == null)
                {
                    throw new ArgumentException("DepartureLocationIds is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_ArrivalTimePeriod == null)
                {
                    throw new ArgumentException("ArrivalTimePeriod is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestTimeFilterFastArrivalManyToOneSearch and cannot be null");
                } 
            }
        }

        
    }
}