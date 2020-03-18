package org.openapitools.client.model {

import org.openapitools.client.model.RequestTimeFilterFastArrivalManyToOneSearch;
import org.openapitools.client.model.RequestTimeFilterFastArrivalOneToManySearch;

    [XmlRootNode(name="RequestTimeFilterFastArrivalSearches")]
    public class RequestTimeFilterFastArrivalSearches {
                // This declaration below of _manyToOne_obj_class is to force flash compiler to include this class
        private var _manyToOne_obj_class: Array = null;
        [XmlElementWrapper(name="many_to_one")]
        [XmlElements(name="manyToOne", type="Array")]
                public var manyToOne: Array = new Array();
                // This declaration below of _oneToMany_obj_class is to force flash compiler to include this class
        private var _oneToMany_obj_class: Array = null;
        [XmlElementWrapper(name="one_to_many")]
        [XmlElements(name="oneToMany", type="Array")]
                public var oneToMany: Array = new Array();

    public function toString(): String {
        var str: String = "RequestTimeFilterFastArrivalSearches: ";
        str += " (manyToOne: " + manyToOne + ")";
        str += " (oneToMany: " + oneToMany + ")";
        return str;
    }

}

}
