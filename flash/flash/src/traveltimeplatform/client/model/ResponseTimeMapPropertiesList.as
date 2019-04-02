package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTimeMapPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeMapProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeMapProperties_obj_class: traveltimeplatform.client.model.ResponseTimeMapProperties = null;
        [XmlElements(name="responseTimeMapProperties", type="traveltimeplatform.client.model.ResponseTimeMapProperties")]
        public var responseTimeMapProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeMapProperties;
        }

}

}
