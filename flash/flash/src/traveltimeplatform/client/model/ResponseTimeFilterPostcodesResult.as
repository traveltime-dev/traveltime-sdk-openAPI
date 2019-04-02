package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcode;

    [XmlRootNode(name="ResponseTimeFilterPostcodesResult")]
    public class ResponseTimeFilterPostcodesResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _postcodes_obj_class is to force flash compiler to include this class
        private var _postcodes_obj_class: Array = null;
        [XmlElementWrapper(name="postcodes")]
        [XmlElements(name="postcodes", type="Array")]
                public var postcodes: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodesResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (postcodes: " + postcodes + ")";
        return str;
    }

}

}
