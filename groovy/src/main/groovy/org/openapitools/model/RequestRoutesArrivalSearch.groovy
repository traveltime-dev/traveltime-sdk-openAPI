package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestRangeFull;
import org.openapitools.model.RequestRoutesProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestRoutesArrivalSearch {
    
    String id
    
    List<String> departureLocationIds = new ArrayList<String>()
    
    String arrivalLocationId
    
    RequestTransportation transportation = null
    
    Date arrivalTime
    
    List<RequestRoutesProperty> properties = new ArrayList<RequestRoutesProperty>()
    
    RequestRangeFull range = null
}
