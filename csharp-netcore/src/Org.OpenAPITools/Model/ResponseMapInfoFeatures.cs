/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// ResponseMapInfoFeatures
    /// </summary>
    [DataContract(Name = "ResponseMapInfoFeatures")]
    public partial class ResponseMapInfoFeatures : IEquatable<ResponseMapInfoFeatures>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseMapInfoFeatures" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseMapInfoFeatures() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseMapInfoFeatures" /> class.
        /// </summary>
        /// <param name="publicTransport">publicTransport.</param>
        /// <param name="fares">fares (required).</param>
        /// <param name="postcodes">postcodes (required).</param>
        public ResponseMapInfoFeatures(ResponseMapInfoFeaturesPublicTransport publicTransport = default(ResponseMapInfoFeaturesPublicTransport), bool fares = default(bool), bool postcodes = default(bool))
        {
            this.Fares = fares;
            this.Postcodes = postcodes;
            this.PublicTransport = publicTransport;
        }

        /// <summary>
        /// Gets or Sets PublicTransport
        /// </summary>
        [DataMember(Name = "public_transport", EmitDefaultValue = false)]
        public ResponseMapInfoFeaturesPublicTransport PublicTransport { get; set; }

        /// <summary>
        /// Gets or Sets Fares
        /// </summary>
        [DataMember(Name = "fares", IsRequired = true, EmitDefaultValue = true)]
        public bool Fares { get; set; }

        /// <summary>
        /// Gets or Sets Postcodes
        /// </summary>
        [DataMember(Name = "postcodes", IsRequired = true, EmitDefaultValue = true)]
        public bool Postcodes { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseMapInfoFeatures {\n");
            sb.Append("  PublicTransport: ").Append(PublicTransport).Append("\n");
            sb.Append("  Fares: ").Append(Fares).Append("\n");
            sb.Append("  Postcodes: ").Append(Postcodes).Append("\n");
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
            return this.Equals(input as ResponseMapInfoFeatures);
        }

        /// <summary>
        /// Returns true if ResponseMapInfoFeatures instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseMapInfoFeatures to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseMapInfoFeatures input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.PublicTransport == input.PublicTransport ||
                    (this.PublicTransport != null &&
                    this.PublicTransport.Equals(input.PublicTransport))
                ) && 
                (
                    this.Fares == input.Fares ||
                    this.Fares.Equals(input.Fares)
                ) && 
                (
                    this.Postcodes == input.Postcodes ||
                    this.Postcodes.Equals(input.Postcodes)
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
                if (this.PublicTransport != null)
                    hashCode = hashCode * 59 + this.PublicTransport.GetHashCode();
                hashCode = hashCode * 59 + this.Fares.GetHashCode();
                hashCode = hashCode * 59 + this.Postcodes.GetHashCode();
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
