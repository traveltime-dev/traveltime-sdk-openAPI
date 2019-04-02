package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseMapInfoFeatures;

    [XmlRootNode(name="ResponseGeocodingProperties")]
    public class ResponseGeocodingProperties {
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="label")]
        public var label: String = null;
                [XmlElement(name="score")]
        public var score: Number = 0.0;
                [XmlElement(name="house_number")]
        public var houseNumber: String = null;
                [XmlElement(name="street")]
        public var street: String = null;
                [XmlElement(name="region")]
        public var region: String = null;
                [XmlElement(name="region_code")]
        public var regionCode: String = null;
                [XmlElement(name="neighbourhood")]
        public var neighbourhood: String = null;
                [XmlElement(name="county")]
        public var county: String = null;
                [XmlElement(name="macroregion")]
        public var macroregion: String = null;
                [XmlElement(name="city")]
        public var city: String = null;
                [XmlElement(name="country")]
        public var country: String = null;
                [XmlElement(name="country_code")]
        public var countryCode: String = null;
                [XmlElement(name="continent")]
        public var continent: String = null;
                [XmlElement(name="postcode")]
        public var postcode: String = null;
                [XmlElement(name="features")]
        public var features: ResponseMapInfoFeatures = NaN;

    public function toString(): String {
        var str: String = "ResponseGeocodingProperties: ";
        str += " (name: " + name + ")";
        str += " (label: " + label + ")";
        str += " (score: " + score + ")";
        str += " (houseNumber: " + houseNumber + ")";
        str += " (street: " + street + ")";
        str += " (region: " + region + ")";
        str += " (regionCode: " + regionCode + ")";
        str += " (neighbourhood: " + neighbourhood + ")";
        str += " (county: " + county + ")";
        str += " (macroregion: " + macroregion + ")";
        str += " (city: " + city + ")";
        str += " (country: " + country + ")";
        str += " (countryCode: " + countryCode + ")";
        str += " (continent: " + continent + ")";
        str += " (postcode: " + postcode + ")";
        str += " (features: " + features + ")";
        return str;
    }

}

}
