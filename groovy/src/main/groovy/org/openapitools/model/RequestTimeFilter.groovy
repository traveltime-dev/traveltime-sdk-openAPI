package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterArrivalSearch;
import org.openapitools.model.RequestTimeFilterDepartureSearch;

@Canonical
class RequestTimeFilter {
    
    List<RequestLocation> locations = new ArrayList<RequestLocation>()
    
    List<RequestTimeFilterDepartureSearch> departureSearches = new ArrayList<RequestTimeFilterDepartureSearch>()
    
    List<RequestTimeFilterArrivalSearch> arrivalSearches = new ArrayList<RequestTimeFilterArrivalSearch>()
}
