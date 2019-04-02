package traveltimeplatform.client.model {

import traveltimeplatform.client.model.ResponseDistanceBreakdownItem;
import traveltimeplatform.client.model.ResponseFares;
import traveltimeplatform.client.model.ResponseRoute;

    [XmlRootNode(name="ResponseTimeFilterProperties")]
    public class ResponseTimeFilterProperties {
                [XmlElement(name="travel_time")]
        public var travelTime: Number = 0;
                [XmlElement(name="distance")]
        public var distance: Number = 0;
                // This declaration below of _distanceBreakdown_obj_class is to force flash compiler to include this class
        private var _distanceBreakdown_obj_class: Array = null;
        [XmlElementWrapper(name="distance_breakdown")]
        [XmlElements(name="distanceBreakdown", type="Array")]
                public var distanceBreakdown: Array = new Array();
                [XmlElement(name="fares")]
        public var fares: ResponseFares = NaN;
                [XmlElement(name="route")]
        public var route: ResponseRoute = NaN;

    public function toString(): String {
        var str: String = "ResponseTimeFilterProperties: ";
        str += " (travelTime: " + travelTime + ")";
        str += " (distance: " + distance + ")";
        str += " (distanceBreakdown: " + distanceBreakdown + ")";
        str += " (fares: " + fares + ")";
        str += " (route: " + route + ")";
        return str;
    }

}

}
