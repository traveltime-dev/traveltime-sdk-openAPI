package traveltimeplatform.client.model {

import org.openapitools.common.ListWrapper;

    public class CoordsList implements ListWrapper {
        // This declaration below of _Coords_obj_class is to force flash compiler to include this class
        private var _coords_obj_class: traveltimeplatform.client.model.Coords = null;
        [XmlElements(name="coords", type="traveltimeplatform.client.model.Coords")]
        public var coords: Array = new Array();

        public function getList(): Array{
            return coords;
        }

}

}
