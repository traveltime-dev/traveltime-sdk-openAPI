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
    /// RequestTimeFilterPostcodeSectorsDepartureSearch
    /// </summary>
    [DataContract]
    public partial class RequestTimeFilterPostcodeSectorsDepartureSearch :  IEquatable<RequestTimeFilterPostcodeSectorsDepartureSearch>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestTimeFilterPostcodeSectorsDepartureSearch" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected RequestTimeFilterPostcodeSectorsDepartureSearch() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="RequestTimeFilterPostcodeSectorsDepartureSearch" /> class.
        /// </summary>
        /// <param name="id">id (required).</param>
        /// <param name="transportation">transportation (required).</param>
        /// <param name="travelTime">travelTime (required).</param>
        /// <param name="departureTime">departureTime (required).</param>
        /// <param name="reachablePostcodesThreshold">reachablePostcodesThreshold (required).</param>
        /// <param name="properties">properties (required).</param>
        /// <param name="range">range.</param>
        public RequestTimeFilterPostcodeSectorsDepartureSearch(string id = default(string), RequestTransportation transportation = default(RequestTransportation), int travelTime = default(int), DateTime departureTime = default(DateTime), double reachablePostcodesThreshold = default(double), List<RequestTimeFilterPostcodeSectorsProperty> properties = default(List<RequestTimeFilterPostcodeSectorsProperty>), RequestRangeFull range = default(RequestRangeFull))
        {
            // to ensure "id" is required (not null)
            if (id == null)
            {
                throw new InvalidDataException("id is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.Id = id;
            }

            // to ensure "transportation" is required (not null)
            if (transportation == null)
            {
                throw new InvalidDataException("transportation is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.Transportation = transportation;
            }

            // to ensure "travelTime" is required (not null)
            if (travelTime == null)
            {
                throw new InvalidDataException("travelTime is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.TravelTime = travelTime;
            }

            // to ensure "departureTime" is required (not null)
            if (departureTime == null)
            {
                throw new InvalidDataException("departureTime is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.DepartureTime = departureTime;
            }

            // to ensure "reachablePostcodesThreshold" is required (not null)
            if (reachablePostcodesThreshold == null)
            {
                throw new InvalidDataException("reachablePostcodesThreshold is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.ReachablePostcodesThreshold = reachablePostcodesThreshold;
            }

            // to ensure "properties" is required (not null)
            if (properties == null)
            {
                throw new InvalidDataException("properties is a required property for RequestTimeFilterPostcodeSectorsDepartureSearch and cannot be null");
            }
            else
            {
                this.Properties = properties;
            }

            this.Range = range;
        }

        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [DataMember(Name="id", EmitDefaultValue=true)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Transportation
        /// </summary>
        [DataMember(Name="transportation", EmitDefaultValue=true)]
        public RequestTransportation Transportation { get; set; }

        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [DataMember(Name="travel_time", EmitDefaultValue=true)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets DepartureTime
        /// </summary>
        [DataMember(Name="departure_time", EmitDefaultValue=true)]
        public DateTime DepartureTime { get; set; }

        /// <summary>
        /// Gets or Sets ReachablePostcodesThreshold
        /// </summary>
        [DataMember(Name="reachable_postcodes_threshold", EmitDefaultValue=true)]
        public double ReachablePostcodesThreshold { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [DataMember(Name="properties", EmitDefaultValue=true)]
        public List<RequestTimeFilterPostcodeSectorsProperty> Properties { get; set; }

        /// <summary>
        /// Gets or Sets Range
        /// </summary>
        [DataMember(Name="range", EmitDefaultValue=false)]
        public RequestRangeFull Range { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestTimeFilterPostcodeSectorsDepartureSearch {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Transportation: ").Append(Transportation).Append("\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
            sb.Append("  DepartureTime: ").Append(DepartureTime).Append("\n");
            sb.Append("  ReachablePostcodesThreshold: ").Append(ReachablePostcodesThreshold).Append("\n");
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
            return this.Equals(input as RequestTimeFilterPostcodeSectorsDepartureSearch);
        }

        /// <summary>
        /// Returns true if RequestTimeFilterPostcodeSectorsDepartureSearch instances are equal
        /// </summary>
        /// <param name="input">Instance of RequestTimeFilterPostcodeSectorsDepartureSearch to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestTimeFilterPostcodeSectorsDepartureSearch input)
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
                    this.Transportation == input.Transportation ||
                    (this.Transportation != null &&
                    this.Transportation.Equals(input.Transportation))
                ) && 
                (
                    this.TravelTime == input.TravelTime ||
                    (this.TravelTime != null &&
                    this.TravelTime.Equals(input.TravelTime))
                ) && 
                (
                    this.DepartureTime == input.DepartureTime ||
                    (this.DepartureTime != null &&
                    this.DepartureTime.Equals(input.DepartureTime))
                ) && 
                (
                    this.ReachablePostcodesThreshold == input.ReachablePostcodesThreshold ||
                    (this.ReachablePostcodesThreshold != null &&
                    this.ReachablePostcodesThreshold.Equals(input.ReachablePostcodesThreshold))
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
                if (this.Transportation != null)
                    hashCode = hashCode * 59 + this.Transportation.GetHashCode();
                if (this.TravelTime != null)
                    hashCode = hashCode * 59 + this.TravelTime.GetHashCode();
                if (this.DepartureTime != null)
                    hashCode = hashCode * 59 + this.DepartureTime.GetHashCode();
                if (this.ReachablePostcodesThreshold != null)
                    hashCode = hashCode * 59 + this.ReachablePostcodesThreshold.GetHashCode();
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

 
            // TravelTime (int) maximum
            if(this.TravelTime > (int)14400)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for TravelTime, must be a value less than or equal to 14400.", new [] { "TravelTime" });
            }

            // TravelTime (int) minimum
            if(this.TravelTime < (int)60)
            {
                yield return new System.ComponentModel.DataAnnotations.ValidationResult("Invalid value for TravelTime, must be a value greater than or equal to 60.", new [] { "TravelTime" });
            }

            yield break;
        }
    }

}
