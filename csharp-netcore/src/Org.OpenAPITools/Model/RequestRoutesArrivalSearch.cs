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
    /// RequestRoutesArrivalSearch
    /// </summary>
    [DataContract(Name = "RequestRoutesArrivalSearch")]
    public partial class RequestRoutesArrivalSearch : IEquatable<RequestRoutesArrivalSearch>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestRoutesArrivalSearch" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RequestRoutesArrivalSearch() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestRoutesArrivalSearch" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="departureLocationIds">departureLocationIds (required).</param>
        /// <param name="arrivalLocationId">arrivalLocationId (required).</param>
        /// <param name="transportation">transportation (required).</param>
        /// <param name="arrivalTime">arrivalTime (required).</param>
        /// <param name="properties">properties (required).</param>
        /// <param name="range">range.</param>
        public RequestRoutesArrivalSearch(string id = default(string), List<string> departureLocationIds = default(List<string>), string arrivalLocationId = default(string), RequestTransportation transportation = default(RequestTransportation), DateTime arrivalTime = default(DateTime), List<RequestRoutesProperty> properties = default(List<RequestRoutesProperty>), RequestRangeFull range = default(RequestRangeFull))
        {
            // to ensure "id" is required (not null)
            this.Id = id ?? throw new ArgumentNullException("id is a required property for RequestRoutesArrivalSearch and cannot be null");
            // to ensure "departureLocationIds" is required (not null)
            this.DepartureLocationIds = departureLocationIds ?? throw new ArgumentNullException("departureLocationIds is a required property for RequestRoutesArrivalSearch and cannot be null");
            // to ensure "arrivalLocationId" is required (not null)
            this.ArrivalLocationId = arrivalLocationId ?? throw new ArgumentNullException("arrivalLocationId is a required property for RequestRoutesArrivalSearch and cannot be null");
            // to ensure "transportation" is required (not null)
            this.Transportation = transportation ?? throw new ArgumentNullException("transportation is a required property for RequestRoutesArrivalSearch and cannot be null");
            this.ArrivalTime = arrivalTime;
            // to ensure "properties" is required (not null)
            this.Properties = properties ?? throw new ArgumentNullException("properties is a required property for RequestRoutesArrivalSearch and cannot be null");
            this.Range = range;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name = "id", IsRequired = true, EmitDefaultValue = false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets DepartureLocationIds
        /// </summary>
        [DataMember(Name = "departure_location_ids", IsRequired = true, EmitDefaultValue = false)]
        public List<string> DepartureLocationIds { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalLocationId
        /// </summary>
        [DataMember(Name = "arrival_location_id", IsRequired = true, EmitDefaultValue = false)]
        public string ArrivalLocationId { get; set; }

        /// <summary>
        /// Gets or Sets Transportation
        /// </summary>
        [DataMember(Name = "transportation", IsRequired = true, EmitDefaultValue = false)]
        public RequestTransportation Transportation { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalTime
        /// </summary>
        [DataMember(Name = "arrival_time", IsRequired = true, EmitDefaultValue = false)]
        public DateTime ArrivalTime { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [DataMember(Name = "properties", IsRequired = true, EmitDefaultValue = false)]
        public List<RequestRoutesProperty> Properties { get; set; }

        /// <summary>
        /// Gets or Sets Range
        /// </summary>
        [DataMember(Name = "range", EmitDefaultValue = false)]
        public RequestRangeFull Range { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestRoutesArrivalSearch {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  DepartureLocationIds: ").Append(DepartureLocationIds).Append("\n");
            sb.Append("  ArrivalLocationId: ").Append(ArrivalLocationId).Append("\n");
            sb.Append("  Transportation: ").Append(Transportation).Append("\n");
            sb.Append("  ArrivalTime: ").Append(ArrivalTime).Append("\n");
            sb.Append("  Properties: ").Append(Properties).Append("\n");
            sb.Append("  Range: ").Append(Range).Append("\n");
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
            return this.Equals(input as RequestRoutesArrivalSearch);
        }

        /// <summary>
        /// Returns true if RequestRoutesArrivalSearch instances are equal
        /// </summary>
        /// <param name="input">Instance of RequestRoutesArrivalSearch to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestRoutesArrivalSearch input)
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
                    this.DepartureLocationIds == input.DepartureLocationIds ||
                    this.DepartureLocationIds != null &&
                    input.DepartureLocationIds != null &&
                    this.DepartureLocationIds.SequenceEqual(input.DepartureLocationIds)
                ) && 
                (
                    this.ArrivalLocationId == input.ArrivalLocationId ||
                    (this.ArrivalLocationId != null &&
                    this.ArrivalLocationId.Equals(input.ArrivalLocationId))
                ) && 
                (
                    this.Transportation == input.Transportation ||
                    (this.Transportation != null &&
                    this.Transportation.Equals(input.Transportation))
                ) && 
                (
                    this.ArrivalTime == input.ArrivalTime ||
                    (this.ArrivalTime != null &&
                    this.ArrivalTime.Equals(input.ArrivalTime))
                ) && 
                (
                    this.Properties == input.Properties ||
                    this.Properties != null &&
                    input.Properties != null &&
                    this.Properties.SequenceEqual(input.Properties)
                ) && 
                (
                    this.Range == input.Range ||
                    (this.Range != null &&
                    this.Range.Equals(input.Range))
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
                if (this.DepartureLocationIds != null)
                    hashCode = hashCode * 59 + this.DepartureLocationIds.GetHashCode();
                if (this.ArrivalLocationId != null)
                    hashCode = hashCode * 59 + this.ArrivalLocationId.GetHashCode();
                if (this.Transportation != null)
                    hashCode = hashCode * 59 + this.Transportation.GetHashCode();
                if (this.ArrivalTime != null)
                    hashCode = hashCode * 59 + this.ArrivalTime.GetHashCode();
                if (this.Properties != null)
                    hashCode = hashCode * 59 + this.Properties.GetHashCode();
                if (this.Range != null)
                    hashCode = hashCode * 59 + this.Range.GetHashCode();
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
