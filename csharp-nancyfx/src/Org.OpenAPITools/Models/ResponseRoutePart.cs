using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseRoutePart
    /// </summary>
    public sealed class ResponseRoutePart:  IEquatable<ResponseRoutePart>
    { 
        /// <summary>
        /// Id
        /// </summary>
        public string Id { get; private set; }

        /// <summary>
        /// Type
        /// </summary>
        public TypeEnum? Type { get; private set; }

        /// <summary>
        /// Mode
        /// </summary>
        public ResponseTransportationMode? Mode { get; private set; }

        /// <summary>
        /// Directions
        /// </summary>
        public string Directions { get; private set; }

        /// <summary>
        /// Distance
        /// </summary>
        public int? Distance { get; private set; }

        /// <summary>
        /// TravelTime
        /// </summary>
        public int? TravelTime { get; private set; }

        /// <summary>
        /// Coords
        /// </summary>
        public List<Coords> Coords { get; private set; }

        /// <summary>
        /// Direction
        /// </summary>
        public string Direction { get; private set; }

        /// <summary>
        /// Road
        /// </summary>
        public string Road { get; private set; }

        /// <summary>
        /// Turn
        /// </summary>
        public string Turn { get; private set; }

        /// <summary>
        /// Line
        /// </summary>
        public string Line { get; private set; }

        /// <summary>
        /// DepartureStation
        /// </summary>
        public string DepartureStation { get; private set; }

        /// <summary>
        /// ArrivalStation
        /// </summary>
        public string ArrivalStation { get; private set; }

        /// <summary>
        /// DepartsAt
        /// </summary>
        public string DepartsAt { get; private set; }

        /// <summary>
        /// ArrivesAt
        /// </summary>
        public string ArrivesAt { get; private set; }

        /// <summary>
        /// NumStops
        /// </summary>
        public int? NumStops { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseRoutePart.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseRoutePart()
        {
        }

        private ResponseRoutePart(string Id, TypeEnum? Type, ResponseTransportationMode? Mode, string Directions, int? Distance, int? TravelTime, List<Coords> Coords, string Direction, string Road, string Turn, string Line, string DepartureStation, string ArrivalStation, string DepartsAt, string ArrivesAt, int? NumStops)
        {
            
            this.Id = Id;
            
            this.Type = Type;
            
            this.Mode = Mode;
            
            this.Directions = Directions;
            
            this.Distance = Distance;
            
            this.TravelTime = TravelTime;
            
            this.Coords = Coords;
            
            this.Direction = Direction;
            
            this.Road = Road;
            
            this.Turn = Turn;
            
            this.Line = Line;
            
            this.DepartureStation = DepartureStation;
            
            this.ArrivalStation = ArrivalStation;
            
            this.DepartsAt = DepartsAt;
            
            this.ArrivesAt = ArrivesAt;
            
            this.NumStops = NumStops;
            
        }

        /// <summary>
        /// Returns builder of ResponseRoutePart.
        /// </summary>
        /// <returns>ResponseRoutePartBuilder</returns>
        public static ResponseRoutePartBuilder Builder()
        {
            return new ResponseRoutePartBuilder();
        }

        /// <summary>
        /// Returns ResponseRoutePartBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseRoutePartBuilder</returns>
        public ResponseRoutePartBuilder With()
        {
            return Builder()
                .Id(Id)
                .Type(Type)
                .Mode(Mode)
                .Directions(Directions)
                .Distance(Distance)
                .TravelTime(TravelTime)
                .Coords(Coords)
                .Direction(Direction)
                .Road(Road)
                .Turn(Turn)
                .Line(Line)
                .DepartureStation(DepartureStation)
                .ArrivalStation(ArrivalStation)
                .DepartsAt(DepartsAt)
                .ArrivesAt(ArrivesAt)
                .NumStops(NumStops);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseRoutePart other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseRoutePart.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutePart</param>
        /// <param name="right">Compared (ResponseRoutePart</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseRoutePart left, ResponseRoutePart right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseRoutePart.
        /// </summary>
        /// <param name="left">Compared (ResponseRoutePart</param>
        /// <param name="right">Compared (ResponseRoutePart</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseRoutePart left, ResponseRoutePart right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseRoutePart.
        /// </summary>
        public sealed class ResponseRoutePartBuilder
        {
            private string _Id;
            private TypeEnum? _Type;
            private ResponseTransportationMode? _Mode;
            private string _Directions;
            private int? _Distance;
            private int? _TravelTime;
            private List<Coords> _Coords;
            private string _Direction;
            private string _Road;
            private string _Turn;
            private string _Line;
            private string _DepartureStation;
            private string _ArrivalStation;
            private string _DepartsAt;
            private string _ArrivesAt;
            private int? _NumStops;

            internal ResponseRoutePartBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Id property.
            /// </summary>
            /// <param name="value">Id</param>
            public ResponseRoutePartBuilder Id(string value)
            {
                _Id = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Type property.
            /// </summary>
            /// <param name="value">Type</param>
            public ResponseRoutePartBuilder Type(TypeEnum? value)
            {
                _Type = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Mode property.
            /// </summary>
            /// <param name="value">Mode</param>
            public ResponseRoutePartBuilder Mode(ResponseTransportationMode? value)
            {
                _Mode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Directions property.
            /// </summary>
            /// <param name="value">Directions</param>
            public ResponseRoutePartBuilder Directions(string value)
            {
                _Directions = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Distance property.
            /// </summary>
            /// <param name="value">Distance</param>
            public ResponseRoutePartBuilder Distance(int? value)
            {
                _Distance = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.TravelTime property.
            /// </summary>
            /// <param name="value">TravelTime</param>
            public ResponseRoutePartBuilder TravelTime(int? value)
            {
                _TravelTime = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Coords property.
            /// </summary>
            /// <param name="value">Coords</param>
            public ResponseRoutePartBuilder Coords(List<Coords> value)
            {
                _Coords = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Direction property.
            /// </summary>
            /// <param name="value">Direction</param>
            public ResponseRoutePartBuilder Direction(string value)
            {
                _Direction = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Road property.
            /// </summary>
            /// <param name="value">Road</param>
            public ResponseRoutePartBuilder Road(string value)
            {
                _Road = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Turn property.
            /// </summary>
            /// <param name="value">Turn</param>
            public ResponseRoutePartBuilder Turn(string value)
            {
                _Turn = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.Line property.
            /// </summary>
            /// <param name="value">Line</param>
            public ResponseRoutePartBuilder Line(string value)
            {
                _Line = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.DepartureStation property.
            /// </summary>
            /// <param name="value">DepartureStation</param>
            public ResponseRoutePartBuilder DepartureStation(string value)
            {
                _DepartureStation = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.ArrivalStation property.
            /// </summary>
            /// <param name="value">ArrivalStation</param>
            public ResponseRoutePartBuilder ArrivalStation(string value)
            {
                _ArrivalStation = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.DepartsAt property.
            /// </summary>
            /// <param name="value">DepartsAt</param>
            public ResponseRoutePartBuilder DepartsAt(string value)
            {
                _DepartsAt = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.ArrivesAt property.
            /// </summary>
            /// <param name="value">ArrivesAt</param>
            public ResponseRoutePartBuilder ArrivesAt(string value)
            {
                _ArrivesAt = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseRoutePart.NumStops property.
            /// </summary>
            /// <param name="value">NumStops</param>
            public ResponseRoutePartBuilder NumStops(int? value)
            {
                _NumStops = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseRoutePart.
            /// </summary>
            /// <returns>ResponseRoutePart</returns>
            public ResponseRoutePart Build()
            {
                Validate();
                return new ResponseRoutePart(
                    Id: _Id,
                    Type: _Type,
                    Mode: _Mode,
                    Directions: _Directions,
                    Distance: _Distance,
                    TravelTime: _TravelTime,
                    Coords: _Coords,
                    Direction: _Direction,
                    Road: _Road,
                    Turn: _Turn,
                    Line: _Line,
                    DepartureStation: _DepartureStation,
                    ArrivalStation: _ArrivalStation,
                    DepartsAt: _DepartsAt,
                    ArrivesAt: _ArrivesAt,
                    NumStops: _NumStops
                );
            }

            private void Validate()
            { 
                if (_Id == null)
                {
                    throw new ArgumentException("Id is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_Type == null)
                {
                    throw new ArgumentException("Type is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_Mode == null)
                {
                    throw new ArgumentException("Mode is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_Directions == null)
                {
                    throw new ArgumentException("Directions is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_Distance == null)
                {
                    throw new ArgumentException("Distance is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_TravelTime == null)
                {
                    throw new ArgumentException("TravelTime is a required property for ResponseRoutePart and cannot be null");
                } 
                if (_Coords == null)
                {
                    throw new ArgumentException("Coords is a required property for ResponseRoutePart and cannot be null");
                } 
            }
        }

        
        public enum TypeEnum { Basic, StartEnd, Road, PublicTransport };
        public enum ResponseTransportationMode { Car, Parking, Boarding, Walk, Bike, Train, RailNational, RailOverground, RailUnderground, RailDlr, Bus, CableCar, Plane, Ferry, Coach };
    }
}