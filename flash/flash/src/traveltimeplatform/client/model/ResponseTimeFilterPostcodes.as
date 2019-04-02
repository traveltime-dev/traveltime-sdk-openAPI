package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseTimeFilterPostcodesResult;

    [XmlRootNode(name="ResponseTimeFilterPostcodes")]
    public class ResponseTimeFilterPostcodes {
                // This declaration below of _results_obj_class is to force flash compiler to include this class
        private var _results_obj_class: Array = null;
        [XmlElementWrapper(name="results")]
        [XmlElements(name="results", type="Array")]
                public var results: Array = new Array();

    public function toString(): String {
        var str: String = "ResponseTimeFilterPostcodes: ";
        str += " (results: " + results + ")";
        return str;
    }

}

}
