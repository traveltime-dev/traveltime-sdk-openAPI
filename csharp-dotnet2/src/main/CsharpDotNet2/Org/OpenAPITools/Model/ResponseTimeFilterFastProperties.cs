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
  public class ResponseTimeFilterFastProperties {
    /// <summary>
    /// Gets or Sets TravelTime
    /// </summary>
    [DataMember(Name="travel_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time")]
    public int? TravelTime { get; set; }

    /// <summary>
    /// Gets or Sets Fares
    /// </summary>
    [DataMember(Name="fares", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fares")]
    public ResponseFaresFast Fares { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterFastProperties {\n");
      sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
      sb.Append("  Fares: ").Append(Fares).Append("\n");
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
