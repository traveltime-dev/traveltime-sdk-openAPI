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
  public class RequestTimeMap {
    /// <summary>
    /// Gets or Sets DepartureSearches
    /// </summary>
    [DataMember(Name="departure_searches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "departure_searches")]
    public List<RequestTimeMapDepartureSearch> DepartureSearches { get; set; }

    /// <summary>
    /// Gets or Sets ArrivalSearches
    /// </summary>
    [DataMember(Name="arrival_searches", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "arrival_searches")]
    public List<RequestTimeMapArrivalSearch> ArrivalSearches { get; set; }

    /// <summary>
    /// Gets or Sets Unions
    /// </summary>
    [DataMember(Name="unions", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "unions")]
    public List<RequestUnionOnIntersection> Unions { get; set; }

    /// <summary>
    /// Gets or Sets Intersections
    /// </summary>
    [DataMember(Name="intersections", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "intersections")]
    public List<RequestUnionOnIntersection> Intersections { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RequestTimeMap {\n");
      sb.Append("  DepartureSearches: ").Append(DepartureSearches).Append("\n");
      sb.Append("  ArrivalSearches: ").Append(ArrivalSearches).Append("\n");
      sb.Append("  Unions: ").Append(Unions).Append("\n");
      sb.Append("  Intersections: ").Append(Intersections).Append("\n");
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
