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
  public class RequestRoutesArrivalSearch {
    /// <summary>
    /// Gets or Sets Id
    /// </summary>
    [DataMember(Name="id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "id")]
    public string Id { get; set; }

    /// <summary>
    /// Gets or Sets DepartureLocationIds
    /// </summary>
    [DataMember(Name="departure_location_ids", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departure_location_ids")]
    public List<string> DepartureLocationIds { get; set; }

    /// <summary>
    /// Gets or Sets ArrivalLocationId
    /// </summary>
    [DataMember(Name="arrival_location_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrival_location_id")]
    public string ArrivalLocationId { get; set; }

    /// <summary>
    /// Gets or Sets Transportation
    /// </summary>
    [DataMember(Name="transportation", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "transportation")]
    public RequestTransportation Transportation { get; set; }

    /// <summary>
    /// Gets or Sets ArrivalTime
    /// </summary>
    [DataMember(Name="arrival_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrival_time")]
    public DateTime? ArrivalTime { get; set; }

    /// <summary>
    /// Gets or Sets Properties
    /// </summary>
    [DataMember(Name="properties", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "properties")]
    public List<RequestRoutesProperty> Properties { get; set; }

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
      sb.Append("class RequestRoutesArrivalSearch {\n");
      sb.Append("  Id: ").Append(Id).Append("\n");
      sb.Append("  DepartureLocationIds: ").Append(DepartureLocationIds).Append("\n");
      sb.Append("  ArrivalLocationId: ").Append(ArrivalLocationId).Append("\n");
      sb.Append("  Transportation: ").Append(Transportation).Append("\n");
      sb.Append("  ArrivalTime: ").Append(ArrivalTime).Append("\n");
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
