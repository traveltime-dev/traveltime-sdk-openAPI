package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestLocation;
import traveltimeplatform.client.model.RequestTimeFilterFastArrivalSearches;

    [XmlRootNode(name="RequestTimeFilterFast")]
    public class RequestTimeFilterFast {
                // This declaration below of _locations_obj_class is to force flash compiler to include this class
        private var _locations_obj_class: Array = null;
        [XmlElementWrapper(name="locations")]
        [XmlElements(name="locations", type="Array")]
                public var locations: Array = new Array();
                [XmlElement(name="arrival_searches")]
        public var arrivalSearches: RequestTimeFilterFastArrivalSearches = NaN;

    public function toString(): String {
        var str: String = "RequestTimeFilterFast: ";
        str += " (locations: " + locations + ")";
        str += " (arrivalSearches: " + arrivalSearches + ")";
        return str;
    }

}

}
