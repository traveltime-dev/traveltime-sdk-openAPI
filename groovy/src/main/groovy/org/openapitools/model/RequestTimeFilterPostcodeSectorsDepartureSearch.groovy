package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestTimeFilterPostcodeSectorsDepartureSearch {
    
    String id
    
    RequestTransportation transportation = null
    
    Integer travelTime
    
    Date departureTime
    
    Double reachablePostcodesThreshold
    
    List<RequestTimeFilterPostcodeSectorsProperty> properties = new ArrayList<RequestTimeFilterPostcodeSectorsProperty>()
    
    RequestRangeFull range = null
}
