package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.Coords;

@Canonical
class RequestLocation {
    
    String id
    
    Coords coords
}
