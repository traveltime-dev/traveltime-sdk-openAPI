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
    /// ResponseFares
    /// </summary>
    [DataContract]
    public partial class ResponseFares :  IEquatable<ResponseFares>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseFares" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ResponseFares() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ResponseFares" /> class.
        /// </summary>
        /// <param name="breakdown">breakdown (required).</param>
        /// <param name="ticketsTotal">ticketsTotal (required).</param>
        public ResponseFares(List<ResponseFaresBreakdownItem> breakdown = default(List<ResponseFaresBreakdownItem>), List<ResponseFareTicket> ticketsTotal = default(List<ResponseFareTicket>))
        {
            // to ensure "breakdown" is required (not null)
            if (breakdown == null)
            {
                throw new InvalidDataException("breakdown is a required property for ResponseFares and cannot be null");
            }
            else
            {
                this.Breakdown = breakdown;
            }

            // to ensure "ticketsTotal" is required (not null)
            if (ticketsTotal == null)
            {
                throw new InvalidDataException("ticketsTotal is a required property for ResponseFares and cannot be null");
            }
            else
            {
                this.TicketsTotal = ticketsTotal;
            }

        }

        /// <summary>
        /// Gets or Sets Breakdown
        /// </summary>
        [DataMember(Name="breakdown", EmitDefaultValue=true)]
        public List<ResponseFaresBreakdownItem> Breakdown { get; set; }

        /// <summary>
        /// Gets or Sets TicketsTotal
        /// </summary>
        [DataMember(Name="tickets_total", EmitDefaultValue=true)]
        public List<ResponseFareTicket> TicketsTotal { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ResponseFares {\n");
            sb.Append("  Breakdown: ").Append(Breakdown).Append("\n");
            sb.Append("  TicketsTotal: ").Append(TicketsTotal).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as ResponseFares);
        }

        /// <summary>
        /// Returns true if ResponseFares instances are equal
        /// </summary>
        /// <param name="input">Instance of ResponseFares to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ResponseFares input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Breakdown == input.Breakdown ||
                    this.Breakdown != null &&
                    input.Breakdown != null &&
                    this.Breakdown.SequenceEqual(input.Breakdown)
                ) && 
                (
                    this.TicketsTotal == input.TicketsTotal ||
                    this.TicketsTotal != null &&
                    input.TicketsTotal != null &&
                    this.TicketsTotal.SequenceEqual(input.TicketsTotal)
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
                int hashCode = 41;
                if (this.Breakdown != null)
                    hashCode = hashCode * 59 + this.Breakdown.GetHashCode();
                if (this.TicketsTotal != null)
                    hashCode = hashCode * 59 + this.TicketsTotal.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
