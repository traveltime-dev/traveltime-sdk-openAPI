using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace Org.OpenAPITools._.Models
{
    /// <summary>
    /// ResponseTravelTimeStatistics
    /// </summary>
    public sealed class ResponseTravelTimeStatistics:  IEquatable<ResponseTravelTimeStatistics>
    { 
        /// <summary>
        /// Min
        /// </summary>
        public int? Min { get; private set; }

        /// <summary>
        /// Max
        /// </summary>
        public int? Max { get; private set; }

        /// <summary>
        /// Mean
        /// </summary>
        public int? Mean { get; private set; }

        /// <summary>
        /// Median
        /// </summary>
        public int? Median { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseTravelTimeStatistics.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseTravelTimeStatistics()
        {
        }

        private ResponseTravelTimeStatistics(int? Min, int? Max, int? Mean, int? Median)
        {
            
            this.Min = Min;
            
            this.Max = Max;
            
            this.Mean = Mean;
            
            this.Median = Median;
            
        }

        /// <summary>
        /// Returns builder of ResponseTravelTimeStatistics.
        /// </summary>
        /// <returns>ResponseTravelTimeStatisticsBuilder</returns>
        public static ResponseTravelTimeStatisticsBuilder Builder()
        {
            return new ResponseTravelTimeStatisticsBuilder();
        }

        /// <summary>
        /// Returns ResponseTravelTimeStatisticsBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseTravelTimeStatisticsBuilder</returns>
        public ResponseTravelTimeStatisticsBuilder With()
        {
            return Builder()
                .Min(Min)
                .Max(Max)
                .Mean(Mean)
                .Median(Median);
        }

        public override string ToString()
        {
            return this.PropertiesToString();
        }

        public override bool Equals(object obj)
        {
            return this.EqualsByProperties(obj);
        }

        public bool Equals(ResponseTravelTimeStatistics other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseTravelTimeStatistics.
        /// </summary>
        /// <param name="left">Compared (ResponseTravelTimeStatistics</param>
        /// <param name="right">Compared (ResponseTravelTimeStatistics</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseTravelTimeStatistics left, ResponseTravelTimeStatistics right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseTravelTimeStatistics.
        /// </summary>
        /// <param name="left">Compared (ResponseTravelTimeStatistics</param>
        /// <param name="right">Compared (ResponseTravelTimeStatistics</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseTravelTimeStatistics left, ResponseTravelTimeStatistics right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseTravelTimeStatistics.
        /// </summary>
        public sealed class ResponseTravelTimeStatisticsBuilder
        {
            private int? _Min;
            private int? _Max;
            private int? _Mean;
            private int? _Median;

            internal ResponseTravelTimeStatisticsBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseTravelTimeStatistics.Min property.
            /// </summary>
            /// <param name="value">Min</param>
            public ResponseTravelTimeStatisticsBuilder Min(int? value)
            {
                _Min = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTravelTimeStatistics.Max property.
            /// </summary>
            /// <param name="value">Max</param>
            public ResponseTravelTimeStatisticsBuilder Max(int? value)
            {
                _Max = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTravelTimeStatistics.Mean property.
            /// </summary>
            /// <param name="value">Mean</param>
            public ResponseTravelTimeStatisticsBuilder Mean(int? value)
            {
                _Mean = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseTravelTimeStatistics.Median property.
            /// </summary>
            /// <param name="value">Median</param>
            public ResponseTravelTimeStatisticsBuilder Median(int? value)
            {
                _Median = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseTravelTimeStatistics.
            /// </summary>
            /// <returns>ResponseTravelTimeStatistics</returns>
            public ResponseTravelTimeStatistics Build()
            {
                Validate();
                return new ResponseTravelTimeStatistics(
                    Min: _Min,
                    Max: _Max,
                    Mean: _Mean,
                    Median: _Median
                );
            }

            private void Validate()
            { 
                if (_Min == null)
                {
                    throw new ArgumentException("Min is a required property for ResponseTravelTimeStatistics and cannot be null");
                } 
                if (_Max == null)
                {
                    throw new ArgumentException("Max is a required property for ResponseTravelTimeStatistics and cannot be null");
                } 
                if (_Mean == null)
                {
                    throw new ArgumentException("Mean is a required property for ResponseTravelTimeStatistics and cannot be null");
                } 
                if (_Median == null)
                {
                    throw new ArgumentException("Median is a required property for ResponseTravelTimeStatistics and cannot be null");
                } 
            }
        }

        
    }
}