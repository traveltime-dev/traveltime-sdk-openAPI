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
        /// Gets or Sets RequestArrivalTimePeriod
        /// </summary>
        [TypeConverter(typeof(CustomEnumConverter<RequestArrivalTimePeriod>))]
        [JsonConverter(typeof(Newtonsoft.Json.Converters.StringEnumConverter))]
        public enum RequestArrivalTimePeriod
        {
            
            /// <summary>
            /// Enum WeekdayMorningEnum for weekday_morning
            /// </summary>
            [EnumMember(Value = "weekday_morning")]
            WeekdayMorningEnum = 1
        }
}
