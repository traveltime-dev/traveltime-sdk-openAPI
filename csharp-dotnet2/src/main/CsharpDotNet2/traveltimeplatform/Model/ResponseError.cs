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
  public class ResponseError {
    /// <summary>
    /// Gets or Sets HttpStatus
    /// </summary>
    [DataMember(Name="http_status", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "http_status")]
    public int? HttpStatus { get; set; }

    /// <summary>
    /// Gets or Sets ErrorCode
    /// </summary>
    [DataMember(Name="error_code", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "error_code")]
    public int? ErrorCode { get; set; }

    /// <summary>
    /// Gets or Sets Description
    /// </summary>
    [DataMember(Name="description", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "description")]
    public string Description { get; set; }

    /// <summary>
    /// Gets or Sets DocumentationLink
    /// </summary>
    [DataMember(Name="documentation_link", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "documentation_link")]
    public string DocumentationLink { get; set; }

    /// <summary>
    /// Gets or Sets AdditionalInfo
    /// </summary>
    [DataMember(Name="additional_info", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "additional_info")]
    public Dictionary<string, List<string>> AdditionalInfo { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseError {\n");
      sb.Append("  HttpStatus: ").Append(HttpStatus).Append("\n");
      sb.Append("  ErrorCode: ").Append(ErrorCode).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  DocumentationLink: ").Append(DocumentationLink).Append("\n");
      sb.Append("  AdditionalInfo: ").Append(AdditionalInfo).Append("\n");
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
