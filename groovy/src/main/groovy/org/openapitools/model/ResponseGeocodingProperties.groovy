package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseMapInfoFeatures;

@Canonical
class ResponseGeocodingProperties {
    
    String name
    
    String label
    
    Double score
    
    String houseNumber
    
    String street
    
    String region
    
    String regionCode
    
    String neighbourhood
    
    String county
    
    String macroregion
    
    String city
    
    String country
    
    String countryCode
    
    String continent
    
    String postcode
    
    ResponseMapInfoFeatures features
}
