using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform..Models
{
    /// <summary>
    /// ResponseBoundingBox
    /// </summary>
    public sealed class ResponseBoundingBox:  IEquatable<ResponseBoundingBox>
    { 
        /// <summary>
        /// Envelope
        /// </summary>
        public ResponseBox Envelope { get; private set; }

        /// <summary>
        /// Boxes
        /// </summary>
        public List<ResponseBox> Boxes { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseBoundingBox.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseBoundingBox()
        {
        }

        private ResponseBoundingBox(ResponseBox Envelope, List<ResponseBox> Boxes)
        {
            
            this.Envelope = Envelope;
            
            this.Boxes = Boxes;
            
        }

        /// <summary>
        /// Returns builder of ResponseBoundingBox.
        /// </summary>
        /// <returns>ResponseBoundingBoxBuilder</returns>
        public static ResponseBoundingBoxBuilder Builder()
        {
            return new ResponseBoundingBoxBuilder();
        }

        /// <summary>
        /// Returns ResponseBoundingBoxBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseBoundingBoxBuilder</returns>
        public ResponseBoundingBoxBuilder With()
        {
            return Builder()
                .Envelope(Envelope)
                .Boxes(Boxes);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseBoundingBox other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseBoundingBox.
        /// </summary>
        /// <param name="left">Compared (ResponseBoundingBox</param>
        /// <param name="right">Compared (ResponseBoundingBox</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseBoundingBox left, ResponseBoundingBox right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseBoundingBox.
        /// </summary>
        /// <param name="left">Compared (ResponseBoundingBox</param>
        /// <param name="right">Compared (ResponseBoundingBox</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseBoundingBox left, ResponseBoundingBox right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseBoundingBox.
        /// </summary>
        public sealed class ResponseBoundingBoxBuilder
        {
            private ResponseBox _Envelope;
            private List<ResponseBox> _Boxes;

            internal ResponseBoundingBoxBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseBoundingBox.Envelope property.
            /// </summary>
            /// <param name="value">Envelope</param>
            public ResponseBoundingBoxBuilder Envelope(ResponseBox value)
            {
                _Envelope = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseBoundingBox.Boxes property.
            /// </summary>
            /// <param name="value">Boxes</param>
            public ResponseBoundingBoxBuilder Boxes(List<ResponseBox> value)
            {
                _Boxes = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseBoundingBox.
            /// </summary>
            /// <returns>ResponseBoundingBox</returns>
            public ResponseBoundingBox Build()
            {
                Validate();
                return new ResponseBoundingBox(
                    Envelope: _Envelope,
                    Boxes: _Boxes
                );
            }

            private void Validate()
            { 
                if (_Envelope == null)
                {
                    throw new ArgumentException("Envelope is a required property for ResponseBoundingBox and cannot be null");
                } 
                if (_Boxes == null)
                {
                    throw new ArgumentException("Boxes is a required property for ResponseBoundingBox and cannot be null");
                } 
            }
        }

        
    }
}