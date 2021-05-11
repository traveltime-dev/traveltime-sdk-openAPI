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
    public partial class RequestTimeFilterFastArrivalOneToManySearch : IEquatable<RequestTimeFilterFastArrivalOneToManySearch>
    {
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [Required]
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets DepartureLocationId
        /// </summary>
        [Required]
        [DataMember(Name="departure_location_id", EmitDefaultValue=false)]
        public string DepartureLocationId { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalLocationIds
        /// </summary>
        [Required]
        [DataMember(Name="arrival_location_ids", EmitDefaultValue=false)]
        public List<string> ArrivalLocationIds { get; set; }

        /// <summary>
        /// Gets or Sets Transportation
        /// </summary>
        [Required]
        [DataMember(Name="transportation", EmitDefaultValue=false)]
        public RequestTransportationFast Transportation { get; set; }

        /// <summary>
        /// Gets or Sets TravelTime
        /// </summary>
        [Required]
        [Range(60, 14400)]
        [DataMember(Name="travel_time", EmitDefaultValue=false)]
        public int TravelTime { get; set; }

        /// <summary>
        /// Gets or Sets ArrivalTimePeriod
        /// </summary>
        [Required]
        [DataMember(Name="arrival_time_period", EmitDefaultValue=false)]
        public RequestArrivalTimePeriod ArrivalTimePeriod { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [Required]
        [DataMember(Name="properties", EmitDefaultValue=false)]
        public List<RequestTimeFilterFastProperty> Properties { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestTimeFilterFastArrivalOneToManySearch {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  DepartureLocationId: ").Append(DepartureLocationId).Append("\n");
            sb.Append("  ArrivalLocationIds: ").Append(ArrivalLocationIds).Append("\n");
            sb.Append("  Transportation: ").Append(Transportation).Append("\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
            sb.Append("  ArrivalTimePeriod: ").Append(ArrivalTimePeriod).Append("\n");
            sb.Append("  Properties: ").Append(Properties).Append("\n");
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
            return obj.GetType() == GetType() && Equals((RequestTimeFilterFastArrivalOneToManySearch)obj);
        }

        /// <summary>
        /// Returns true if RequestTimeFilterFastArrivalOneToManySearch instances are equal
        /// </summary>
        /// <param name="other">Instance of RequestTimeFilterFastArrivalOneToManySearch to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestTimeFilterFastArrivalOneToManySearch other)
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
                    DepartureLocationId == other.DepartureLocationId ||
                    DepartureLocationId != null &&
                    DepartureLocationId.Equals(other.DepartureLocationId)
                ) && 
                (
                    ArrivalLocationIds == other.ArrivalLocationIds ||
                    ArrivalLocationIds != null &&
                    other.ArrivalLocationIds != null &&
                    ArrivalLocationIds.SequenceEqual(other.ArrivalLocationIds)
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
                    ArrivalTimePeriod == other.ArrivalTimePeriod ||
                    
                    ArrivalTimePeriod.Equals(other.ArrivalTimePeriod)
                ) && 
                (
                    Properties == other.Properties ||
                    Properties != null &&
                    other.Properties != null &&
                    Properties.SequenceEqual(other.Properties)
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
                    if (DepartureLocationId != null)
                    hashCode = hashCode * 59 + DepartureLocationId.GetHashCode();
                    if (ArrivalLocationIds != null)
                    hashCode = hashCode * 59 + ArrivalLocationIds.GetHashCode();
                    if (Transportation != null)
                    hashCode = hashCode * 59 + Transportation.GetHashCode();
                    
                    hashCode = hashCode * 59 + TravelTime.GetHashCode();
                    
                    hashCode = hashCode * 59 + ArrivalTimePeriod.GetHashCode();
                    if (Properties != null)
                    hashCode = hashCode * 59 + Properties.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(RequestTimeFilterFastArrivalOneToManySearch left, RequestTimeFilterFastArrivalOneToManySearch right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(RequestTimeFilterFastArrivalOneToManySearch left, RequestTimeFilterFastArrivalOneToManySearch right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
