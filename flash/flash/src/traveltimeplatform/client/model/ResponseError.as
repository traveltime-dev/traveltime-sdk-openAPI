package traveltimeplatform.client.model {


    [XmlRootNode(name="ResponseError")]
    public class ResponseError {
                [XmlElement(name="http_status")]
        public var httpStatus: Number = 0;
                [XmlElement(name="error_code")]
        public var errorCode: Number = 0;
                [XmlElement(name="description")]
        public var description: String = null;
                [XmlElement(name="documentation_link")]
        public var documentationLink: String = null;
                // This declaration below of _additionalInfo_obj_class is to force flash compiler to include this class
        private var _additionalInfo_obj_class: Dictionary = null;
        [XmlElementWrapper(name="additional_info")]
        [XmlElements(name="additionalInfo", type="Dictionary")]
                public var additionalInfo: Dictionary = new Dictionary();

    public function toString(): String {
        var str: String = "ResponseError: ";
        str += " (httpStatus: " + httpStatus + ")";
        str += " (errorCode: " + errorCode + ")";
        str += " (description: " + description + ")";
        str += " (documentationLink: " + documentationLink + ")";
        str += " (additionalInfo: " + additionalInfo + ")";
        return str;
    }

}

}
