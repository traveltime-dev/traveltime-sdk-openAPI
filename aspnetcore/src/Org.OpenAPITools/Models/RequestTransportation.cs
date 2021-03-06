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
    public partial class RequestTransportation : IEquatable<RequestTransportation>
    {

        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [TypeConverter(typeof(CustomEnumConverter<TypeEnum>))]
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum TypeEnum
        {
            
            /// <summary>
            /// Enum CyclingEnum for cycling
            /// </summary>
            [EnumMember(Value = "cycling")]
            CyclingEnum = 1,
            
            /// <summary>
            /// Enum DrivingEnum for driving
            /// </summary>
            [EnumMember(Value = "driving")]
            DrivingEnum = 2,
            
            /// <summary>
            /// Enum DrivingtrainEnum for driving+train
            /// </summary>
            [EnumMember(Value = "driving+train")]
            DrivingtrainEnum = 3,
            
            /// <summary>
            /// Enum PublicTransportEnum for public_transport
            /// </summary>
            [EnumMember(Value = "public_transport")]
            PublicTransportEnum = 4,
            
            /// <summary>
            /// Enum WalkingEnum for walking
            /// </summary>
            [EnumMember(Value = "walking")]
            WalkingEnum = 5,
            
            /// <summary>
            /// Enum CoachEnum for coach
            /// </summary>
            [EnumMember(Value = "coach")]
            CoachEnum = 6,
            
            /// <summary>
            /// Enum BusEnum for bus
            /// </summary>
            [EnumMember(Value = "bus")]
            BusEnum = 7,
            
            /// <summary>
            /// Enum TrainEnum for train
            /// </summary>
            [EnumMember(Value = "train")]
            TrainEnum = 8,
            
            /// <summary>
            /// Enum FerryEnum for ferry
            /// </summary>
            [EnumMember(Value = "ferry")]
            FerryEnum = 9,
            
            /// <summary>
            /// Enum DrivingferryEnum for driving+ferry
            /// </summary>
            [EnumMember(Value = "driving+ferry")]
            DrivingferryEnum = 10,
            
            /// <summary>
            /// Enum CyclingferryEnum for cycling+ferry
            /// </summary>
            [EnumMember(Value = "cycling+ferry")]
            CyclingferryEnum = 11
        }

        /// <summary>
        /// Gets or Sets Type
        /// </summary>
        [Required]
        [DataMember(Name="type", EmitDefaultValue=false)]
        public TypeEnum Type { get; set; }

        /// <summary>
        /// Gets or Sets DisableBorderCrossing
        /// </summary>
        [DataMember(Name="disable_border_crossing", EmitDefaultValue=false)]
        public bool DisableBorderCrossing { get; set; }

        /// <summary>
        /// Gets or Sets PtChangeDelay
        /// </summary>
        [DataMember(Name="pt_change_delay", EmitDefaultValue=false)]
        public int PtChangeDelay { get; set; }

        /// <summary>
        /// Gets or Sets WalkingTime
        /// </summary>
        [DataMember(Name="walking_time", EmitDefaultValue=false)]
        public int WalkingTime { get; set; }

        /// <summary>
        /// Gets or Sets DrivingTimeToStation
        /// </summary>
        [DataMember(Name="driving_time_to_station", EmitDefaultValue=false)]
        public int DrivingTimeToStation { get; set; }

        /// <summary>
        /// Gets or Sets CyclingTimeToStation
        /// </summary>
        [DataMember(Name="cycling_time_to_station", EmitDefaultValue=false)]
        public int CyclingTimeToStation { get; set; }

        /// <summary>
        /// Gets or Sets ParkingTime
        /// </summary>
        [DataMember(Name="parking_time", EmitDefaultValue=false)]
        public int ParkingTime { get; set; }

        /// <summary>
        /// Gets or Sets BoardingTime
        /// </summary>
        [DataMember(Name="boarding_time", EmitDefaultValue=false)]
        public int BoardingTime { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class RequestTransportation {\n");
            sb.Append("  Type: ").Append(Type).Append("\n");
            sb.Append("  DisableBorderCrossing: ").Append(DisableBorderCrossing).Append("\n");
            sb.Append("  PtChangeDelay: ").Append(PtChangeDelay).Append("\n");
            sb.Append("  WalkingTime: ").Append(WalkingTime).Append("\n");
            sb.Append("  DrivingTimeToStation: ").Append(DrivingTimeToStation).Append("\n");
            sb.Append("  CyclingTimeToStation: ").Append(CyclingTimeToStation).Append("\n");
            sb.Append("  ParkingTime: ").Append(ParkingTime).Append("\n");
            sb.Append("  BoardingTime: ").Append(BoardingTime).Append("\n");
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
            return obj.GetType() == GetType() && Equals((RequestTransportation)obj);
        }

        /// <summary>
        /// Returns true if RequestTransportation instances are equal
        /// </summary>
        /// <param name="other">Instance of RequestTransportation to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(RequestTransportation other)
        {
            if (other is null) return false;
            if (ReferenceEquals(this, other)) return true;

            return 
                (
                    Type == other.Type ||
                    
                    Type.Equals(other.Type)
                ) && 
                (
                    DisableBorderCrossing == other.DisableBorderCrossing ||
                    
                    DisableBorderCrossing.Equals(other.DisableBorderCrossing)
                ) && 
                (
                    PtChangeDelay == other.PtChangeDelay ||
                    
                    PtChangeDelay.Equals(other.PtChangeDelay)
                ) && 
                (
                    WalkingTime == other.WalkingTime ||
                    
                    WalkingTime.Equals(other.WalkingTime)
                ) && 
                (
                    DrivingTimeToStation == other.DrivingTimeToStation ||
                    
                    DrivingTimeToStation.Equals(other.DrivingTimeToStation)
                ) && 
                (
                    CyclingTimeToStation == other.CyclingTimeToStation ||
                    
                    CyclingTimeToStation.Equals(other.CyclingTimeToStation)
                ) && 
                (
                    ParkingTime == other.ParkingTime ||
                    
                    ParkingTime.Equals(other.ParkingTime)
                ) && 
                (
                    BoardingTime == other.BoardingTime ||
                    
                    BoardingTime.Equals(other.BoardingTime)
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
                    
                    hashCode = hashCode * 59 + Type.GetHashCode();
                    
                    hashCode = hashCode * 59 + DisableBorderCrossing.GetHashCode();
                    
                    hashCode = hashCode * 59 + PtChangeDelay.GetHashCode();
                    
                    hashCode = hashCode * 59 + WalkingTime.GetHashCode();
                    
                    hashCode = hashCode * 59 + DrivingTimeToStation.GetHashCode();
                    
                    hashCode = hashCode * 59 + CyclingTimeToStation.GetHashCode();
                    
                    hashCode = hashCode * 59 + ParkingTime.GetHashCode();
                    
                    hashCode = hashCode * 59 + BoardingTime.GetHashCode();
                return hashCode;
            }
        }

        #region Operators
        #pragma warning disable 1591

        public static bool operator ==(RequestTransportation left, RequestTransportation right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(RequestTransportation left, RequestTransportation right)
        {
            return !Equals(left, right);
        }

        #pragma warning restore 1591
        #endregion Operators
    }
}
