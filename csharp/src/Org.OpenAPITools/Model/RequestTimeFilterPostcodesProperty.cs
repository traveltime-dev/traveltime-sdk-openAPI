/*
 * TravelTime API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
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
    /// Defines RequestTimeFilterPostcodesProperty
    /// </summary>
    
    [JsonConverter(typeof(StringEnumConverter))]
    
    public enum RequestTimeFilterPostcodesProperty
    {
        /// <summary>
        /// Enum Traveltime for value: travel_time
        /// </summary>
        [EnumMember(Value = "travel_time")]
        Traveltime = 1,

        /// <summary>
        /// Enum Distance for value: distance
        /// </summary>
        [EnumMember(Value = "distance")]
        Distance = 2

    }

}
