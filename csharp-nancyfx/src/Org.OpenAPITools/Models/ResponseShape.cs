using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseShape
    /// </summary>
    public sealed class ResponseShape:  IEquatable<ResponseShape>
    { 
        /// <summary>
        /// Shell
        /// </summary>
        public List<Coords> Shell { get; private set; }

        /// <summary>
        /// Holes
        /// </summary>
        public List<List<Coords>> Holes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseShape.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseShape()
        {
        }

        private ResponseShape(List<Coords> Shell, List<List<Coords>> Holes)
        {
            
            this.Shell = Shell;
            
            this.Holes = Holes;
            
        }

        /// <summary>
        /// Returns builder of ResponseShape.
        /// </summary>
        /// <returns>ResponseShapeBuilder</returns>
        public static ResponseShapeBuilder Builder()
        {
            return new ResponseShapeBuilder();
        }

        /// <summary>
        /// Returns ResponseShapeBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseShapeBuilder</returns>
        public ResponseShapeBuilder With()
        {
            return Builder()
                .Shell(Shell)
                .Holes(Holes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseShape other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseShape.
        /// </summary>
        /// <param name="left">Compared (ResponseShape</param>
        /// <param name="right">Compared (ResponseShape</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseShape left, ResponseShape right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseShape.
        /// </summary>
        /// <param name="left">Compared (ResponseShape</param>
        /// <param name="right">Compared (ResponseShape</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseShape left, ResponseShape right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseShape.
        /// </summary>
        public sealed class ResponseShapeBuilder
        {
            private List<Coords> _Shell;
            private List<List<Coords>> _Holes;

            internal ResponseShapeBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseShape.Shell property.
            /// </summary>
            /// <param name="value">Shell</param>
            public ResponseShapeBuilder Shell(List<Coords> value)
            {
                _Shell = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseShape.Holes property.
            /// </summary>
            /// <param name="value">Holes</param>
            public ResponseShapeBuilder Holes(List<List<Coords>> value)
            {
                _Holes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseShape.
            /// </summary>
            /// <returns>ResponseShape</returns>
            public ResponseShape Build()
            {
                Validate();
                return new ResponseShape(
                    Shell: _Shell,
                    Holes: _Holes
                );
            }

            private void Validate()
            { 
                if (_Shell == null)
                {
                    throw new ArgumentException("Shell is a required property for ResponseShape and cannot be null");
                } 
                if (_Holes == null)
                {
                    throw new ArgumentException("Holes is a required property for ResponseShape and cannot be null");
                } 
            }
        }

        
    }
}
