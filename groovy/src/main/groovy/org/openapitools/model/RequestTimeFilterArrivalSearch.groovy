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
class RequestTimeFilterArrivalSearch {
    
    String id
    
    List<String> departureLocationIds = new ArrayList<String>()
    
    String arrivalLocationId
    
    RequestTransportation transportation = null
    
    Integer travelTime
    
    Date arrivalTime
    
    List<RequestTimeFilterProperty> properties = new ArrayList<RequestTimeFilterProperty>()
    
    RequestRangeFull range = null
}
