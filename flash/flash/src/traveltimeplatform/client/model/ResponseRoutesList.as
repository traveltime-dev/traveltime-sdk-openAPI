package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;
import traveltimeplatform.client.model.ResponseRoutesResult;

    public class ResponseRoutesList implements ListWrapper {
        // This declaration below of _ResponseRoutes_obj_class is to force flash compiler to include this class
        private var _responseRoutes_obj_class: traveltimeplatform.client.model.ResponseRoutes = null;
        [XmlElements(name="responseRoutes", type="traveltimeplatform.client.model.ResponseRoutes")]
        public var responseRoutes: Array = new Array();

        public function getList(): Array{
            return responseRoutes;
        }

}

}
