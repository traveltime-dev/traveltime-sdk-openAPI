package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestTimeFilterDepartureSearch {
    
    String id
    
    String departureLocationId
    
    List<String> arrivalLocationIds = new ArrayList<String>()
    
    RequestTransportation transportation
    
    Integer travelTime
    
    Date departureTime
    
    List<RequestTimeFilterProperty> properties = new ArrayList<RequestTimeFilterProperty>()
    
    RequestRangeFull range
}
