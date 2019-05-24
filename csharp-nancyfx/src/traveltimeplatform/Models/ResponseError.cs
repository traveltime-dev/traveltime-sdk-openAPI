using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseError
    /// </summary>
    public sealed class ResponseError:  IEquatable<ResponseError>
    { 
        /// <summary>
        /// HttpStatus
        /// </summary>
        public int? HttpStatus { get; private set; }

        /// <summary>
        /// ErrorCode
        /// </summary>
        public int? ErrorCode { get; private set; }

        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; private set; }

        /// <summary>
        /// DocumentationLink
        /// </summary>
        public string DocumentationLink { get; private set; }

        /// <summary>
        /// AdditionalInfo
        /// </summary>
        public Dictionary<string, List<string>> AdditionalInfo { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseError.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseError()
        {
        }

        private ResponseError(int? HttpStatus, int? ErrorCode, string Description, string DocumentationLink, Dictionary<string, List<string>> AdditionalInfo)
        {
            
            this.HttpStatus = HttpStatus;
            
            this.ErrorCode = ErrorCode;
            
            this.Description = Description;
            
            this.DocumentationLink = DocumentationLink;
            
            this.AdditionalInfo = AdditionalInfo;
            
        }

        /// <summary>
        /// Returns builder of ResponseError.
        /// </summary>
        /// <returns>ResponseErrorBuilder</returns>
        public static ResponseErrorBuilder Builder()
        {
            return new ResponseErrorBuilder();
        }

        /// <summary>
        /// Returns ResponseErrorBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseErrorBuilder</returns>
        public ResponseErrorBuilder With()
        {
            return Builder()
                .HttpStatus(HttpStatus)
                .ErrorCode(ErrorCode)
                .Description(Description)
                .DocumentationLink(DocumentationLink)
                .AdditionalInfo(AdditionalInfo);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseError other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseError.
        /// </summary>
        /// <param name="left">Compared (ResponseError</param>
        /// <param name="right">Compared (ResponseError</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseError left, ResponseError right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseError.
        /// </summary>
        /// <param name="left">Compared (ResponseError</param>
        /// <param name="right">Compared (ResponseError</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseError left, ResponseError right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseError.
        /// </summary>
        public sealed class ResponseErrorBuilder
        {
            private int? _HttpStatus;
            private int? _ErrorCode;
            private string _Description;
            private string _DocumentationLink;
            private Dictionary<string, List<string>> _AdditionalInfo;

            internal ResponseErrorBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseError.HttpStatus property.
            /// </summary>
            /// <param name="value">HttpStatus</param>
            public ResponseErrorBuilder HttpStatus(int? value)
            {
                _HttpStatus = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseError.ErrorCode property.
            /// </summary>
            /// <param name="value">ErrorCode</param>
            public ResponseErrorBuilder ErrorCode(int? value)
            {
                _ErrorCode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseError.Description property.
            /// </summary>
            /// <param name="value">Description</param>
            public ResponseErrorBuilder Description(string value)
            {
                _Description = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseError.DocumentationLink property.
            /// </summary>
            /// <param name="value">DocumentationLink</param>
            public ResponseErrorBuilder DocumentationLink(string value)
            {
                _DocumentationLink = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseError.AdditionalInfo property.
            /// </summary>
            /// <param name="value">AdditionalInfo</param>
            public ResponseErrorBuilder AdditionalInfo(Dictionary<string, List<string>> value)
            {
                _AdditionalInfo = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseError.
            /// </summary>
            /// <returns>ResponseError</returns>
            public ResponseError Build()
            {
                Validate();
                return new ResponseError(
                    HttpStatus: _HttpStatus,
                    ErrorCode: _ErrorCode,
                    Description: _Description,
                    DocumentationLink: _DocumentationLink,
                    AdditionalInfo: _AdditionalInfo
                );
            }

            private void Validate()
            { 
            }
        }

        
    }
}