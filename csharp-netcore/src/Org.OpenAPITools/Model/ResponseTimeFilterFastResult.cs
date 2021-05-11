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
    /// ResponseTimeFilterFastResult
    /// </summary>
    [DataContract(Name = "ResponseTimeFilterFastResult")]
    public partial class ResponseTimeFilterFastResult : IEquatable<ResponseTimeFilterFastResult>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseTimeFilterFastResult" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseTimeFilterFastResult() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseTimeFilterFastResult" /> class.
        /// </summary>
        /// <param name="searchId">searchId (required).</param>
        /// <param name="locations">locations (required).</param>
        /// <param name="unreachable">unreachable (required).</param>
        public ResponseTimeFilterFastResult(string searchId = default(string), List<ResponseTimeFilterFastLocation> locations = default(List<ResponseTimeFilterFastLocation>), List<string> unreachable = default(List<string>))
        {
            // to ensure "searchId" is required (not null)
            this.SearchId = searchId ?? throw new ArgumentNullException("searchId is a required property for ResponseTimeFilterFastResult and cannot be null");
            // to ensure "locations" is required (not null)
            this.Locations = locations ?? throw new ArgumentNullException("locations is a required property for ResponseTimeFilterFastResult and cannot be null");
            // to ensure "unreachable" is required (not null)
            this.Unreachable = unreachable ?? throw new ArgumentNullException("unreachable is a required property for ResponseTimeFilterFastResult and cannot be null");
        }

        /// <summary>
        /// Gets or Sets SearchId
        /// </summary>
        [DataMember(Name = "search_id", IsRequired = true, EmitDefaultValue = false)]
        public string SearchId { get; set; }

        /// <summary>
        /// Gets or Sets Locations
        /// </summary>
        [DataMember(Name = "locations", IsRequired = true, EmitDefaultValue = false)]
        public List<ResponseTimeFilterFastLocation> Locations { get; set; }

        /// <summary>
        /// Gets or Sets Unreachable
        /// </summary>
        [DataMember(Name = "unreachable", IsRequired = true, EmitDefaultValue = false)]
        public List<string> Unreachable { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseTimeFilterFastResult {\n");
            sb.Append("  SearchId: ").Append(SearchId).Append("\n");
            sb.Append("  Locations: ").Append(Locations).Append("\n");
            sb.Append("  Unreachable: ").Append(Unreachable).Append("\n");
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
            return this.Equals(input as ResponseTimeFilterFastResult);
        }

        /// <summary>
        /// Returns true if ResponseTimeFilterFastResult instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseTimeFilterFastResult to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseTimeFilterFastResult input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.SearchId == input.SearchId ||
                    (this.SearchId != null &&
                    this.SearchId.Equals(input.SearchId))
                ) && 
                (
                    this.Locations == input.Locations ||
                    this.Locations != null &&
                    input.Locations != null &&
                    this.Locations.SequenceEqual(input.Locations)
                ) && 
                (
                    this.Unreachable == input.Unreachable ||
                    this.Unreachable != null &&
                    input.Unreachable != null &&
                    this.Unreachable.SequenceEqual(input.Unreachable)
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
                if (this.SearchId != null)
                    hashCode = hashCode * 59 + this.SearchId.GetHashCode();
                if (this.Locations != null)
                    hashCode = hashCode * 59 + this.Locations.GetHashCode();
                if (this.Unreachable != null)
                    hashCode = hashCode * 59 + this.Unreachable.GetHashCode();
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
