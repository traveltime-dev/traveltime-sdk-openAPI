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
  public class RequestLevelOfDetail {
    /// <summary>
    /// Gets or Sets ScaleType
    /// </summary>
    [DataMember(Name="scale_type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "scale_type")]
    public string ScaleType { get; set; }

    /// <summary>
    /// Gets or Sets Level
    /// </summary>
    [DataMember(Name="level", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "level")]
    public string Level { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RequestLevelOfDetail {\n");
      sb.Append("  ScaleType: ").Append(ScaleType).Append("\n");
      sb.Append("  Level: ").Append(Level).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Get the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public string ToJson() {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

}
}
