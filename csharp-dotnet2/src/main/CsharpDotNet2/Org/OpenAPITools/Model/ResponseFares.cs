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
  public class ResponseFares {
    /// <summary>
    /// Gets or Sets Breakdown
    /// </summary>
    [DataMember(Name="breakdown", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "breakdown")]
    public List<ResponseFaresBreakdownItem> Breakdown { get; set; }

    /// <summary>
    /// Gets or Sets TicketsTotal
    /// </summary>
    [DataMember(Name="tickets_total", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tickets_total")]
    public List<ResponseFareTicket> TicketsTotal { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseFares {\n");
      sb.Append("  Breakdown: ").Append(Breakdown).Append("\n");
      sb.Append("  TicketsTotal: ").Append(TicketsTotal).Append("\n");
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
