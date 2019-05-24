package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseGeocodingGeometry;
import org.openapitools.model.ResponseGeocodingProperties;

@Canonical
class ResponseGeocodingGeoJsonFeature {
    
    String type
    
    ResponseGeocodingGeometry geometry = null
    
    ResponseGeocodingProperties properties = null
}
