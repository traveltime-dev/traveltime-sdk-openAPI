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
  public class ResponseBoundingBox {
    /// <summary>
    /// Gets or Sets Envelope
    /// </summary>
    [DataMember(Name="envelope", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "envelope")]
    public ResponseBox Envelope { get; set; }

    /// <summary>
    /// Gets or Sets Boxes
    /// </summary>
    [DataMember(Name="boxes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "boxes")]
    public List<ResponseBox> Boxes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseBoundingBox {\n");
      sb.Append("  Envelope: ").Append(Envelope).Append("\n");
      sb.Append("  Boxes: ").Append(Boxes).Append("\n");
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
