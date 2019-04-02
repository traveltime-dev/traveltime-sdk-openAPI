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
  public class ResponseSupportedLocations {
    /// <summary>
    /// Gets or Sets Locations
    /// </summary>
    [DataMember(Name="locations", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "locations")]
    public List<ResponseSupportedLocation> Locations { get; set; }

    /// <summary>
    /// Gets or Sets UnsupportedLocations
    /// </summary>
    [DataMember(Name="unsupported_locations", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unsupported_locations")]
    public List<string> UnsupportedLocations { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseSupportedLocations {\n");
      sb.Append("  Locations: ").Append(Locations).Append("\n");
      sb.Append("  UnsupportedLocations: ").Append(UnsupportedLocations).Append("\n");
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
