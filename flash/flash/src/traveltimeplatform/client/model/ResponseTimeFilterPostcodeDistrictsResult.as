package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcodeDistrict;

    [XmlRootNode(name="ResponseTimeFilterPostcodeDistrictsResult")]
    public class ResponseTimeFilterPostcodeDistrictsResult {
                [XmlElement(name="search_id")]
        public var searchId: String = null;
                // This declaration below of _districts_obj_class is to force flash compiler to include this class
        private var _districts_obj_class: Array = null;
        [XmlElementWrapper(name="districts")]
        [XmlElements(name="districts", type="Array")]
                public var districts: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodeDistrictsResult: ";
        str += " (searchId: " + searchId + ")";
        str += " (districts: " + districts + ")";
        return str;
    }

}

}
