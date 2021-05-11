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
  public class ResponseMapInfoFeaturesPublicTransport {
    /// <summary>
    /// Gets or Sets DateStart
    /// </summary>
    [DataMember(Name="date_start", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "date_start")]
    public DateTime? DateStart { get; set; }

    /// <summary>
    /// Gets or Sets DateEnd
    /// </summary>
    [DataMember(Name="date_end", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "date_end")]
    public DateTime? DateEnd { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseMapInfoFeaturesPublicTransport {\n");
      sb.Append("  DateStart: ").Append(DateStart).Append("\n");
      sb.Append("  DateEnd: ").Append(DateEnd).Append("\n");
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
