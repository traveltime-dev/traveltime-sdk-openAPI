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
  public class ResponseTravelTimeStatistics {
    /// <summary>
    /// Gets or Sets Min
    /// </summary>
    [DataMember(Name="min", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "min")]
    public int? Min { get; set; }

    /// <summary>
    /// Gets or Sets Max
    /// </summary>
    [DataMember(Name="max", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "max")]
    public int? Max { get; set; }

    /// <summary>
    /// Gets or Sets Mean
    /// </summary>
    [DataMember(Name="mean", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "mean")]
    public int? Mean { get; set; }

    /// <summary>
    /// Gets or Sets Median
    /// </summary>
    [DataMember(Name="median", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "median")]
    public int? Median { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTravelTimeStatistics {\n");
      sb.Append("  Min: ").Append(Min).Append("\n");
      sb.Append("  Max: ").Append(Max).Append("\n");
      sb.Append("  Mean: ").Append(Mean).Append("\n");
      sb.Append("  Median: ").Append(Median).Append("\n");
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
