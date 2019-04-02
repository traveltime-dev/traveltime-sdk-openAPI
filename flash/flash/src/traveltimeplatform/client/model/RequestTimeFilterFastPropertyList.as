package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterFastPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterFastProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterFastProperty_obj_class: traveltimeplatform.client.model.RequestTimeFilterFastProperty = null;
        [XmlElements(name="requestTimeFilterFastProperty", type="traveltimeplatform.client.model.RequestTimeFilterFastProperty")]
        public var requestTimeFilterFastProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterFastProperty;
        }

}

}
