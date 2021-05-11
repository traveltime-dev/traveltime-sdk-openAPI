/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// ResponseGeocodingProperties
    /// </summary>
    [DataContract]
    public partial class ResponseGeocodingProperties :  IEquatable<ResponseGeocodingProperties>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseGeocodingProperties" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseGeocodingProperties() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseGeocodingProperties" /> class.
        /// </summary>
        /// <param name="name">name (required).</param>
        /// <param name="label">label (required).</param>
        /// <param name="score">score.</param>
        /// <param name="houseNumber">houseNumber.</param>
        /// <param name="street">street.</param>
        /// <param name="region">region.</param>
        /// <param name="regionCode">regionCode.</param>
        /// <param name="neighbourhood">neighbourhood.</param>
        /// <param name="county">county.</param>
        /// <param name="macroregion">macroregion.</param>
        /// <param name="city">city.</param>
        /// <param name="country">country.</param>
        /// <param name="countryCode">countryCode.</param>
        /// <param name="continent">continent.</param>
        /// <param name="postcode">postcode.</param>
        /// <param name="features">features.</param>
        public ResponseGeocodingProperties(string name = default(string), string label = default(string), double score = default(double), string houseNumber = default(string), string street = default(string), string region = default(string), string regionCode = default(string), string neighbourhood = default(string), string county = default(string), string macroregion = default(string), string city = default(string), string country = default(string), string countryCode = default(string), string continent = default(string), string postcode = default(string), ResponseMapInfoFeatures features = default(ResponseMapInfoFeatures))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new InvalidDataException("name is a required property for ResponseGeocodingProperties and cannot be null");
            }
            else
            {
                this.Name = name;
            }

            // to ensure "label" is required (not null)
            if (label == null)
            {
                throw new InvalidDataException("label is a required property for ResponseGeocodingProperties and cannot be null");
            }
            else
            {
                this.Label = label;
            }

            this.Score = score;
            this.HouseNumber = houseNumber;
            this.Street = street;
            this.Region = region;
            this.RegionCode = regionCode;
            this.Neighbourhood = neighbourhood;
            this.County = county;
            this.Macroregion = macroregion;
            this.City = city;
            this.Country = country;
            this.CountryCode = countryCode;
            this.Continent = continent;
            this.Postcode = postcode;
            this.Features = features;
        }

        /// <summary>
        /// Gets or Sets Name
        /// </summary>
        [DataMember(Name="name", EmitDefaultValue=true)]
        public string Name { get; set; }

        /// <summary>
        /// Gets or Sets Label
        /// </summary>
        [DataMember(Name="label", EmitDefaultValue=true)]
        public string Label { get; set; }

        /// <summary>
        /// Gets or Sets Score
        /// </summary>
        [DataMember(Name="score", EmitDefaultValue=false)]
        public double Score { get; set; }

        /// <summary>
        /// Gets or Sets HouseNumber
        /// </summary>
        [DataMember(Name="house_number", EmitDefaultValue=false)]
        public string HouseNumber { get; set; }

        /// <summary>
        /// Gets or Sets Street
        /// </summary>
        [DataMember(Name="street", EmitDefaultValue=false)]
        public string Street { get; set; }

        /// <summary>
        /// Gets or Sets Region
        /// </summary>
        [DataMember(Name="region", EmitDefaultValue=false)]
        public string Region { get; set; }

        /// <summary>
        /// Gets or Sets RegionCode
        /// </summary>
        [DataMember(Name="region_code", EmitDefaultValue=false)]
        public string RegionCode { get; set; }

        /// <summary>
        /// Gets or Sets Neighbourhood
        /// </summary>
        [DataMember(Name="neighbourhood", EmitDefaultValue=false)]
        public string Neighbourhood { get; set; }

        /// <summary>
        /// Gets or Sets County
        /// </summary>
        [DataMember(Name="county", EmitDefaultValue=false)]
        public string County { get; set; }

        /// <summary>
        /// Gets or Sets Macroregion
        /// </summary>
        [DataMember(Name="macroregion", EmitDefaultValue=false)]
        public string Macroregion { get; set; }

        /// <summary>
        /// Gets or Sets City
        /// </summary>
        [DataMember(Name="city", EmitDefaultValue=false)]
        public string City { get; set; }

        /// <summary>
        /// Gets or Sets Country
        /// </summary>
        [DataMember(Name="country", EmitDefaultValue=false)]
        public string Country { get; set; }

        /// <summary>
        /// Gets or Sets CountryCode
        /// </summary>
        [DataMember(Name="country_code", EmitDefaultValue=false)]
        public string CountryCode { get; set; }

        /// <summary>
        /// Gets or Sets Continent
        /// </summary>
        [DataMember(Name="continent", EmitDefaultValue=false)]
        public string Continent { get; set; }

        /// <summary>
        /// Gets or Sets Postcode
        /// </summary>
        [DataMember(Name="postcode", EmitDefaultValue=false)]
        public string Postcode { get; set; }

        /// <summary>
        /// Gets or Sets Features
        /// </summary>
        [DataMember(Name="features", EmitDefaultValue=false)]
        public ResponseMapInfoFeatures Features { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
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
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ResponseGeocodingProperties);
        }

        /// <summary>
        /// Returns true if ResponseGeocodingProperties instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseGeocodingProperties to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseGeocodingProperties input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Label == input.Label ||
                    (this.Label != null &&
                    this.Label.Equals(input.Label))
                ) && 
                (
                    this.Score == input.Score ||
                    (this.Score != null &&
                    this.Score.Equals(input.Score))
                ) && 
                (
                    this.HouseNumber == input.HouseNumber ||
                    (this.HouseNumber != null &&
                    this.HouseNumber.Equals(input.HouseNumber))
                ) && 
                (
                    this.Street == input.Street ||
                    (this.Street != null &&
                    this.Street.Equals(input.Street))
                ) && 
                (
                    this.Region == input.Region ||
                    (this.Region != null &&
                    this.Region.Equals(input.Region))
                ) && 
                (
                    this.RegionCode == input.RegionCode ||
                    (this.RegionCode != null &&
                    this.RegionCode.Equals(input.RegionCode))
                ) && 
                (
                    this.Neighbourhood == input.Neighbourhood ||
                    (this.Neighbourhood != null &&
                    this.Neighbourhood.Equals(input.Neighbourhood))
                ) && 
                (
                    this.County == input.County ||
                    (this.County != null &&
                    this.County.Equals(input.County))
                ) && 
                (
                    this.Macroregion == input.Macroregion ||
                    (this.Macroregion != null &&
                    this.Macroregion.Equals(input.Macroregion))
                ) && 
                (
                    this.City == input.City ||
                    (this.City != null &&
                    this.City.Equals(input.City))
                ) && 
                (
                    this.Country == input.Country ||
                    (this.Country != null &&
                    this.Country.Equals(input.Country))
                ) && 
                (
                    this.CountryCode == input.CountryCode ||
                    (this.CountryCode != null &&
                    this.CountryCode.Equals(input.CountryCode))
                ) && 
                (
                    this.Continent == input.Continent ||
                    (this.Continent != null &&
                    this.Continent.Equals(input.Continent))
                ) && 
                (
                    this.Postcode == input.Postcode ||
                    (this.Postcode != null &&
                    this.Postcode.Equals(input.Postcode))
                ) && 
                (
                    this.Features == input.Features ||
                    (this.Features != null &&
                    this.Features.Equals(input.Features))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Label != null)
                    hashCode = hashCode * 59 + this.Label.GetHashCode();
                if (this.Score != null)
                    hashCode = hashCode * 59 + this.Score.GetHashCode();
                if (this.HouseNumber != null)
                    hashCode = hashCode * 59 + this.HouseNumber.GetHashCode();
                if (this.Street != null)
                    hashCode = hashCode * 59 + this.Street.GetHashCode();
                if (this.Region != null)
                    hashCode = hashCode * 59 + this.Region.GetHashCode();
                if (this.RegionCode != null)
                    hashCode = hashCode * 59 + this.RegionCode.GetHashCode();
                if (this.Neighbourhood != null)
                    hashCode = hashCode * 59 + this.Neighbourhood.GetHashCode();
                if (this.County != null)
                    hashCode = hashCode * 59 + this.County.GetHashCode();
                if (this.Macroregion != null)
                    hashCode = hashCode * 59 + this.Macroregion.GetHashCode();
                if (this.City != null)
                    hashCode = hashCode * 59 + this.City.GetHashCode();
                if (this.Country != null)
                    hashCode = hashCode * 59 + this.Country.GetHashCode();
                if (this.CountryCode != null)
                    hashCode = hashCode * 59 + this.CountryCode.GetHashCode();
                if (this.Continent != null)
                    hashCode = hashCode * 59 + this.Continent.GetHashCode();
                if (this.Postcode != null)
                    hashCode = hashCode * 59 + this.Postcode.GetHashCode();
                if (this.Features != null)
                    hashCode = hashCode * 59 + this.Features.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
