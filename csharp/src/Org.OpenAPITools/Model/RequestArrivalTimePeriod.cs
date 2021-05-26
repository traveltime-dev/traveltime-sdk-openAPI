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
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = Org.OpenAPITools.Client.OpenAPIDateConverter;

namespace Org.OpenAPITools.Model
{
    /// <summary>
    /// Defines RequestArrivalTimePeriod
    /// </summary>
    
    [JsonConverter(typeof(StringEnumConverter))]
    
    public enum RequestArrivalTimePeriod
    {
        /// <summary>
        /// Enum Weekdaymorning for value: weekday_morning
        /// </summary>
        [EnumMember(Value = "weekday_morning")]
        Weekdaymorning = 1

    }

}
