using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace traveltimeplatform.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ResponseRoutePart {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Gets or Sets Mode
    /// </summary>
    [DataMember(Name="mode", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "mode")]
    public ResponseTransportationMode Mode { get; set; }

    /// <summary>
    /// Gets or Sets Directions
    /// </summary>
    [DataMember(Name="directions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "directions")]
    public string Directions { get; set; }

    /// <summary>
    /// Gets or Sets Distance
    /// </summary>
    [DataMember(Name="distance", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "distance")]
    public int? Distance { get; set; }

    /// <summary>
    /// Gets or Sets TravelTime
    /// </summary>
    [DataMember(Name="travel_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time")]
    public int? TravelTime { get; set; }

    /// <summary>
    /// Gets or Sets Coords
    /// </summary>
    [DataMember(Name="coords", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coords")]
    public List<Coords> Coords { get; set; }

    /// <summary>
    /// Gets or Sets Direction
    /// </summary>
    [DataMember(Name="direction", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "direction")]
    public string Direction { get; set; }

    /// <summary>
    /// Gets or Sets Road
    /// </summary>
    [DataMember(Name="road", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "road")]
    public string Road { get; set; }

    /// <summary>
    /// Gets or Sets Turn
    /// </summary>
    [DataMember(Name="turn", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "turn")]
    public string Turn { get; set; }

    /// <summary>
    /// Gets or Sets Line
    /// </summary>
    [DataMember(Name="line", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "line")]
    public string Line { get; set; }

    /// <summary>
    /// Gets or Sets DepartureStation
    /// </summary>
    [DataMember(Name="departure_station", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departure_station")]
    public string DepartureStation { get; set; }

    /// <summary>
    /// Gets or Sets ArrivalStation
    /// </summary>
    [DataMember(Name="arrival_station", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrival_station")]
    public string ArrivalStation { get; set; }

    /// <summary>
    /// Gets or Sets DepartsAt
    /// </summary>
    [DataMember(Name="departs_at", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departs_at")]
    public string DepartsAt { get; set; }

    /// <summary>
    /// Gets or Sets ArrivesAt
    /// </summary>
    [DataMember(Name="arrives_at", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrives_at")]
    public string ArrivesAt { get; set; }

    /// <summary>
    /// Gets or Sets NumStops
    /// </summary>
    [DataMember(Name="num_stops", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "num_stops")]
    public int? NumStops { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
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
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return JsonConvert.SerializeObject(this, Formatting.Indented);
    }

}
}
