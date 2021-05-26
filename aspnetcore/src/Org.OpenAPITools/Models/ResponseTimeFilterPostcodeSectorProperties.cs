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
    public partial class ResponseTimeFilterPostcodeSectorProperties : IEquatable<ResponseTimeFilterPostcodeSectorProperties>
    {
        /// <summary>
        /// Gets or Sets TravelTimeReachable
        /// </summary>
        [DataMember(Name="travel_time_reachable", EmitDefaultValue=false)]
        public ResponseTravelTimeStatistics TravelTimeReachable { get; set; }

        /// <summary>
        /// Gets or Sets TravelTimeAll
        /// </summary>
        [DataMember(Name="travel_time_all", EmitDefaultValue=false)]
        public ResponseTravelTimeStatistics TravelTimeAll { get; set; }

        /// <summary>
        /// Gets or Sets Coverage
        /// </summary>
        [DataMember(Name="coverage", EmitDefaultValue=false)]
        public double Coverage { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseTimeFilterPostcodeSectorProperties {\n");
            sb.Append("  TravelTimeReachable: ").Append(TravelTimeReachable).Append("\n");
            sb.Append("  TravelTimeAll: ").Append(TravelTimeAll).Append("\n");
            sb.Append("  Coverage: ").Append(Coverage).Append("\n");
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
            return obj.GetType() == GetType() && Equals((ResponseTimeFilterPostcodeSectorProperties)obj);
        }

        /// <summary>
        /// Returns true if ResponseTimeFilterPostcodeSectorProperties instances are equal
        /// </summary>
        /// <param name="other">Instance of ResponseTimeFilterPostcodeSectorProperties to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseTimeFilterPostcodeSectorProperties other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    TravelTimeReachable == other.TravelTimeReachable ||
                    TravelTimeReachable != null &&
                    TravelTimeReachable.Equals(other.TravelTimeReachable)
                ) && 
                (
                    TravelTimeAll == other.TravelTimeAll ||
                    TravelTimeAll != null &&
                    TravelTimeAll.Equals(other.TravelTimeAll)
                ) && 
                (
                    Coverage == other.Coverage ||
                    
                    Coverage.Equals(other.Coverage)
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
                    if (TravelTimeReachable != null)
                    hashCode = hashCode * 59 + TravelTimeReachable.GetHashCode();
                    if (TravelTimeAll != null)
                    hashCode = hashCode * 59 + TravelTimeAll.GetHashCode();
                    
                    hashCode = hashCode * 59 + Coverage.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(ResponseTimeFilterPostcodeSectorProperties left, ResponseTimeFilterPostcodeSectorProperties right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(ResponseTimeFilterPostcodeSectorProperties left, ResponseTimeFilterPostcodeSectorProperties right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
