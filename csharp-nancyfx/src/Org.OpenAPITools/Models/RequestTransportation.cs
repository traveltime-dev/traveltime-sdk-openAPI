using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestTransportation
    /// </summary>
    public sealed class RequestTransportation:  IEquatable<RequestTransportation>
    { 
        /// <summary>
        /// Type
        /// </summary>
        public TypeEnum? Type { get; private set; }

        /// <summary>
        /// PtChangeDelay
        /// </summary>
        public int? PtChangeDelay { get; private set; }

        /// <summary>
        /// WalkingTime
        /// </summary>
        public int? WalkingTime { get; private set; }

        /// <summary>
        /// DrivingTimeToStation
        /// </summary>
        public int? DrivingTimeToStation { get; private set; }

        /// <summary>
        /// ParkingTime
        /// </summary>
        public int? ParkingTime { get; private set; }

        /// <summary>
        /// BoardingTime
        /// </summary>
        public int? BoardingTime { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestTransportation.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestTransportation()
        {
        }

        private RequestTransportation(TypeEnum? Type, int? PtChangeDelay, int? WalkingTime, int? DrivingTimeToStation, int? ParkingTime, int? BoardingTime)
        {
            
            this.Type = Type;
            
            this.PtChangeDelay = PtChangeDelay;
            
            this.WalkingTime = WalkingTime;
            
            this.DrivingTimeToStation = DrivingTimeToStation;
            
            this.ParkingTime = ParkingTime;
            
            this.BoardingTime = BoardingTime;
            
        }

        /// <summary>
        /// Returns builder of RequestTransportation.
        /// </summary>
        /// <returns>RequestTransportationBuilder</returns>
        public static RequestTransportationBuilder Builder()
        {
            return new RequestTransportationBuilder();
        }

        /// <summary>
        /// Returns RequestTransportationBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestTransportationBuilder</returns>
        public RequestTransportationBuilder With()
        {
            return Builder()
                .Type(Type)
                .PtChangeDelay(PtChangeDelay)
                .WalkingTime(WalkingTime)
                .DrivingTimeToStation(DrivingTimeToStation)
                .ParkingTime(ParkingTime)
                .BoardingTime(BoardingTime);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestTransportation other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestTransportation.
        /// </summary>
        /// <param name="left">Compared (RequestTransportation</param>
        /// <param name="right">Compared (RequestTransportation</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestTransportation left, RequestTransportation right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestTransportation.
        /// </summary>
        /// <param name="left">Compared (RequestTransportation</param>
        /// <param name="right">Compared (RequestTransportation</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestTransportation left, RequestTransportation right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestTransportation.
        /// </summary>
        public sealed class RequestTransportationBuilder
        {
            private TypeEnum? _Type;
            private int? _PtChangeDelay;
            private int? _WalkingTime;
            private int? _DrivingTimeToStation;
            private int? _ParkingTime;
            private int? _BoardingTime;

            internal RequestTransportationBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestTransportation.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public RequestTransportationBuilder Type(TypeEnum? value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTransportation.PtChangeDelay property.
            /// </summary>
            /// <param name="value">PtChangeDelay</param>
            public RequestTransportationBuilder PtChangeDelay(int? value)
            {
                _PtChangeDelay = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTransportation.WalkingTime property.
            /// </summary>
            /// <param name="value">WalkingTime</param>
            public RequestTransportationBuilder WalkingTime(int? value)
            {
                _WalkingTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTransportation.DrivingTimeToStation property.
            /// </summary>
            /// <param name="value">DrivingTimeToStation</param>
            public RequestTransportationBuilder DrivingTimeToStation(int? value)
            {
                _DrivingTimeToStation = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTransportation.ParkingTime property.
            /// </summary>
            /// <param name="value">ParkingTime</param>
            public RequestTransportationBuilder ParkingTime(int? value)
            {
                _ParkingTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestTransportation.BoardingTime property.
            /// </summary>
            /// <param name="value">BoardingTime</param>
            public RequestTransportationBuilder BoardingTime(int? value)
            {
                _BoardingTime = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestTransportation.
            /// </summary>
            /// <returns>RequestTransportation</returns>
            public RequestTransportation Build()
            {
                Validate();
                return new RequestTransportation(
                    Type: _Type,
                    PtChangeDelay: _PtChangeDelay,
                    WalkingTime: _WalkingTime,
                    DrivingTimeToStation: _DrivingTimeToStation,
                    ParkingTime: _ParkingTime,
                    BoardingTime: _BoardingTime
                );
            }

            private void Validate()
            { 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for RequestTransportation and cannot be null");
                } 
            }
        }

        
        public enum TypeEnum { Cycling, Driving, Drivingtrain, PublicTransport, Walking, Coach, Bus, Train, Ferry, Drivingferry, Cyclingferry };
    }
}
