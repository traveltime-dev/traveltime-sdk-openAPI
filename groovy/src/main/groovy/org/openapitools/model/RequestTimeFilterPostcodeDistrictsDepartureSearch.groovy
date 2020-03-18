package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestTimeFilterPostcodeDistrictsDepartureSearch {
    
    String id
    
    RequestTransportation transportation
    
    Integer travelTime
    
    Date departureTime
    
    Double reachablePostcodesThreshold
    
    List<RequestTimeFilterPostcodeDistrictsProperty> properties = new ArrayList<RequestTimeFilterPostcodeDistrictsProperty>()
    
    RequestRangeFull range
}
