package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseMapInfoFeaturesPublicTransport;

@Canonical
class ResponseMapInfoFeatures {
    
    ResponseMapInfoFeaturesPublicTransport publicTransport
    
    Boolean fares
    
    Boolean postcodes
}
