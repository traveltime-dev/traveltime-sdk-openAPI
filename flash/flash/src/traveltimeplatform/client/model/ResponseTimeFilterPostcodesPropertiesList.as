package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class ResponseTimeFilterPostcodesPropertiesList implements ListWrapper {
        // This declaration below of _ResponseTimeFilterPostcodesProperties_obj_class is to force flash compiler to include this class
        private var _responseTimeFilterPostcodesProperties_obj_class: traveltimeplatform.client.model.ResponseTimeFilterPostcodesProperties = null;
        [XmlElements(name="responseTimeFilterPostcodesProperties", type="traveltimeplatform.client.model.ResponseTimeFilterPostcodesProperties")]
        public var responseTimeFilterPostcodesProperties: Array = new Array();

        public function getList(): Array{
            return responseTimeFilterPostcodesProperties;
        }

}

}
