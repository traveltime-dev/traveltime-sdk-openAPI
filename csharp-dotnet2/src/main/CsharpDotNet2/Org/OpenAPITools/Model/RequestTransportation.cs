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
  public class RequestTransportation {
    /// <summary>
    /// Gets or Sets Type
    /// </summary>
    [DataMember(Name="type", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "type")]
    public string Type { get; set; }

    /// <summary>
    /// Gets or Sets PtChangeDelay
    /// </summary>
    [DataMember(Name="pt_change_delay", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "pt_change_delay")]
    public int? PtChangeDelay { get; set; }

    /// <summary>
    /// Gets or Sets WalkingTime
    /// </summary>
    [DataMember(Name="walking_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "walking_time")]
    public int? WalkingTime { get; set; }

    /// <summary>
    /// Gets or Sets DrivingTimeToStation
    /// </summary>
    [DataMember(Name="driving_time_to_station", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "driving_time_to_station")]
    public int? DrivingTimeToStation { get; set; }

    /// <summary>
    /// Gets or Sets ParkingTime
    /// </summary>
    [DataMember(Name="parking_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "parking_time")]
    public int? ParkingTime { get; set; }

    /// <summary>
    /// Gets or Sets BoardingTime
    /// </summary>
    [DataMember(Name="boarding_time", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "boarding_time")]
    public int? BoardingTime { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RequestTransportation {\n");
      sb.Append("  Type: ").Append(Type).Append("\n");
      sb.Append("  PtChangeDelay: ").Append(PtChangeDelay).Append("\n");
      sb.Append("  WalkingTime: ").Append(WalkingTime).Append("\n");
      sb.Append("  DrivingTimeToStation: ").Append(DrivingTimeToStation).Append("\n");
      sb.Append("  ParkingTime: ").Append(ParkingTime).Append("\n");
      sb.Append("  BoardingTime: ").Append(BoardingTime).Append("\n");
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
