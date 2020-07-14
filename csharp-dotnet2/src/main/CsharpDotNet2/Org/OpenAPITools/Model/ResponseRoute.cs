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
  public class ResponseRoute {
    /// <summary>
    /// Gets or Sets DepartureTime
    /// </summary>
    [DataMember(Name="departure_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departure_time")]
    public DateTime? DepartureTime { get; set; }

    /// <summary>
    /// Gets or Sets ArrivalTime
    /// </summary>
    [DataMember(Name="arrival_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrival_time")]
    public DateTime? ArrivalTime { get; set; }

    /// <summary>
    /// Gets or Sets Parts
    /// </summary>
    [DataMember(Name="parts", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "parts")]
    public List<ResponseRoutePart> Parts { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseRoute {\n");
      sb.Append("  DepartureTime: ").Append(DepartureTime).Append("\n");
      sb.Append("  ArrivalTime: ").Append(ArrivalTime).Append("\n");
      sb.Append("  Parts: ").Append(Parts).Append("\n");
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
