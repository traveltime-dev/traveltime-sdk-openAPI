package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import org.openapitools.model.RequestLevelOfDetail;
import org.openapitools.model.RequestRangeNoMaxResults;
import org.openapitools.model.RequestTimeMapProperty;
import org.openapitools.model.RequestTransportation;

@Canonical
class RequestTimeMapDepartureSearch {
    
    String id
    
    Coords coords
    
    RequestTransportation transportation
    
    Integer travelTime
    
    Date departureTime
    
    List<RequestTimeMapProperty> properties = new ArrayList<RequestTimeMapProperty>()
    
    RequestRangeNoMaxResults range
    
    RequestLevelOfDetail levelOfDetail
}
