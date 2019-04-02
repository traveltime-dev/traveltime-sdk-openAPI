package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class RequestRoutesPropertyList implements ListWrapper {
        // This declaration below of _RequestRoutesProperty_obj_class is to force flash compiler to include this class
        private var _requestRoutesProperty_obj_class: traveltimeplatform.client.model.RequestRoutesProperty = null;
        [XmlElements(name="requestRoutesProperty", type="traveltimeplatform.client.model.RequestRoutesProperty")]
        public var requestRoutesProperty: Array = new Array();

        public function getList(): Array{
            return requestRoutesProperty;
        }

}

}
