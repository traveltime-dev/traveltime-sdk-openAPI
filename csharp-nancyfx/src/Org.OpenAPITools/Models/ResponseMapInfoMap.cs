using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseMapInfoMap
    /// </summary>
    public sealed class ResponseMapInfoMap:  IEquatable<ResponseMapInfoMap>
    { 
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Features
        /// </summary>
        public ResponseMapInfoFeatures Features { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseMapInfoMap.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseMapInfoMap()
        {
        }

        private ResponseMapInfoMap(string Name, ResponseMapInfoFeatures Features)
        {
            
            this.Name = Name;
            
            this.Features = Features;
            
        }

        /// <summary>
        /// Returns builder of ResponseMapInfoMap.
        /// </summary>
        /// <returns>ResponseMapInfoMapBuilder</returns>
        public static ResponseMapInfoMapBuilder Builder()
        {
            return new ResponseMapInfoMapBuilder();
        }

        /// <summary>
        /// Returns ResponseMapInfoMapBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseMapInfoMapBuilder</returns>
        public ResponseMapInfoMapBuilder With()
        {
            return Builder()
                .Name(Name)
                .Features(Features);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseMapInfoMap other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseMapInfoMap.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoMap</param>
        /// <param name="right">Compared (ResponseMapInfoMap</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseMapInfoMap left, ResponseMapInfoMap right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseMapInfoMap.
        /// </summary>
        /// <param name="left">Compared (ResponseMapInfoMap</param>
        /// <param name="right">Compared (ResponseMapInfoMap</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseMapInfoMap left, ResponseMapInfoMap right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseMapInfoMap.
        /// </summary>
        public sealed class ResponseMapInfoMapBuilder
        {
            private string _Name;
            private ResponseMapInfoFeatures _Features;

            internal ResponseMapInfoMapBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseMapInfoMap.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public ResponseMapInfoMapBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseMapInfoMap.Features property.
            /// </summary>
            /// <param name="value">Features</param>
            public ResponseMapInfoMapBuilder Features(ResponseMapInfoFeatures value)
            {
                _Features = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseMapInfoMap.
            /// </summary>
            /// <returns>ResponseMapInfoMap</returns>
            public ResponseMapInfoMap Build()
            {
                Validate();
                return new ResponseMapInfoMap(
                    Name: _Name,
                    Features: _Features
                );
            }

            private void Validate()
            { 
                if (_Name == null)
                {
                    throw new ArgumentException("Name is a required property for ResponseMapInfoMap and cannot be null");
                } 
                if (_Features == null)
                {
                    throw new ArgumentException("Features is a required property for ResponseMapInfoMap and cannot be null");
                } 
            }
        }

        
    }
}