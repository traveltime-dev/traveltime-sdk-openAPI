package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestRoutesArrivalSearch;
import org.openapitools.model.RequestRoutesDepartureSearch;

@Canonical
class RequestRoutes {
    
    List<RequestLocation> locations = new ArrayList<RequestLocation>()
    
    List<RequestRoutesDepartureSearch> departureSearches = new ArrayList<RequestRoutesDepartureSearch>()
    
    List<RequestRoutesArrivalSearch> arrivalSearches = new ArrayList<RequestRoutesArrivalSearch>()
}
