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
    /// ResponseShape
    /// </summary>
    [DataContract]
    public partial class ResponseShape :  IEquatable<ResponseShape>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseShape" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseShape() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseShape" /> class.
        /// </summary>
        /// <param name="shell">shell (required).</param>
        /// <param name="holes">holes (required).</param>
        public ResponseShape(List<Coords> shell = default(List<Coords>), List<List<Coords>> holes = default(List<List<Coords>>))
        {
            // to ensure "shell" is required (not null)
            if (shell == null)
            {
                throw new InvalidDataException("shell is a required property for ResponseShape and cannot be null");
            }
            else
            {
                this.Shell = shell;
            }

            // to ensure "holes" is required (not null)
            if (holes == null)
            {
                throw new InvalidDataException("holes is a required property for ResponseShape and cannot be null");
            }
            else
            {
                this.Holes = holes;
            }

        }

        /// <summary>
        /// Gets or Sets Shell
        /// </summary>
        [DataMember(Name="shell", EmitDefaultValue=true)]
        public List<Coords> Shell { get; set; }

        /// <summary>
        /// Gets or Sets Holes
        /// </summary>
        [DataMember(Name="holes", EmitDefaultValue=true)]
        public List<List<Coords>> Holes { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseShape {\n");
            sb.Append("  Shell: ").Append(Shell).Append("\n");
            sb.Append("  Holes: ").Append(Holes).Append("\n");
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
            return this.Equals(input as ResponseShape);
        }

        /// <summary>
        /// Returns true if ResponseShape instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseShape to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseShape input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Shell == input.Shell ||
                    this.Shell != null &&
                    input.Shell != null &&
                    this.Shell.SequenceEqual(input.Shell)
                ) && 
                (
                    this.Holes == input.Holes ||
                    this.Holes != null &&
                    input.Holes != null &&
                    this.Holes.SequenceEqual(input.Holes)
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
                if (this.Shell != null)
                    hashCode = hashCode * 59 + this.Shell.GetHashCode();
                if (this.Holes != null)
                    hashCode = hashCode * 59 + this.Holes.GetHashCode();
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
