using System;
using System.Text;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization;
using Newtonsoft.Json;

namespace traveltimeplatform.Model {

  /// <summary>
  /// 
  /// </summary>
  [DataContract]
  public class ResponseTimeFilterFastResult {
    /// <summary>
    /// Gets or Sets SearchId
    /// </summary>
    [DataMember(Name="search_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "search_id")]
    public string SearchId { get; set; }

    /// <summary>
    /// Gets or Sets Locations
    /// </summary>
    [DataMember(Name="locations", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "locations")]
    public List<ResponseTimeFilterFastLocation> Locations { get; set; }

    /// <summary>
    /// Gets or Sets Unreachable
    /// </summary>
    [DataMember(Name="unreachable", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unreachable")]
    public List<string> Unreachable { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterFastResult {\n");
      sb.Append("  SearchId: ").Append(SearchId).Append("\n");
      sb.Append("  Locations: ").Append(Locations).Append("\n");
      sb.Append("  Unreachable: ").Append(Unreachable).Append("\n");
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
