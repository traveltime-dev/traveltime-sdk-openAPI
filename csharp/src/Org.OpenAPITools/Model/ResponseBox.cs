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
    /// ResponseBox
    /// </summary>
    [DataContract]
    public partial class ResponseBox :  IEquatable<ResponseBox>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseBox" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseBox() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseBox" /> class.
        /// </summary>
        /// <param name="minLat">minLat (required).</param>
        /// <param name="maxLat">maxLat (required).</param>
        /// <param name="minLng">minLng (required).</param>
        /// <param name="maxLng">maxLng (required).</param>
        public ResponseBox(double minLat = default(double), double maxLat = default(double), double minLng = default(double), double maxLng = default(double))
        {
            // to ensure "minLat" is required (not null)
            if (minLat == null)
            {
                throw new InvalidDataException("minLat is a required property for ResponseBox and cannot be null");
            }
            else
            {
                this.MinLat = minLat;
            }

            // to ensure "maxLat" is required (not null)
            if (maxLat == null)
            {
                throw new InvalidDataException("maxLat is a required property for ResponseBox and cannot be null");
            }
            else
            {
                this.MaxLat = maxLat;
            }

            // to ensure "minLng" is required (not null)
            if (minLng == null)
            {
                throw new InvalidDataException("minLng is a required property for ResponseBox and cannot be null");
            }
            else
            {
                this.MinLng = minLng;
            }

            // to ensure "maxLng" is required (not null)
            if (maxLng == null)
            {
                throw new InvalidDataException("maxLng is a required property for ResponseBox and cannot be null");
            }
            else
            {
                this.MaxLng = maxLng;
            }

        }

        /// <summary>
        /// Gets or Sets MinLat
        /// </summary>
        [DataMember(Name="min_lat", EmitDefaultValue=true)]
        public double MinLat { get; set; }

        /// <summary>
        /// Gets or Sets MaxLat
        /// </summary>
        [DataMember(Name="max_lat", EmitDefaultValue=true)]
        public double MaxLat { get; set; }

        /// <summary>
        /// Gets or Sets MinLng
        /// </summary>
        [DataMember(Name="min_lng", EmitDefaultValue=true)]
        public double MinLng { get; set; }

        /// <summary>
        /// Gets or Sets MaxLng
        /// </summary>
        [DataMember(Name="max_lng", EmitDefaultValue=true)]
        public double MaxLng { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseBox {\n");
            sb.Append("  MinLat: ").Append(MinLat).Append("\n");
            sb.Append("  MaxLat: ").Append(MaxLat).Append("\n");
            sb.Append("  MinLng: ").Append(MinLng).Append("\n");
            sb.Append("  MaxLng: ").Append(MaxLng).Append("\n");
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
            return this.Equals(input as ResponseBox);
        }

        /// <summary>
        /// Returns true if ResponseBox instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseBox to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseBox input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.MinLat == input.MinLat ||
                    (this.MinLat != null &&
                    this.MinLat.Equals(input.MinLat))
                ) && 
                (
                    this.MaxLat == input.MaxLat ||
                    (this.MaxLat != null &&
                    this.MaxLat.Equals(input.MaxLat))
                ) && 
                (
                    this.MinLng == input.MinLng ||
                    (this.MinLng != null &&
                    this.MinLng.Equals(input.MinLng))
                ) && 
                (
                    this.MaxLng == input.MaxLng ||
                    (this.MaxLng != null &&
                    this.MaxLng.Equals(input.MaxLng))
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
                if (this.MinLat != null)
                    hashCode = hashCode * 59 + this.MinLat.GetHashCode();
                if (this.MaxLat != null)
                    hashCode = hashCode * 59 + this.MaxLat.GetHashCode();
                if (this.MinLng != null)
                    hashCode = hashCode * 59 + this.MinLng.GetHashCode();
                if (this.MaxLng != null)
                    hashCode = hashCode * 59 + this.MaxLng.GetHashCode();
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
