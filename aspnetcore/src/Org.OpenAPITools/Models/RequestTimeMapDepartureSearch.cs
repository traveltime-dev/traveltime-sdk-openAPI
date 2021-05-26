/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
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
    public partial class RequestTimeMapDepartureSearch : IEquatable<RequestTimeMapDepartureSearch>
    {
        /// <summary>
        /// Gets or Sets Id
        /// </summary>
        [Required]
        [DataMember(Name="id", EmitDefaultValue=false)]
        public string Id { get; set; }

        /// <summary>
        /// Gets or Sets Coords
        /// </summary>
        [Required]
        [DataMember(Name="coords", EmitDefaultValue=false)]
        public Coords Coords { get; set; }

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
        /// Gets or Sets DepartureTime
        /// </summary>
        [Required]
        [DataMember(Name="departure_time", EmitDefaultValue=false)]
        public DateTime DepartureTime { get; set; }

        /// <summary>
        /// Gets or Sets Properties
        /// </summary>
        [DataMember(Name="properties", EmitDefaultValue=false)]
        public List<RequestTimeMapProperty> Properties { get; set; }

        /// <summary>
        /// Gets or Sets Range
        /// </summary>
        [DataMember(Name="range", EmitDefaultValue=false)]
        public RequestRangeNoMaxResults Range { get; set; }

        /// <summary>
        /// Gets or Sets LevelOfDetail
        /// </summary>
        [DataMember(Name="level_of_detail", EmitDefaultValue=false)]
        public RequestLevelOfDetail LevelOfDetail { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestTimeMapDepartureSearch {\n");
            sb.Append("  Id: ").Append(Id).Append("\n");
            sb.Append("  Coords: ").Append(Coords).Append("\n");
            sb.Append("  Transportation: ").Append(Transportation).Append("\n");
            sb.Append("  TravelTime: ").Append(TravelTime).Append("\n");
            sb.Append("  DepartureTime: ").Append(DepartureTime).Append("\n");
            sb.Append("  Properties: ").Append(Properties).Append("\n");
            sb.Append("  Range: ").Append(Range).Append("\n");
            sb.Append("  LevelOfDetail: ").Append(LevelOfDetail).Append("\n");
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
            return obj.GetType() == GetType() && Equals((RequestTimeMapDepartureSearch)obj);
        }

        /// <summary>
        /// Returns true if RequestTimeMapDepartureSearch instances are equal
        /// </summary>
        /// <param name="other">Instance of RequestTimeMapDepartureSearch to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestTimeMapDepartureSearch other)
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
                    Coords == other.Coords ||
                    Coords != null &&
                    Coords.Equals(other.Coords)
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
                    DepartureTime == other.DepartureTime ||
                    DepartureTime != null &&
                    DepartureTime.Equals(other.DepartureTime)
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
                ) && 
                (
                    LevelOfDetail == other.LevelOfDetail ||
                    LevelOfDetail != null &&
                    LevelOfDetail.Equals(other.LevelOfDetail)
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
                    if (Coords != null)
                    hashCode = hashCode * 59 + Coords.GetHashCode();
                    if (Transportation != null)
                    hashCode = hashCode * 59 + Transportation.GetHashCode();
                    
                    hashCode = hashCode * 59 + TravelTime.GetHashCode();
                    if (DepartureTime != null)
                    hashCode = hashCode * 59 + DepartureTime.GetHashCode();
                    if (Properties != null)
                    hashCode = hashCode * 59 + Properties.GetHashCode();
                    if (Range != null)
                    hashCode = hashCode * 59 + Range.GetHashCode();
                    if (LevelOfDetail != null)
                    hashCode = hashCode * 59 + LevelOfDetail.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(RequestTimeMapDepartureSearch left, RequestTimeMapDepartureSearch right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(RequestTimeMapDepartureSearch left, RequestTimeMapDepartureSearch right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
