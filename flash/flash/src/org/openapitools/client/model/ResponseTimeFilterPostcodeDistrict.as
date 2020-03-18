package org.openapitools.client.model {

import org.openapitools.client.model.ResponseTimeFilterPostcodeDistrictProperties;

    [XmlRootNode(name="ResponseTimeFilterPostcodeDistrict")]
    public class ResponseTimeFilterPostcodeDistrict {
                [XmlElement(name="code")]
        public var code: String = NaN;
                [XmlElement(name="properties")]
        public var properties: ResponseTimeFilterPostcodeDistrictProperties = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodeDistrict: ";
        str += " (code: " + code + ")";
        str += " (properties: " + properties + ")";
        return str;
    }

}

}
