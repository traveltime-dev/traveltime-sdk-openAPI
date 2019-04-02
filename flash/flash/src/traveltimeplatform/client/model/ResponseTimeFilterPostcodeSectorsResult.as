package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcodeSector;

    [XmlRootNode(name="ResponseTimeFilterPostcodeSectorsResult")]
    public class ResponseTimeFilterPostcodeSectorsResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _sectors_obj_class is to force flash compiler to include this class
        private var _sectors_obj_class: Array = null;
        [XmlElementWrapper(name="sectors")]
        [XmlElements(name="sectors", type="Array")]
                public var sectors: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodeSectorsResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (sectors: " + sectors + ")";
        return str;
    }

}

}
