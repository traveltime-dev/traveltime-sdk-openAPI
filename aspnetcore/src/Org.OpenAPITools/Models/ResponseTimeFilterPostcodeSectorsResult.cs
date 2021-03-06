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
    public partial class ResponseTimeFilterPostcodeSectorsResult : IEquatable<ResponseTimeFilterPostcodeSectorsResult>
    {
        /// <summary>
        /// Gets or Sets SearchId
        /// </summary>
        [Required]
        [DataMember(Name="search_id", EmitDefaultValue=false)]
        public string SearchId { get; set; }

        /// <summary>
        /// Gets or Sets Sectors
        /// </summary>
        [Required]
        [DataMember(Name="sectors", EmitDefaultValue=false)]
        public List<ResponseTimeFilterPostcodeSector> Sectors { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseTimeFilterPostcodeSectorsResult {\n");
            sb.Append("  SearchId: ").Append(SearchId).Append("\n");
            sb.Append("  Sectors: ").Append(Sectors).Append("\n");
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
            return obj.GetType() == GetType() && Equals((ResponseTimeFilterPostcodeSectorsResult)obj);
        }

        /// <summary>
        /// Returns true if ResponseTimeFilterPostcodeSectorsResult instances are equal
        /// </summary>
        /// <param name="other">Instance of ResponseTimeFilterPostcodeSectorsResult to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseTimeFilterPostcodeSectorsResult other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    SearchId == other.SearchId ||
                    SearchId != null &&
                    SearchId.Equals(other.SearchId)
                ) && 
                (
                    Sectors == other.Sectors ||
                    Sectors != null &&
                    other.Sectors != null &&
                    Sectors.SequenceEqual(other.Sectors)
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
                    if (SearchId != null)
                    hashCode = hashCode * 59 + SearchId.GetHashCode();
                    if (Sectors != null)
                    hashCode = hashCode * 59 + Sectors.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(ResponseTimeFilterPostcodeSectorsResult left, ResponseTimeFilterPostcodeSectorsResult right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(ResponseTimeFilterPostcodeSectorsResult left, ResponseTimeFilterPostcodeSectorsResult right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
