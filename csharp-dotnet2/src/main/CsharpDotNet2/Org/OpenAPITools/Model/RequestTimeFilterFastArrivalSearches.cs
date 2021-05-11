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
  public class RequestTimeFilterFastArrivalSearches {
    /// <summary>
    /// Gets or Sets ManyToOne
    /// </summary>
    [DataMember(Name="many_to_one", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "many_to_one")]
    public List<RequestTimeFilterFastArrivalManyToOneSearch> ManyToOne { get; set; }

    /// <summary>
    /// Gets or Sets OneToMany
    /// </summary>
    [DataMember(Name="one_to_many", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "one_to_many")]
    public List<RequestTimeFilterFastArrivalOneToManySearch> OneToMany { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class RequestTimeFilterFastArrivalSearches {\n");
      sb.Append("  ManyToOne: ").Append(ManyToOne).Append("\n");
      sb.Append("  OneToMany: ").Append(OneToMany).Append("\n");
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
