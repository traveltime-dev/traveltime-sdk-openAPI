package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestUnionOnIntersectionList implements ListWrapper {
        // This declaration below of _RequestUnionOnIntersection_obj_class is to force flash compiler to include this class
        private var _requestUnionOnIntersection_obj_class: traveltimeplatform.client.model.RequestUnionOnIntersection = null;
        [XmlElements(name="requestUnionOnIntersection", type="traveltimeplatform.client.model.RequestUnionOnIntersection")]
        public var requestUnionOnIntersection: Array = new Array();

        public function getList(): Array{
            return requestUnionOnIntersection;
        }

}

}
