package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseBox;

    public class ResponseBoundingBoxList implements ListWrapper {
        // This declaration below of _ResponseBoundingBox_obj_class is to force flash compiler to include this class
        private var _responseBoundingBox_obj_class: traveltimeplatform.client.model.ResponseBoundingBox = null;
        [XmlElements(name="responseBoundingBox", type="traveltimeplatform.client.model.ResponseBoundingBox")]
        public var responseBoundingBox: Array = new Array();

        public function getList(): Array{
            return responseBoundingBox;
        }

}

}
