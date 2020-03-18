using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseMapInfo
    /// </summary>
    public sealed class ResponseMapInfo:  IEquatable<ResponseMapInfo>
    { 
        /// <summary>
        /// Maps
        /// </summary>
        public List<ResponseMapInfoMap> Maps { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseMapInfo.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseMapInfo()
        {
        }

        private ResponseMapInfo(List<ResponseMapInfoMap> Maps)
        {
            
            this.Maps = Maps;
            
        }

        /// <summary>
        /// Returns builder of ResponseMapInfo.
        /// </summary>
        /// <returns>ResponseMapInfoBuilder</returns>
        public static ResponseMapInfoBuilder Builder()
        {
            return new ResponseMapInfoBuilder();
        }

        /// <summary>
        /// Returns ResponseMapInfoBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseMapInfoBuilder</returns>
        public ResponseMapInfoBuilder With()
        {
            return Builder()
                .Maps(Maps);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseMapInfo other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseMapInfo.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfo</param>
        /// <param name="right">Compared (ResponseMapInfo</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseMapInfo left, ResponseMapInfo right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseMapInfo.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfo</param>
        /// <param name="right">Compared (ResponseMapInfo</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseMapInfo left, ResponseMapInfo right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseMapInfo.
        /// </summary>
        public sealed class ResponseMapInfoBuilder
        {
            private List<ResponseMapInfoMap> _Maps;

            internal ResponseMapInfoBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseMapInfo.Maps property.
            /// </summary>
            /// <param name="value">Maps</param>
            public ResponseMapInfoBuilder Maps(List<ResponseMapInfoMap> value)
            {
                _Maps = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseMapInfo.
            /// </summary>
            /// <returns>ResponseMapInfo</returns>
            public ResponseMapInfo Build()
            {
                Validate();
                return new ResponseMapInfo(
                    Maps: _Maps
                );
            }

            private void Validate()
            { 
                if (_Maps == null)
                {
                    throw new ArgumentException("Maps is a required property for ResponseMapInfo and cannot be null");
                } 
            }
        }

        
    }
}