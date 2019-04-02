package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestTimeFilterPostcodesArrivalSearch;
import traveltimeplatform.client.model.RequestTimeFilterPostcodesDepartureSearch;

    [XmlRootNode(name="RequestTimeFilterPostcodes")]
    public class RequestTimeFilterPostcodes {
                // This declaration below of _departureSearches_obj_class is to force flash compiler to include this class
        private var _departureSearches_obj_class: Array = null;
        [XmlElementWrapper(name="departure_searches")]
        [XmlElements(name="departureSearches", type="Array")]
                public var departureSearches: Array = new Array();
                // This declaration below of _arrivalSearches_obj_class is to force flash compiler to include this class
        private var _arrivalSearches_obj_class: Array = null;
        [XmlElementWrapper(name="arrival_searches")]
        [XmlElements(name="arrivalSearches", type="Array")]
                public var arrivalSearches: Array = new Array();

    public function toString(): String {
        var str: String = "RequestTimeFilterPostcodes: ";
        str += " (departureSearches: " + departureSearches + ")";
        str += " (arrivalSearches: " + arrivalSearches + ")";
        return str;
    }

}

}
