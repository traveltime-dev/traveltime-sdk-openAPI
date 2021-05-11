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
  public class ResponseBox {
    /// <summary>
    /// Gets or Sets MinLat
    /// </summary>
    [DataMember(Name="min_lat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "min_lat")]
    public double? MinLat { get; set; }

    /// <summary>
    /// Gets or Sets MaxLat
    /// </summary>
    [DataMember(Name="max_lat", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "max_lat")]
    public double? MaxLat { get; set; }

    /// <summary>
    /// Gets or Sets MinLng
    /// </summary>
    [DataMember(Name="min_lng", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "min_lng")]
    public double? MinLng { get; set; }

    /// <summary>
    /// Gets or Sets MaxLng
    /// </summary>
    [DataMember(Name="max_lng", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "max_lng")]
    public double? MaxLng { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseBox {\n");
      sb.Append("  MinLat: ").Append(MinLat).Append("\n");
      sb.Append("  MaxLat: ").Append(MaxLat).Append("\n");
      sb.Append("  MinLng: ").Append(MinLng).Append("\n");
      sb.Append("  MaxLng: ").Append(MaxLng).Append("\n");
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
