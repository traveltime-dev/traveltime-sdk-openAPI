package traveltimeplatform.client.model {


    [XmlRootNode(name="RequestUnionOnIntersection")]
    public class RequestUnionOnIntersection {
                [XmlElement(name="id")]
        public var id: String = null;
                // This declaration below of _searchIds_obj_class is to force flash compiler to include this class
        private var _searchIds_obj_class: Array = null;
        [XmlElementWrapper(name="search_ids")]
        [XmlElements(name="searchIds", type="Array")]
                public var searchIds: Array = new Array();

    public function toString(): String {
        var str: String = "RequestUnionOnIntersection: ";
        str += " (id: " + id + ")";
        str += " (searchIds: " + searchIds + ")";
        return str;
    }

}

}
