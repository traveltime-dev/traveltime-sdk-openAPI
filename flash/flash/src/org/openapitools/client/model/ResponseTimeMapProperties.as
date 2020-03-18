package org.openapitools.client.model {


    [XmlRootNode(name="ResponseTimeMapProperties")]
    public class ResponseTimeMapProperties {
                [XmlElement(name="is_only_walking")]
        public var isOnlyWalking: Boolean = false;

    public function toString(): String {
        var str: String = "ResponseTimeMapProperties: ";
        str += " (isOnlyWalking: " + isOnlyWalking + ")";
        return str;
    }

}

}
