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
  public class ResponseGeocodingProperties {
    /// <summary>
    /// Gets or Sets Name
    /// </summary>
    [DataMember(Name="name", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "name")]
    public string Name { get; set; }

    /// <summary>
    /// Gets or Sets Label
    /// </summary>
    [DataMember(Name="label", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "label")]
    public string Label { get; set; }

    /// <summary>
    /// Gets or Sets Score
    /// </summary>
    [DataMember(Name="score", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "score")]
    public double? Score { get; set; }

    /// <summary>
    /// Gets or Sets HouseNumber
    /// </summary>
    [DataMember(Name="house_number", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "house_number")]
    public string HouseNumber { get; set; }

    /// <summary>
    /// Gets or Sets Street
    /// </summary>
    [DataMember(Name="street", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "street")]
    public string Street { get; set; }

    /// <summary>
    /// Gets or Sets Region
    /// </summary>
    [DataMember(Name="region", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "region")]
    public string Region { get; set; }

    /// <summary>
    /// Gets or Sets RegionCode
    /// </summary>
    [DataMember(Name="region_code", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "region_code")]
    public string RegionCode { get; set; }

    /// <summary>
    /// Gets or Sets Neighbourhood
    /// </summary>
    [DataMember(Name="neighbourhood", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "neighbourhood")]
    public string Neighbourhood { get; set; }

    /// <summary>
    /// Gets or Sets County
    /// </summary>
    [DataMember(Name="county", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "county")]
    public string County { get; set; }

    /// <summary>
    /// Gets or Sets Macroregion
    /// </summary>
    [DataMember(Name="macroregion", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "macroregion")]
    public string Macroregion { get; set; }

    /// <summary>
    /// Gets or Sets City
    /// </summary>
    [DataMember(Name="city", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "city")]
    public string City { get; set; }

    /// <summary>
    /// Gets or Sets Country
    /// </summary>
    [DataMember(Name="country", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "country")]
    public string Country { get; set; }

    /// <summary>
    /// Gets or Sets CountryCode
    /// </summary>
    [DataMember(Name="country_code", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "country_code")]
    public string CountryCode { get; set; }

    /// <summary>
    /// Gets or Sets Continent
    /// </summary>
    [DataMember(Name="continent", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "continent")]
    public string Continent { get; set; }

    /// <summary>
    /// Gets or Sets Postcode
    /// </summary>
    [DataMember(Name="postcode", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "postcode")]
    public string Postcode { get; set; }

    /// <summary>
    /// Gets or Sets Features
    /// </summary>
    [DataMember(Name="features", EmitDefaultValue=false)]
    [JsonProperty(PropertyName = "features")]
    public ResponseMapInfoFeatures Features { get; set; }


    /// <summary>
    /// Get the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()  {
      var sb = new StringBuilder();
      sb.Append("class ResponseGeocodingProperties {\n");
      sb.Append("  Name: ").Append(Name).Append("\n");
      sb.Append("  Label: ").Append(Label).Append("\n");
      sb.Append("  Score: ").Append(Score).Append("\n");
      sb.Append("  HouseNumber: ").Append(HouseNumber).Append("\n");
      sb.Append("  Street: ").Append(Street).Append("\n");
      sb.Append("  Region: ").Append(Region).Append("\n");
      sb.Append("  RegionCode: ").Append(RegionCode).Append("\n");
      sb.Append("  Neighbourhood: ").Append(Neighbourhood).Append("\n");
      sb.Append("  County: ").Append(County).Append("\n");
      sb.Append("  Macroregion: ").Append(Macroregion).Append("\n");
      sb.Append("  City: ").Append(City).Append("\n");
      sb.Append("  Country: ").Append(Country).Append("\n");
      sb.Append("  CountryCode: ").Append(CountryCode).Append("\n");
      sb.Append("  Continent: ").Append(Continent).Append("\n");
      sb.Append("  Postcode: ").Append(Postcode).Append("\n");
      sb.Append("  Features: ").Append(Features).Append("\n");
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
