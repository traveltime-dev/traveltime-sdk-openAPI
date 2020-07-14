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
  public class RequestTimeFilterPostcodeSectorsDepartureSearch {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets Transportation
    /// </summary>
    [DataMember(Name="transportation", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "transportation")]
    public RequestTransportation Transportation { get; set; }

    /// <summary>
    /// Gets or Sets TravelTime
    /// </summary>
    [DataMember(Name="travel_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time")]
    public int? TravelTime { get; set; }

    /// <summary>
    /// Gets or Sets DepartureTime
    /// </summary>
    [DataMember(Name="departure_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departure_time")]
    public DateTime? DepartureTime { get; set; }

    /// <summary>
    /// Gets or Sets ReachablePostcodesThreshold
    /// </summary>
    [DataMember(Name="reachable_postcodes_threshold", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "reachable_postcodes_threshold")]
    public double? ReachablePostcodesThreshold { get; set; }

    /// <summary>
    /// Gets or Sets Properties
    /// </summary>
    [DataMember(Name="properties", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "properties")]
    public List<RequestTimeFilterPostcodeSectorsProperty> Properties { get; set; }

    /// <summary>
    /// Gets or Sets Range
    /// </summary>
    [DataMember(Name="range", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "range")]
    public RequestRangeFull Range { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RequestTimeFilterPostcodeSectorsDepartureSearch {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  Transportation: ").Append(Transportation).Append("\n");
      sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
      sb.Append("  DepartureTime: ").Append(DepartureTime).Append("\n");
      sb.Append("  ReachablePostcodesThreshold: ").Append(ReachablePostcodesThreshold).Append("\n");
      sb.Append("  Properties: ").Append(Properties).Append("\n");
      sb.Append("  Range: ").Append(Range).Append("\n");
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
