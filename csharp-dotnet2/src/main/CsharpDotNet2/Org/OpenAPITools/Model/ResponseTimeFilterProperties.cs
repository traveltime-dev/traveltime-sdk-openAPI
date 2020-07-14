using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace Org.OpenAPITools.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ResponseTimeFilterProperties {
    /// <summary>
    /// Gets or Sets TravelTime
    /// </summary>
    [DataMember(Name="travel_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time")]
    public int? TravelTime { get; set; }

    /// <summary>
    /// Gets or Sets Distance
    /// </summary>
    [DataMember(Name="distance", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "distance")]
    public int? Distance { get; set; }

    /// <summary>
    /// Gets or Sets DistanceBreakdown
    /// </summary>
    [DataMember(Name="distance_breakdown", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "distance_breakdown")]
    public List<ResponseDistanceBreakdownItem> DistanceBreakdown { get; set; }

    /// <summary>
    /// Gets or Sets Fares
    /// </summary>
    [DataMember(Name="fares", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fares")]
    public ResponseFares Fares { get; set; }

    /// <summary>
    /// Gets or Sets Route
    /// </summary>
    [DataMember(Name="route", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "route")]
    public ResponseRoute Route { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterProperties {\n");
      sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
      sb.Append("  Distance: ").Append(Distance).Append("\n");
      sb.Append("  DistanceBreakdown: ").Append(DistanceBreakdown).Append("\n");
      sb.Append("  Fares: ").Append(Fares).Append("\n");
      sb.Append("  Route: ").Append(Route).Append("\n");
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
