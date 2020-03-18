package org.openapitools.client.model {

import org.openapitools.client.model.ResponseMapInfoFeatures;

    [XmlRootNode(name="ResponseMapInfoMap")]
    public class ResponseMapInfoMap {
                [XmlElement(name="name")]
        public var name: String = null;
                [XmlElement(name="features")]
        public var features: ResponseMapInfoFeatures = NaN;

    public function toString(): String {
        var str: String = "ResponseMapInfoMap: ";
        str += " (name: " + name + ")";
        str += " (features: " + features + ")";
        return str;
    }

}

}
