package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseMapInfoFeaturesPublicTransport;

    [XmlRootNode(name="ResponseMapInfoFeatures")]
    public class ResponseMapInfoFeatures {
                [XmlElement(name="public_transport")]
        public var publicTransport: ResponseMapInfoFeaturesPublicTransport = NaN;
                [XmlElement(name="fares")]
        public var fares: Boolean = false;
                [XmlElement(name="postcodes")]
        public var postcodes: Boolean = false;

    public function toString(): String {
        var str: String = "ResponseMapInfoFeatures: ";
        str += " (publicTransport: " + publicTransport + ")";
        str += " (fares: " + fares + ")";
        str += " (postcodes: " + postcodes + ")";
        return str;
    }

}

}
