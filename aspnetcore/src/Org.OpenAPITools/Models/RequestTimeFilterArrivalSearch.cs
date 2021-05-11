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
    public partial class RequestTimeFilterArrivalSearch : IEquatable<RequestTimeFilterArrivalSearch>
    {
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [Required]
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets DepartureLocationIds
        /// </summary>
        [Required]
        [DataMember(Name="departure_location_ids", EmitDefaultValue=false)]
        public List<string> DepartureLocationIds { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalLocationId
        /// </summary>
        [Required]
        [DataMember(Name="arrival_location_id", EmitDefaultValue=false)]
        public string ArrivalLocationId { get; set; }

        /// <summary>
        /// Gets or Sets Transportation
        /// </summary>
        [Required]
        [DataMember(Name="transportation", EmitDefaultValue=false)]
        public RequestTransportation Transportation { get; set; }

        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [Required]
        [Range(60, 14400)]
        [DataMember(Name="travel_time", EmitDefaultValue=false)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalTime
        /// </summary>
        [Required]
        [DataMember(Name="arrival_time", EmitDefaultValue=false)]
        public DateTime ArrivalTime { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [Required]
        [DataMember(Name="properties", EmitDefaultValue=false)]
        public List<RequestTimeFilterProperty> Properties { get; set; }

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
            sb.Append("class RequestTimeFilterArrivalSearch {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  DepartureLocationIds: ").Append(DepartureLocationIds).Append("\n");
            sb.Append("  ArrivalLocationId: ").Append(ArrivalLocationId).Append("\n");
            sb.Append("  Transportation: ").Append(Transportation).Append("\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
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
            return obj.GetType() == GetType() && Equals((RequestTimeFilterArrivalSearch)obj);
        }

        /// <summary>
        /// Returns true if RequestTimeFilterArrivalSearch instances are equal
        /// </summary>
        /// <param name="other">Instance of RequestTimeFilterArrivalSearch to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestTimeFilterArrivalSearch other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Id == other.Id ||
                    Id != null &&
                    Id.Equals(other.Id)
                ) && 
                (
                    DepartureLocationIds == other.DepartureLocationIds ||
                    DepartureLocationIds != null &&
                    other.DepartureLocationIds != null &&
                    DepartureLocationIds.SequenceEqual(other.DepartureLocationIds)
                ) && 
                (
                    ArrivalLocationId == other.ArrivalLocationId ||
                    ArrivalLocationId != null &&
                    ArrivalLocationId.Equals(other.ArrivalLocationId)
                ) && 
                (
                    Transportation == other.Transportation ||
                    Transportation != null &&
                    Transportation.Equals(other.Transportation)
                ) && 
                (
                    TravelTime == other.TravelTime ||
                    
                    TravelTime.Equals(other.TravelTime)
                ) && 
                (
                    ArrivalTime == other.ArrivalTime ||
                    ArrivalTime != null &&
                    ArrivalTime.Equals(other.ArrivalTime)
                ) && 
                (
                    Properties == other.Properties ||
                    Properties != null &&
                    other.Properties != null &&
                    Properties.SequenceEqual(other.Properties)
                ) && 
                (
                    Range == other.Range ||
                    Range != null &&
                    Range.Equals(other.Range)
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
                    if (Id != null)
                    hashCode = hashCode * 59 + Id.GetHashCode();
                    if (DepartureLocationIds != null)
                    hashCode = hashCode * 59 + DepartureLocationIds.GetHashCode();
                    if (ArrivalLocationId != null)
                    hashCode = hashCode * 59 + ArrivalLocationId.GetHashCode();
                    if (Transportation != null)
                    hashCode = hashCode * 59 + Transportation.GetHashCode();
                    
                    hashCode = hashCode * 59 + TravelTime.GetHashCode();
                    if (ArrivalTime != null)
                    hashCode = hashCode * 59 + ArrivalTime.GetHashCode();
                    if (Properties != null)
                    hashCode = hashCode * 59 + Properties.GetHashCode();
                    if (Range != null)
                    hashCode = hashCode * 59 + Range.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(RequestTimeFilterArrivalSearch left, RequestTimeFilterArrivalSearch right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(RequestTimeFilterArrivalSearch left, RequestTimeFilterArrivalSearch right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
