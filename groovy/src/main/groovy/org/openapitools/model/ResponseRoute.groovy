package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseRoutePart;

@Canonical
class ResponseRoute {
    
    Date departureTime
    
    Date arrivalTime
    
    List<ResponseRoutePart> parts = new ArrayList<ResponseRoutePart>()
}
