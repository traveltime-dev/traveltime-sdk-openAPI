package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterFastArrivalManyToOneSearch;
import org.openapitools.model.RequestTimeFilterFastArrivalOneToManySearch;

@Canonical
class RequestTimeFilterFastArrivalSearches {
    
    List<RequestTimeFilterFastArrivalManyToOneSearch> manyToOne = new ArrayList<RequestTimeFilterFastArrivalManyToOneSearch>()
    
    List<RequestTimeFilterFastArrivalOneToManySearch> oneToMany = new ArrayList<RequestTimeFilterFastArrivalOneToManySearch>()
}
