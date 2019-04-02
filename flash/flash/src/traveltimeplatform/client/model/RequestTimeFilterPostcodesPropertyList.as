package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestTimeFilterPostcodesPropertyList implements ListWrapper {
        // This declaration below of _RequestTimeFilterPostcodesProperty_obj_class is to force flash compiler to include this class
        private var _requestTimeFilterPostcodesProperty_obj_class: traveltimeplatform.client.model.RequestTimeFilterPostcodesProperty = null;
        [XmlElements(name="requestTimeFilterPostcodesProperty", type="traveltimeplatform.client.model.RequestTimeFilterPostcodesProperty")]
        public var requestTimeFilterPostcodesProperty: Array = new Array();

        public function getList(): Array{
            return requestTimeFilterPostcodesProperty;
        }

}

}
