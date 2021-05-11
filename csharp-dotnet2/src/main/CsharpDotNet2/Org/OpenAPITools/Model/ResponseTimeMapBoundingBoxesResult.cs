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
  public class ResponseTimeMapBoundingBoxesResult {
    /// <summary>
    /// Gets or Sets SearchId
    /// </summary>
    [DataMember(Name="search_id", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "search_id")]
    public string SearchId { get; set; }

    /// <summary>
    /// Gets or Sets BoundingBoxes
    /// </summary>
    [DataMember(Name="bounding_boxes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "bounding_boxes")]
    public List<ResponseBoundingBox> BoundingBoxes { get; set; }

    /// <summary>
    /// Gets or Sets Properties
    /// </summary>
    [DataMember(Name="properties", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "properties")]
    public ResponseTimeMapProperties Properties { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeMapBoundingBoxesResult {\n");
      sb.Append("  SearchId: ").Append(SearchId).Append("\n");
      sb.Append("  BoundingBoxes: ").Append(BoundingBoxes).Append("\n");
      sb.Append("  Properties: ").Append(Properties).Append("\n");
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
