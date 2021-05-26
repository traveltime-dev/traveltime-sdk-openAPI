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
    /// RequestRoutes
    /// </summary>
    [DataContract]
    public partial class RequestRoutes :  IEquatable<RequestRoutes>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestRoutes" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RequestRoutes() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestRoutes" /> class.
        /// </summary>
        /// <param name="locations">locations (required).</param>
        /// <param name="departureSearches">departureSearches.</param>
        /// <param name="arrivalSearches">arrivalSearches.</param>
        public RequestRoutes(List<RequestLocation> locations = default(List<RequestLocation>), List<RequestRoutesDepartureSearch> departureSearches = default(List<RequestRoutesDepartureSearch>), List<RequestRoutesArrivalSearch> arrivalSearches = default(List<RequestRoutesArrivalSearch>))
        {
            // to ensure "locations" is required (not null)
            if (locations == null)
            {
                throw new InvalidDataException("locations is a required property for RequestRoutes and cannot be null");
            }
            else
            {
                this.Locations = locations;
            }

            this.DepartureSearches = departureSearches;
            this.ArrivalSearches = arrivalSearches;
        }

        /// <summary>
        /// Gets or Sets Locations
        /// </summary>
        [DataMember(Name="locations", EmitDefaultValue=true)]
        public List<RequestLocation> Locations { get; set; }

        /// <summary>
        /// Gets or Sets DepartureSearches
        /// </summary>
        [DataMember(Name="departure_searches", EmitDefaultValue=false)]
        public List<RequestRoutesDepartureSearch> DepartureSearches { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalSearches
        /// </summary>
        [DataMember(Name="arrival_searches", EmitDefaultValue=false)]
        public List<RequestRoutesArrivalSearch> ArrivalSearches { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestRoutes {\n");
            sb.Append("  Locations: ").Append(Locations).Append("\n");
            sb.Append("  DepartureSearches: ").Append(DepartureSearches).Append("\n");
            sb.Append("  ArrivalSearches: ").Append(ArrivalSearches).Append("\n");
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
            return this.Equals(input as RequestRoutes);
        }

        /// <summary>
        /// Returns true if RequestRoutes instances are equal
        /// </summary>
        /// <param name="input">Instance of RequestRoutes to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestRoutes input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Locations == input.Locations ||
                    this.Locations != null &&
                    input.Locations != null &&
                    this.Locations.SequenceEqual(input.Locations)
                ) && 
                (
                    this.DepartureSearches == input.DepartureSearches ||
                    this.DepartureSearches != null &&
                    input.DepartureSearches != null &&
                    this.DepartureSearches.SequenceEqual(input.DepartureSearches)
                ) && 
                (
                    this.ArrivalSearches == input.ArrivalSearches ||
                    this.ArrivalSearches != null &&
                    input.ArrivalSearches != null &&
                    this.ArrivalSearches.SequenceEqual(input.ArrivalSearches)
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
                if (this.Locations != null)
                    hashCode = hashCode * 59 + this.Locations.GetHashCode();
                if (this.DepartureSearches != null)
                    hashCode = hashCode * 59 + this.DepartureSearches.GetHashCode();
                if (this.ArrivalSearches != null)
                    hashCode = hashCode * 59 + this.ArrivalSearches.GetHashCode();
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
