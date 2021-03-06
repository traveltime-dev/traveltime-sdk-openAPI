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
    /// RequestLocation
    /// </summary>
    [DataContract]
    public partial class RequestLocation :  IEquatable<RequestLocation>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestLocation" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RequestLocation() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestLocation" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="coords">coords (required).</param>
        public RequestLocation(string id = default(string), Coords coords = default(Coords))
        {
            // to ensure "id" is required (not null)
            if (id == null)
            {
                throw new InvalidDataException("id is a required property for RequestLocation and cannot be null");
            }
            else
            {
                this.Id = id;
            }

            // to ensure "coords" is required (not null)
            if (coords == null)
            {
                throw new InvalidDataException("coords is a required property for RequestLocation and cannot be null");
            }
            else
            {
                this.Coords = coords;
            }

        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Coords
        /// </summary>
        [DataMember(Name="coords", EmitDefaultValue=true)]
        public Coords Coords { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestLocation {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Coords: ").Append(Coords).Append("\n");
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
            return this.Equals(input as RequestLocation);
        }

        /// <summary>
        /// Returns true if RequestLocation instances are equal
        /// </summary>
        /// <param name="input">Instance of RequestLocation to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestLocation input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Id == input.Id ||
                    (this.Id != null &&
                    this.Id.Equals(input.Id))
                ) && 
                (
                    this.Coords == input.Coords ||
                    (this.Coords != null &&
                    this.Coords.Equals(input.Coords))
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
                if (this.Id != null)
                    hashCode = hashCode * 59 + this.Id.GetHashCode();
                if (this.Coords != null)
                    hashCode = hashCode * 59 + this.Coords.GetHashCode();
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
