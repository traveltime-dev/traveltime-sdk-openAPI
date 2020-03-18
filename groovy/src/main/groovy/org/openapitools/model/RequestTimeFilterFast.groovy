package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterFastArrivalSearches;

@Canonical
class RequestTimeFilterFast {
    
    List<RequestLocation> locations = new ArrayList<RequestLocation>()
    
    RequestTimeFilterFastArrivalSearches arrivalSearches
}
