/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 */

using System;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Org.OpenAPITools.Converters;

namespace Org.OpenAPITools.Models
{ 
    /// <summary>
    /// 
    /// </summary>
    [DataContract]
    public partial class ResponseTimeFilterProperties : IEquatable<ResponseTimeFilterProperties>
    {
        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [DataMember(Name="travel_time", EmitDefaultValue=false)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets Distance
        /// </summary>
        [DataMember(Name="distance", EmitDefaultValue=false)]
        public int Distance { get; set; }

        /// <summary>
        /// Gets or Sets DistanceBreakdown
        /// </summary>
        [DataMember(Name="distance_breakdown", EmitDefaultValue=false)]
        public List<ResponseDistanceBreakdownItem> DistanceBreakdown { get; set; }

        /// <summary>
        /// Gets or Sets Fares
        /// </summary>
        [DataMember(Name="fares", EmitDefaultValue=false)]
        public ResponseFares Fares { get; set; }

        /// <summary>
        /// Gets or Sets Route
        /// </summary>
        [DataMember(Name="route", EmitDefaultValue=false)]
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
        public string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="obj">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object obj)
        {
            if (obj is null) return false;
            if (ReferenceEquals(this, obj)) return true;
            return obj.GetType() == GetType() && Equals((ResponseTimeFilterProperties)obj);
        }

        /// <summary>
        /// Returns true if ResponseTimeFilterProperties instances are equal
        /// </summary>
        /// <param name="other">Instance of ResponseTimeFilterProperties to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseTimeFilterProperties other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    TravelTime == other.TravelTime ||
                    
                    TravelTime.Equals(other.TravelTime)
                ) && 
                (
                    Distance == other.Distance ||
                    
                    Distance.Equals(other.Distance)
                ) && 
                (
                    DistanceBreakdown == other.DistanceBreakdown ||
                    DistanceBreakdown != null &&
                    other.DistanceBreakdown != null &&
                    DistanceBreakdown.SequenceEqual(other.DistanceBreakdown)
                ) && 
                (
                    Fares == other.Fares ||
                    Fares != null &&
                    Fares.Equals(other.Fares)
                ) && 
                (
                    Route == other.Route ||
                    Route != null &&
                    Route.Equals(other.Route)
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
                var hashCode = 41;
                // Suitable nullity checks etc, of course :)
                    
                    hashCode = hashCode * 59 + TravelTime.GetHashCode();
                    
                    hashCode = hashCode * 59 + Distance.GetHashCode();
                    if (DistanceBreakdown != null)
                    hashCode = hashCode * 59 + DistanceBreakdown.GetHashCode();
                    if (Fares != null)
                    hashCode = hashCode * 59 + Fares.GetHashCode();
                    if (Route != null)
                    hashCode = hashCode * 59 + Route.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(ResponseTimeFilterProperties left, ResponseTimeFilterProperties right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(ResponseTimeFilterProperties left, ResponseTimeFilterProperties right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
