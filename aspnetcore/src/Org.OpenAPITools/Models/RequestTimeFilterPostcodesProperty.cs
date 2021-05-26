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
        /// Gets or Sets RequestTimeFilterPostcodesProperty
        /// </summary>
        [TypeConverter(typeof(CustomEnumConverter<RequestTimeFilterPostcodesProperty>))]
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum RequestTimeFilterPostcodesProperty
        {
            
            /// <summary>
            /// Enum TravelTimeEnum for travel_time
            /// </summary>
            [EnumMember(Value = "travel_time")]
            TravelTimeEnum = 1,
            
            /// <summary>
            /// Enum DistanceEnum for distance
            /// </summary>
            [EnumMember(Value = "distance")]
            DistanceEnum = 2
        }
}
