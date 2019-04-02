package traveltimeplatform.client.model {

import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import traveltimeplatform.client.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;

    [XmlRootNode(name="RequestTimeFilterPostcodeDistricts")]
    public class RequestTimeFilterPostcodeDistricts {
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
        var str: String = "RequestTimeFilterPostcodeDistricts: ";
        str += " (departureSearches: " + departureSearches + ")";
        str += " (arrivalSearches: " + arrivalSearches + ")";
        return str;
    }

}

}
