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
  public class ResponseTimeFilterPostcodeSectorsResult {
    /// <summary>
    /// Gets or Sets SearchId
    /// </summary>
    [DataMember(Name="search_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "search_id")]
    public string SearchId { get; set; }

    /// <summary>
    /// Gets or Sets Sectors
    /// </summary>
    [DataMember(Name="sectors", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "sectors")]
    public List<ResponseTimeFilterPostcodeSector> Sectors { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterPostcodeSectorsResult {\n");
      sb.Append("  SearchId: ").Append(SearchId).Append("\n");
      sb.Append("  Sectors: ").Append(Sectors).Append("\n");
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
