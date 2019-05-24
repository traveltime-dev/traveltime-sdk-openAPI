package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseSupportedLocation;

@Canonical
class ResponseSupportedLocations {
    
    List<ResponseSupportedLocation> locations = new ArrayList<ResponseSupportedLocation>()
    
    List<String> unsupportedLocations = new ArrayList<String>()
}
