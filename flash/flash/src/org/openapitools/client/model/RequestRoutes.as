package org.openapitools.client.model {

import org.openapitools.client.model.RequestLocation;
import org.openapitools.client.model.RequestRoutesArrivalSearch;
import org.openapitools.client.model.RequestRoutesDepartureSearch;

    [XmlRootNode(name="RequestRoutes")]
    public class RequestRoutes {
                // This declaration below of _locations_obj_class is to force flash compiler to include this class
        private var _locations_obj_class: Array = null;
        [XmlElementWrapper(name="locations")]
        [XmlElements(name="locations", type="Array")]
                public var locations: Array = new Array();
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
        var str: String = "RequestRoutes: ";
        str += " (locations: " + locations + ")";
        str += " (departureSearches: " + departureSearches + ")";
        str += " (arrivalSearches: " + arrivalSearches + ")";
        return str;
    }

}

}
