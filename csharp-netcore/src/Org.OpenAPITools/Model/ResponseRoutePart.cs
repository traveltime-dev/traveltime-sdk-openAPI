/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// ResponseRoutePart
    /// </summary>
    [DataContract(Name = "ResponseRoutePart")]
    public partial class ResponseRoutePart : IEquatable<ResponseRoutePart>, IValidatableObject
    {
        /// <summary>
        /// Defines Type
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum TypeEnum
        {
            /// <summary>
            /// Enum Basic for value: basic
            /// </summary>
            [EnumMember(Value = "basic")]
            Basic = 1,

            /// <summary>
            /// Enum StartEnd for value: start_end
            /// </summary>
            [EnumMember(Value = "start_end")]
            StartEnd = 2,

            /// <summary>
            /// Enum Road for value: road
            /// </summary>
            [EnumMember(Value = "road")]
            Road = 3,

            /// <summary>
            /// Enum PublicTransport for value: public_transport
            /// </summary>
            [EnumMember(Value = "public_transport")]
            PublicTransport = 4

        }


        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [DataMember(Name = "type", IsRequired = true, EmitDefaultValue = false)]
        public TypeEnum Type { get; set; }

        /// <summary>
        /// Gets or Sets Mode
        /// </summary>
        [DataMember(Name = "mode", IsRequired = true, EmitDefaultValue = false)]
        public ResponseTransportationMode Mode { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseRoutePart" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseRoutePart() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseRoutePart" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="type">type (required).</param>
        /// <param name="mode">mode (required).</param>
        /// <param name="directions">directions (required).</param>
        /// <param name="distance">distance (required).</param>
        /// <param name="travelTime">travelTime (required).</param>
        /// <param name="coords">coords (required).</param>
        /// <param name="direction">direction.</param>
        /// <param name="road">road.</param>
        /// <param name="turn">turn.</param>
        /// <param name="line">line.</param>
        /// <param name="departureStation">departureStation.</param>
        /// <param name="arrivalStation">arrivalStation.</param>
        /// <param name="departsAt">departsAt.</param>
        /// <param name="arrivesAt">arrivesAt.</param>
        /// <param name="numStops">numStops.</param>
        public ResponseRoutePart(string id = default(string), TypeEnum type = default(TypeEnum), ResponseTransportationMode mode = default(ResponseTransportationMode), string directions = default(string), int distance = default(int), int travelTime = default(int), List<Coords> coords = default(List<Coords>), string direction = default(string), string road = default(string), string turn = default(string), string line = default(string), string departureStation = default(string), string arrivalStation = default(string), string departsAt = default(string), string arrivesAt = default(string), int numStops = default(int))
        {
            // to ensure "id" is required (not null)
            this.Id = id ?? throw new ArgumentNullException("id is a required property for ResponseRoutePart and cannot be null");
            this.Type = type;
            this.Mode = mode;
            // to ensure "directions" is required (not null)
            this.Directions = directions ?? throw new ArgumentNullException("directions is a required property for ResponseRoutePart and cannot be null");
            this.Distance = distance;
            this.TravelTime = travelTime;
            // to ensure "coords" is required (not null)
            this.Coords = coords ?? throw new ArgumentNullException("coords is a required property for ResponseRoutePart and cannot be null");
            this.Direction = direction;
            this.Road = road;
            this.Turn = turn;
            this.Line = line;
            this.DepartureStation = departureStation;
            this.ArrivalStation = arrivalStation;
            this.DepartsAt = departsAt;
            this.ArrivesAt = arrivesAt;
            this.NumStops = numStops;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Directions
        /// </summary>
        [DataMember(Name = "directions", IsRequired = true, EmitDefaultValue = false)]
        public string Directions { get; set; }

        /// <summary>
        /// Gets or Sets Distance
        /// </summary>
        [DataMember(Name = "distance", IsRequired = true, EmitDefaultValue = false)]
        public int Distance { get; set; }

        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [DataMember(Name = "travel_time", IsRequired = true, EmitDefaultValue = false)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets Coords
        /// </summary>
        [DataMember(Name = "coords", IsRequired = true, EmitDefaultValue = false)]
        public List<Coords> Coords { get; set; }

        /// <summary>
        /// Gets or Sets Direction
        /// </summary>
        [DataMember(Name = "direction", EmitDefaultValue = false)]
        public string Direction { get; set; }

        /// <summary>
        /// Gets or Sets Road
        /// </summary>
        [DataMember(Name = "road", EmitDefaultValue = false)]
        public string Road { get; set; }

        /// <summary>
        /// Gets or Sets Turn
        /// </summary>
        [DataMember(Name = "turn", EmitDefaultValue = false)]
        public string Turn { get; set; }

        /// <summary>
        /// Gets or Sets Line
        /// </summary>
        [DataMember(Name = "line", EmitDefaultValue = false)]
        public string Line { get; set; }

        /// <summary>
        /// Gets or Sets DepartureStation
        /// </summary>
        [DataMember(Name = "departure_station", EmitDefaultValue = false)]
        public string DepartureStation { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalStation
        /// </summary>
        [DataMember(Name = "arrival_station", EmitDefaultValue = false)]
        public string ArrivalStation { get; set; }

        /// <summary>
        /// Gets or Sets DepartsAt
        /// </summary>
        [DataMember(Name = "departs_at", EmitDefaultValue = false)]
        public string DepartsAt { get; set; }

        /// <summary>
        /// Gets or Sets ArrivesAt
        /// </summary>
        [DataMember(Name = "arrives_at", EmitDefaultValue = false)]
        public string ArrivesAt { get; set; }

        /// <summary>
        /// Gets or Sets NumStops
        /// </summary>
        [DataMember(Name = "num_stops", EmitDefaultValue = false)]
        public int NumStops { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseRoutePart {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  Mode: ").Append(Mode).Append("\n");
            sb.Append("  Directions: ").Append(Directions).Append("\n");
            sb.Append("  Distance: ").Append(Distance).Append("\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
            sb.Append("  Coords: ").Append(Coords).Append("\n");
            sb.Append("  Direction: ").Append(Direction).Append("\n");
            sb.Append("  Road: ").Append(Road).Append("\n");
            sb.Append("  Turn: ").Append(Turn).Append("\n");
            sb.Append("  Line: ").Append(Line).Append("\n");
            sb.Append("  DepartureStation: ").Append(DepartureStation).Append("\n");
            sb.Append("  ArrivalStation: ").Append(ArrivalStation).Append("\n");
            sb.Append("  DepartsAt: ").Append(DepartsAt).Append("\n");
            sb.Append("  ArrivesAt: ").Append(ArrivesAt).Append("\n");
            sb.Append("  NumStops: ").Append(NumStops).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ResponseRoutePart);
        }

        /// <summary>
        /// Returns true if ResponseRoutePart instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseRoutePart to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseRoutePart input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Type == input.Type ||
                    this.Type.Equals(input.Type)
                ) && 
                (
                    this.Mode == input.Mode ||
                    this.Mode.Equals(input.Mode)
                ) && 
                (
                    this.Directions == input.Directions ||
                    (this.Directions != null &&
                    this.Directions.Equals(input.Directions))
                ) && 
                (
                    this.Distance == input.Distance ||
                    this.Distance.Equals(input.Distance)
                ) && 
                (
                    this.TravelTime == input.TravelTime ||
                    this.TravelTime.Equals(input.TravelTime)
                ) && 
                (
                    this.Coords == input.Coords ||
                    this.Coords != null &&
                    input.Coords != null &&
                    this.Coords.SequenceEqual(input.Coords)
                ) && 
                (
                    this.Direction == input.Direction ||
                    (this.Direction != null &&
                    this.Direction.Equals(input.Direction))
                ) && 
                (
                    this.Road == input.Road ||
                    (this.Road != null &&
                    this.Road.Equals(input.Road))
                ) && 
                (
                    this.Turn == input.Turn ||
                    (this.Turn != null &&
                    this.Turn.Equals(input.Turn))
                ) && 
                (
                    this.Line == input.Line ||
                    (this.Line != null &&
                    this.Line.Equals(input.Line))
                ) && 
                (
                    this.DepartureStation == input.DepartureStation ||
                    (this.DepartureStation != null &&
                    this.DepartureStation.Equals(input.DepartureStation))
                ) && 
                (
                    this.ArrivalStation == input.ArrivalStation ||
                    (this.ArrivalStation != null &&
                    this.ArrivalStation.Equals(input.ArrivalStation))
                ) && 
                (
                    this.DepartsAt == input.DepartsAt ||
                    (this.DepartsAt != null &&
                    this.DepartsAt.Equals(input.DepartsAt))
                ) && 
                (
                    this.ArrivesAt == input.ArrivesAt ||
                    (this.ArrivesAt != null &&
                    this.ArrivesAt.Equals(input.ArrivesAt))
                ) && 
                (
                    this.NumStops == input.NumStops ||
                    this.NumStops.Equals(input.NumStops)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                hashCode = hashCode * 59 + this.Type.GetHashCode();
                hashCode = hashCode * 59 + this.Mode.GetHashCode();
                if (this.Directions != null)
                    hashCode = hashCode * 59 + this.Directions.GetHashCode();
                hashCode = hashCode * 59 + this.Distance.GetHashCode();
                hashCode = hashCode * 59 + this.TravelTime.GetHashCode();
                if (this.Coords != null)
                    hashCode = hashCode * 59 + this.Coords.GetHashCode();
                if (this.Direction != null)
                    hashCode = hashCode * 59 + this.Direction.GetHashCode();
                if (this.Road != null)
                    hashCode = hashCode * 59 + this.Road.GetHashCode();
                if (this.Turn != null)
                    hashCode = hashCode * 59 + this.Turn.GetHashCode();
                if (this.Line != null)
                    hashCode = hashCode * 59 + this.Line.GetHashCode();
                if (this.DepartureStation != null)
                    hashCode = hashCode * 59 + this.DepartureStation.GetHashCode();
                if (this.ArrivalStation != null)
                    hashCode = hashCode * 59 + this.ArrivalStation.GetHashCode();
                if (this.DepartsAt != null)
                    hashCode = hashCode * 59 + this.DepartsAt.GetHashCode();
                if (this.ArrivesAt != null)
                    hashCode = hashCode * 59 + this.ArrivesAt.GetHashCode();
                hashCode = hashCode * 59 + this.NumStops.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
