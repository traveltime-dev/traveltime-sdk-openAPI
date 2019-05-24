using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// RequestRoutesArrivalSearch
    /// </summary>
    public sealed class RequestRoutesArrivalSearch:  IEquatable<RequestRoutesArrivalSearch>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// DepartureLocationIds
        /// </summary>
        public List<string> DepartureLocationIds { get; private set; }

        /// <summary>
        /// ArrivalLocationId
        /// </summary>
        public string ArrivalLocationId { get; private set; }

        /// <summary>
        /// Transportation
        /// </summary>
        public RequestTransportation Transportation { get; private set; }

        /// <summary>
        /// ArrivalTime
        /// </summary>
        public DateTime? ArrivalTime { get; private set; }

        /// <summary>
        /// Properties
        /// </summary>
        public List<RequestRoutesProperty> Properties { get; private set; }

        /// <summary>
        /// Range
        /// </summary>
        public RequestRangeFull Range { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestRoutesArrivalSearch.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestRoutesArrivalSearch()
        {
        }

        private RequestRoutesArrivalSearch(string Id, List<string> DepartureLocationIds, string ArrivalLocationId, RequestTransportation Transportation, DateTime? ArrivalTime, List<RequestRoutesProperty> Properties, RequestRangeFull Range)
        {
            
            this.Id = Id;
            
            this.DepartureLocationIds = DepartureLocationIds;
            
            this.ArrivalLocationId = ArrivalLocationId;
            
            this.Transportation = Transportation;
            
            this.ArrivalTime = ArrivalTime;
            
            this.Properties = Properties;
            
            this.Range = Range;
            
        }

        /// <summary>
        /// Returns builder of RequestRoutesArrivalSearch.
        /// </summary>
        /// <returns>RequestRoutesArrivalSearchBuilder</returns>
        public static RequestRoutesArrivalSearchBuilder Builder()
        {
            return new RequestRoutesArrivalSearchBuilder();
        }

        /// <summary>
        /// Returns RequestRoutesArrivalSearchBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestRoutesArrivalSearchBuilder</returns>
        public RequestRoutesArrivalSearchBuilder With()
        {
            return Builder()
                .Id(Id)
                .DepartureLocationIds(DepartureLocationIds)
                .ArrivalLocationId(ArrivalLocationId)
                .Transportation(Transportation)
                .ArrivalTime(ArrivalTime)
                .Properties(Properties)
                .Range(Range);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestRoutesArrivalSearch other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestRoutesArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestRoutesArrivalSearch</param>
        /// <param name="right">Compared (RequestRoutesArrivalSearch</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestRoutesArrivalSearch left, RequestRoutesArrivalSearch right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestRoutesArrivalSearch.
        /// </summary>
        /// <param name="left">Compared (RequestRoutesArrivalSearch</param>
        /// <param name="right">Compared (RequestRoutesArrivalSearch</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestRoutesArrivalSearch left, RequestRoutesArrivalSearch right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestRoutesArrivalSearch.
        /// </summary>
        public sealed class RequestRoutesArrivalSearchBuilder
        {
            private string _Id;
            private List<string> _DepartureLocationIds;
            private string _ArrivalLocationId;
            private RequestTransportation _Transportation;
            private DateTime? _ArrivalTime;
            private List<RequestRoutesProperty> _Properties;
            private RequestRangeFull _Range;

            internal RequestRoutesArrivalSearchBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public RequestRoutesArrivalSearchBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.DepartureLocationIds property.
            /// </summary>
            /// <param name="value">DepartureLocationIds</param>
            public RequestRoutesArrivalSearchBuilder DepartureLocationIds(List<string> value)
            {
                _DepartureLocationIds = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.ArrivalLocationId property.
            /// </summary>
            /// <param name="value">ArrivalLocationId</param>
            public RequestRoutesArrivalSearchBuilder ArrivalLocationId(string value)
            {
                _ArrivalLocationId = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.Transportation property.
            /// </summary>
            /// <param name="value">Transportation</param>
            public RequestRoutesArrivalSearchBuilder Transportation(RequestTransportation value)
            {
                _Transportation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.ArrivalTime property.
            /// </summary>
            /// <param name="value">ArrivalTime</param>
            public RequestRoutesArrivalSearchBuilder ArrivalTime(DateTime? value)
            {
                _ArrivalTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.Properties property.
            /// </summary>
            /// <param name="value">Properties</param>
            public RequestRoutesArrivalSearchBuilder Properties(List<RequestRoutesProperty> value)
            {
                _Properties = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestRoutesArrivalSearch.Range property.
            /// </summary>
            /// <param name="value">Range</param>
            public RequestRoutesArrivalSearchBuilder Range(RequestRangeFull value)
            {
                _Range = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestRoutesArrivalSearch.
            /// </summary>
            /// <returns>RequestRoutesArrivalSearch</returns>
            public RequestRoutesArrivalSearch Build()
            {
                Validate();
                return new RequestRoutesArrivalSearch(
                    Id: _Id,
                    DepartureLocationIds: _DepartureLocationIds,
                    ArrivalLocationId: _ArrivalLocationId,
                    Transportation: _Transportation,
                    ArrivalTime: _ArrivalTime,
                    Properties: _Properties,
                    Range: _Range
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
                if (_DepartureLocationIds == null)
                {
                    throw new ArgumentException("DepartureLocationIds is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
                if (_ArrivalLocationId == null)
                {
                    throw new ArgumentException("ArrivalLocationId is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
                if (_Transportation == null)
                {
                    throw new ArgumentException("Transportation is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
                if (_ArrivalTime == null)
                {
                    throw new ArgumentException("ArrivalTime is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
                if (_Properties == null)
                {
                    throw new ArgumentException("Properties is a required property for RequestRoutesArrivalSearch and cannot be null");
                } 
            }
        }

        
    }
}