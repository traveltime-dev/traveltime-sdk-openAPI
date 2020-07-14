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
  public class ResponseTimeFilterPostcodesResult {
    /// <summary>
    /// Gets or Sets SearchId
    /// </summary>
    [DataMember(Name="search_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "search_id")]
    public string SearchId { get; set; }

    /// <summary>
    /// Gets or Sets Postcodes
    /// </summary>
    [DataMember(Name="postcodes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "postcodes")]
    public List<ResponseTimeFilterPostcode> Postcodes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterPostcodesResult {\n");
      sb.Append("  SearchId: ").Append(SearchId).Append("\n");
      sb.Append("  Postcodes: ").Append(Postcodes).Append("\n");
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
