package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestTimeMapArrivalSearch;
import traveltimeplatform.client.model.RequestTimeMapDepartureSearch;
import traveltimeplatform.client.model.RequestUnionOnIntersection;

    [XmlRootNode(name="RequestTimeMap")]
    public class RequestTimeMap {
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
                // This declaration below of _unions_obj_class is to force flash compiler to include this class
        private var _unions_obj_class: Array = null;
        [XmlElementWrapper(name="unions")]
        [XmlElements(name="unions", type="Array")]
                public var unions: Array = new Array();
                // This declaration below of _intersections_obj_class is to force flash compiler to include this class
        private var _intersections_obj_class: Array = null;
        [XmlElementWrapper(name="intersections")]
        [XmlElements(name="intersections", type="Array")]
                public var intersections: Array = new Array();

    public function toString(): String {
        var str: String = "RequestTimeMap: ";
        str += " (departureSearches: " + departureSearches + ")";
        str += " (arrivalSearches: " + arrivalSearches + ")";
        str += " (unions: " + unions + ")";
        str += " (intersections: " + intersections + ")";
        return str;
    }

}

}
