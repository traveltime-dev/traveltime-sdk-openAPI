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
  public class ResponseTimeFilterPostcodeDistrictProperties {
    /// <summary>
    /// Gets or Sets TravelTimeReachable
    /// </summary>
    [DataMember(Name="travel_time_reachable", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time_reachable")]
    public ResponseTravelTimeStatistics TravelTimeReachable { get; set; }

    /// <summary>
    /// Gets or Sets TravelTimeAll
    /// </summary>
    [DataMember(Name="travel_time_all", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "travel_time_all")]
    public ResponseTravelTimeStatistics TravelTimeAll { get; set; }

    /// <summary>
    /// Gets or Sets Coverage
    /// </summary>
    [DataMember(Name="coverage", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "coverage")]
    public double? Coverage { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseTimeFilterPostcodeDistrictProperties {\n");
      sb.Append("  TravelTimeReachable: ").Append(TravelTimeReachable).Append("\n");
      sb.Append("  TravelTimeAll: ").Append(TravelTimeAll).Append("\n");
      sb.Append("  Coverage: ").Append(Coverage).Append("\n");
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
