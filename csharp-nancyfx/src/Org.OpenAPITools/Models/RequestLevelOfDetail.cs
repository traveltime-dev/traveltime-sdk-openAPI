using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// RequestLevelOfDetail
    /// </summary>
    public sealed class RequestLevelOfDetail:  IEquatable<RequestLevelOfDetail>
    { 
        /// <summary>
        /// ScaleType
        /// </summary>
        public ScaleTypeEnum? ScaleType { get; private set; }

        /// <summary>
        /// Level
        /// </summary>
        public LevelEnum? Level { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use RequestLevelOfDetail.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public RequestLevelOfDetail()
        {
        }

        private RequestLevelOfDetail(ScaleTypeEnum? ScaleType, LevelEnum? Level)
        {
            
            this.ScaleType = ScaleType;
            
            this.Level = Level;
            
        }

        /// <summary>
        /// Returns builder of RequestLevelOfDetail.
        /// </summary>
        /// <returns>RequestLevelOfDetailBuilder</returns>
        public static RequestLevelOfDetailBuilder Builder()
        {
            return new RequestLevelOfDetailBuilder();
        }

        /// <summary>
        /// Returns RequestLevelOfDetailBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>RequestLevelOfDetailBuilder</returns>
        public RequestLevelOfDetailBuilder With()
        {
            return Builder()
                .ScaleType(ScaleType)
                .Level(Level);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(RequestLevelOfDetail other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (RequestLevelOfDetail.
        /// </summary>
        /// <param name="left">Compared (RequestLevelOfDetail</param>
        /// <param name="right">Compared (RequestLevelOfDetail</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (RequestLevelOfDetail left, RequestLevelOfDetail right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (RequestLevelOfDetail.
        /// </summary>
        /// <param name="left">Compared (RequestLevelOfDetail</param>
        /// <param name="right">Compared (RequestLevelOfDetail</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (RequestLevelOfDetail left, RequestLevelOfDetail right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of RequestLevelOfDetail.
        /// </summary>
        public sealed class RequestLevelOfDetailBuilder
        {
            private ScaleTypeEnum? _ScaleType;
            private LevelEnum? _Level;

            internal RequestLevelOfDetailBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for RequestLevelOfDetail.ScaleType property.
            /// </summary>
            /// <param name="value">ScaleType</param>
            public RequestLevelOfDetailBuilder ScaleType(ScaleTypeEnum? value)
            {
                _ScaleType = value;
                return this;
            }

            /// <summary>
            /// Sets value for RequestLevelOfDetail.Level property.
            /// </summary>
            /// <param name="value">Level</param>
            public RequestLevelOfDetailBuilder Level(LevelEnum? value)
            {
                _Level = value;
                return this;
            }


            /// <summary>
            /// Builds instance of RequestLevelOfDetail.
            /// </summary>
            /// <returns>RequestLevelOfDetail</returns>
            public RequestLevelOfDetail Build()
            {
                Validate();
                return new RequestLevelOfDetail(
                    ScaleType: _ScaleType,
                    Level: _Level
                );
            }

            private void Validate()
            { 
                if (_ScaleType == null)
                {
                    throw new ArgumentException("ScaleType is a required property for RequestLevelOfDetail and cannot be null");
                } 
                if (_Level == null)
                {
                    throw new ArgumentException("Level is a required property for RequestLevelOfDetail and cannot be null");
                } 
            }
        }

        
        public enum ScaleTypeEnum { Simple };
        public enum LevelEnum { Lowest, Low, Medium, High, Highest };
    }
}
