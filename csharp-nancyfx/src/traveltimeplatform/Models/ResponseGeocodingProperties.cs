using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Sharpility.Extensions;
using NodaTime;

namespace traveltimeplatform._.Models
{
    /// <summary>
    /// ResponseGeocodingProperties
    /// </summary>
    public sealed class ResponseGeocodingProperties:  IEquatable<ResponseGeocodingProperties>
    { 
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; private set; }

        /// <summary>
        /// Label
        /// </summary>
        public string Label { get; private set; }

        /// <summary>
        /// Score
        /// </summary>
        public double? Score { get; private set; }

        /// <summary>
        /// HouseNumber
        /// </summary>
        public string HouseNumber { get; private set; }

        /// <summary>
        /// Street
        /// </summary>
        public string Street { get; private set; }

        /// <summary>
        /// Region
        /// </summary>
        public string Region { get; private set; }

        /// <summary>
        /// RegionCode
        /// </summary>
        public string RegionCode { get; private set; }

        /// <summary>
        /// Neighbourhood
        /// </summary>
        public string Neighbourhood { get; private set; }

        /// <summary>
        /// County
        /// </summary>
        public string County { get; private set; }

        /// <summary>
        /// Macroregion
        /// </summary>
        public string Macroregion { get; private set; }

        /// <summary>
        /// City
        /// </summary>
        public string City { get; private set; }

        /// <summary>
        /// Country
        /// </summary>
        public string Country { get; private set; }

        /// <summary>
        /// CountryCode
        /// </summary>
        public string CountryCode { get; private set; }

        /// <summary>
        /// Continent
        /// </summary>
        public string Continent { get; private set; }

        /// <summary>
        /// Postcode
        /// </summary>
        public string Postcode { get; private set; }

        /// <summary>
        /// Features
        /// </summary>
        public ResponseMapInfoFeatures Features { get; private set; }


        /// <summary>
        /// Empty constructor required by some serializers.
        /// Use ResponseGeocodingProperties.Builder() for instance creation instead.
        /// </summary>
        [Obsolete]
        public ResponseGeocodingProperties()
        {
        }

        private ResponseGeocodingProperties(string Name, string Label, double? Score, string HouseNumber, string Street, string Region, string RegionCode, string Neighbourhood, string County, string Macroregion, string City, string Country, string CountryCode, string Continent, string Postcode, ResponseMapInfoFeatures Features)
        {
            
            this.Name = Name;
            
            this.Label = Label;
            
            this.Score = Score;
            
            this.HouseNumber = HouseNumber;
            
            this.Street = Street;
            
            this.Region = Region;
            
            this.RegionCode = RegionCode;
            
            this.Neighbourhood = Neighbourhood;
            
            this.County = County;
            
            this.Macroregion = Macroregion;
            
            this.City = City;
            
            this.Country = Country;
            
            this.CountryCode = CountryCode;
            
            this.Continent = Continent;
            
            this.Postcode = Postcode;
            
            this.Features = Features;
            
        }

        /// <summary>
        /// Returns builder of ResponseGeocodingProperties.
        /// </summary>
        /// <returns>ResponseGeocodingPropertiesBuilder</returns>
        public static ResponseGeocodingPropertiesBuilder Builder()
        {
            return new ResponseGeocodingPropertiesBuilder();
        }

        /// <summary>
        /// Returns ResponseGeocodingPropertiesBuilder with properties set.
        /// Use it to change properties.
        /// </summary>
        /// <returns>ResponseGeocodingPropertiesBuilder</returns>
        public ResponseGeocodingPropertiesBuilder With()
        {
            return Builder()
                .Name(Name)
                .Label(Label)
                .Score(Score)
                .HouseNumber(HouseNumber)
                .Street(Street)
                .Region(Region)
                .RegionCode(RegionCode)
                .Neighbourhood(Neighbourhood)
                .County(County)
                .Macroregion(Macroregion)
                .City(City)
                .Country(Country)
                .CountryCode(CountryCode)
                .Continent(Continent)
                .Postcode(Postcode)
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

        public bool Equals(ResponseGeocodingProperties other)
        {
            return Equals((object) other);
        }

        public override int GetHashCode()
        {
            return this.PropertiesHash();
        }

        /// <summary>
        /// Implementation of == operator for (ResponseGeocodingProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingProperties</param>
        /// <param name="right">Compared (ResponseGeocodingProperties</param>
        /// <returns>true if compared items are equals, false otherwise</returns>
        public static bool operator == (ResponseGeocodingProperties left, ResponseGeocodingProperties right)
        {
            return Equals(left, right);
        }

        /// <summary>
        /// Implementation of != operator for (ResponseGeocodingProperties.
        /// </summary>
        /// <param name="left">Compared (ResponseGeocodingProperties</param>
        /// <param name="right">Compared (ResponseGeocodingProperties</param>
        /// <returns>true if compared items are not equals, false otherwise</returns>
        public static bool operator != (ResponseGeocodingProperties left, ResponseGeocodingProperties right)
        {
            return !Equals(left, right);
        }

        /// <summary>
        /// Builder of ResponseGeocodingProperties.
        /// </summary>
        public sealed class ResponseGeocodingPropertiesBuilder
        {
            private string _Name;
            private string _Label;
            private double? _Score;
            private string _HouseNumber;
            private string _Street;
            private string _Region;
            private string _RegionCode;
            private string _Neighbourhood;
            private string _County;
            private string _Macroregion;
            private string _City;
            private string _Country;
            private string _CountryCode;
            private string _Continent;
            private string _Postcode;
            private ResponseMapInfoFeatures _Features;

            internal ResponseGeocodingPropertiesBuilder()
            {
                SetupDefaults();
            }

            private void SetupDefaults()
            {
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Name property.
            /// </summary>
            /// <param name="value">Name</param>
            public ResponseGeocodingPropertiesBuilder Name(string value)
            {
                _Name = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Label property.
            /// </summary>
            /// <param name="value">Label</param>
            public ResponseGeocodingPropertiesBuilder Label(string value)
            {
                _Label = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Score property.
            /// </summary>
            /// <param name="value">Score</param>
            public ResponseGeocodingPropertiesBuilder Score(double? value)
            {
                _Score = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.HouseNumber property.
            /// </summary>
            /// <param name="value">HouseNumber</param>
            public ResponseGeocodingPropertiesBuilder HouseNumber(string value)
            {
                _HouseNumber = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Street property.
            /// </summary>
            /// <param name="value">Street</param>
            public ResponseGeocodingPropertiesBuilder Street(string value)
            {
                _Street = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Region property.
            /// </summary>
            /// <param name="value">Region</param>
            public ResponseGeocodingPropertiesBuilder Region(string value)
            {
                _Region = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.RegionCode property.
            /// </summary>
            /// <param name="value">RegionCode</param>
            public ResponseGeocodingPropertiesBuilder RegionCode(string value)
            {
                _RegionCode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Neighbourhood property.
            /// </summary>
            /// <param name="value">Neighbourhood</param>
            public ResponseGeocodingPropertiesBuilder Neighbourhood(string value)
            {
                _Neighbourhood = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.County property.
            /// </summary>
            /// <param name="value">County</param>
            public ResponseGeocodingPropertiesBuilder County(string value)
            {
                _County = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Macroregion property.
            /// </summary>
            /// <param name="value">Macroregion</param>
            public ResponseGeocodingPropertiesBuilder Macroregion(string value)
            {
                _Macroregion = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.City property.
            /// </summary>
            /// <param name="value">City</param>
            public ResponseGeocodingPropertiesBuilder City(string value)
            {
                _City = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Country property.
            /// </summary>
            /// <param name="value">Country</param>
            public ResponseGeocodingPropertiesBuilder Country(string value)
            {
                _Country = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.CountryCode property.
            /// </summary>
            /// <param name="value">CountryCode</param>
            public ResponseGeocodingPropertiesBuilder CountryCode(string value)
            {
                _CountryCode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Continent property.
            /// </summary>
            /// <param name="value">Continent</param>
            public ResponseGeocodingPropertiesBuilder Continent(string value)
            {
                _Continent = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Postcode property.
            /// </summary>
            /// <param name="value">Postcode</param>
            public ResponseGeocodingPropertiesBuilder Postcode(string value)
            {
                _Postcode = value;
                return this;
            }

            /// <summary>
            /// Sets value for ResponseGeocodingProperties.Features property.
            /// </summary>
            /// <param name="value">Features</param>
            public ResponseGeocodingPropertiesBuilder Features(ResponseMapInfoFeatures value)
            {
                _Features = value;
                return this;
            }


            /// <summary>
            /// Builds instance of ResponseGeocodingProperties.
            /// </summary>
            /// <returns>ResponseGeocodingProperties</returns>
            public ResponseGeocodingProperties Build()
            {
                Validate();
                return new ResponseGeocodingProperties(
                    Name: _Name,
                    Label: _Label,
                    Score: _Score,
                    HouseNumber: _HouseNumber,
                    Street: _Street,
                    Region: _Region,
                    RegionCode: _RegionCode,
                    Neighbourhood: _Neighbourhood,
                    County: _County,
                    Macroregion: _Macroregion,
                    City: _City,
                    Country: _Country,
                    CountryCode: _CountryCode,
                    Continent: _Continent,
                    Postcode: _Postcode,
                    Features: _Features
                );
            }

            private void Validate()
            { 
                if (_Name == null)
                {
                    throw new ArgumentException("Name is a required property for ResponseGeocodingProperties and cannot be null");
                } 
                if (_Label == null)
                {
                    throw new ArgumentException("Label is a required property for ResponseGeocodingProperties and cannot be null");
                } 
            }
        }

        
    }
}