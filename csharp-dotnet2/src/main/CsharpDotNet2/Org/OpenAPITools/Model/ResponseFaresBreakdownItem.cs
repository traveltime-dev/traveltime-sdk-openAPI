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
  public class ResponseFaresBreakdownItem {
    /// <summary>
    /// Gets or Sets Modes
    /// </summary>
    [DataMember(Name="modes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "modes")]
    public List<ResponseTransportationMode> Modes { get; set; }

    /// <summary>
    /// Gets or Sets RoutePartIds
    /// </summary>
    [DataMember(Name="route_part_ids", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "route_part_ids")]
    public List<int?> RoutePartIds { get; set; }

    /// <summary>
    /// Gets or Sets Tickets
    /// </summary>
    [DataMember(Name="tickets", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "tickets")]
    public List<ResponseFareTicket> Tickets { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseFaresBreakdownItem {\n");
      sb.Append("  Modes: ").Append(Modes).Append("\n");
      sb.Append("  RoutePartIds: ").Append(RoutePartIds).Append("\n");
      sb.Append("  Tickets: ").Append(Tickets).Append("\n");
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
