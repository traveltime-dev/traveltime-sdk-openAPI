package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterProperty_obj_class: traveltimeplatform.client.model.RequestTimeFilterProperty = null;
        [XmlElements(name="requestTimeFilterProperty", type="traveltimeplatform.client.model.RequestTimeFilterProperty")]
        public var requestTimeFilterProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterProperty;
        }

}

}
