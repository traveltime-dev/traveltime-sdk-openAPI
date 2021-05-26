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
    /// ResponseTimeFilterProperties
    /// </summary>
    [DataContract(Name = "ResponseTimeFilterProperties")]
    public partial class ResponseTimeFilterProperties : IEquatable<ResponseTimeFilterProperties>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseTimeFilterProperties" /> class.
        /// </summary>
        /// <param name="travelTime">travelTime.</param>
        /// <param name="distance">distance.</param>
        /// <param name="distanceBreakdown">distanceBreakdown.</param>
        /// <param name="fares">fares.</param>
        /// <param name="route">route.</param>
        public ResponseTimeFilterProperties(int travelTime = default(int), int distance = default(int), List<ResponseDistanceBreakdownItem> distanceBreakdown = default(List<ResponseDistanceBreakdownItem>), ResponseFares fares = default(ResponseFares), ResponseRoute route = default(ResponseRoute))
        {
            this.TravelTime = travelTime;
            this.Distance = distance;
            this.DistanceBreakdown = distanceBreakdown;
            this.Fares = fares;
            this.Route = route;
        }

        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [DataMember(Name = "travel_time", EmitDefaultValue = false)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets Distance
        /// </summary>
        [DataMember(Name = "distance", EmitDefaultValue = false)]
        public int Distance { get; set; }

        /// <summary>
        /// Gets or Sets DistanceBreakdown
        /// </summary>
        [DataMember(Name = "distance_breakdown", EmitDefaultValue = false)]
        public List<ResponseDistanceBreakdownItem> DistanceBreakdown { get; set; }

        /// <summary>
        /// Gets or Sets Fares
        /// </summary>
        [DataMember(Name = "fares", EmitDefaultValue = false)]
        public ResponseFares Fares { get; set; }

        /// <summary>
        /// Gets or Sets Route
        /// </summary>
        [DataMember(Name = "route", EmitDefaultValue = false)]
        public ResponseRoute Route { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseTimeFilterProperties {\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
            sb.Append("  Distance: ").Append(Distance).Append("\n");
            sb.Append("  DistanceBreakdown: ").Append(DistanceBreakdown).Append("\n");
            sb.Append("  Fares: ").Append(Fares).Append("\n");
            sb.Append("  Route: ").Append(Route).Append("\n");
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
            return this.Equals(input as ResponseTimeFilterProperties);
        }

        /// <summary>
        /// Returns true if ResponseTimeFilterProperties instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseTimeFilterProperties to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseTimeFilterProperties input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.TravelTime == input.TravelTime ||
                    this.TravelTime.Equals(input.TravelTime)
                ) && 
                (
                    this.Distance == input.Distance ||
                    this.Distance.Equals(input.Distance)
                ) && 
                (
                    this.DistanceBreakdown == input.DistanceBreakdown ||
                    this.DistanceBreakdown != null &&
                    input.DistanceBreakdown != null &&
                    this.DistanceBreakdown.SequenceEqual(input.DistanceBreakdown)
                ) && 
                (
                    this.Fares == input.Fares ||
                    (this.Fares != null &&
                    this.Fares.Equals(input.Fares))
                ) && 
                (
                    this.Route == input.Route ||
                    (this.Route != null &&
                    this.Route.Equals(input.Route))
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
                hashCode = hashCode * 59 + this.TravelTime.GetHashCode();
                hashCode = hashCode * 59 + this.Distance.GetHashCode();
                if (this.DistanceBreakdown != null)
                    hashCode = hashCode * 59 + this.DistanceBreakdown.GetHashCode();
                if (this.Fares != null)
                    hashCode = hashCode * 59 + this.Fares.GetHashCode();
                if (this.Route != null)
                    hashCode = hashCode * 59 + this.Route.GetHashCode();
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
