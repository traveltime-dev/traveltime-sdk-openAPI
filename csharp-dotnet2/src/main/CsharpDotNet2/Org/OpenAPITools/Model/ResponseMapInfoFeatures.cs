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
  public class ResponseMapInfoFeatures {
    /// <summary>
    /// Gets or Sets PublicTransport
    /// </summary>
    [DataMember(Name="public_transport", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "public_transport")]
    public ResponseMapInfoFeaturesPublicTransport PublicTransport { get; set; }

    /// <summary>
    /// Gets or Sets Fares
    /// </summary>
    [DataMember(Name="fares", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "fares")]
    public bool? Fares { get; set; }

    /// <summary>
    /// Gets or Sets Postcodes
    /// </summary>
    [DataMember(Name="postcodes", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "postcodes")]
    public bool? Postcodes { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseMapInfoFeatures {\n");
      sb.Append("  PublicTransport: ").Append(PublicTransport).Append("\n");
      sb.Append("  Fares: ").Append(Fares).Append("\n");
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
