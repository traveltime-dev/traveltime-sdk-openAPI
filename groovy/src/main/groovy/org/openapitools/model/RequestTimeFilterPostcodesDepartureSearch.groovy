package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodesProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestTimeFilterPostcodesDepartureSearch {
    
    String id
    
    RequestTransportation transportation
    
    Integer travelTime
    
    Date departureTime
    
    List<RequestTimeFilterPostcodesProperty> properties = new ArrayList<RequestTimeFilterPostcodesProperty>()
    
    RequestRangeFull range
}
