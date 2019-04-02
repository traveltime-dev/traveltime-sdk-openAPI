/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import org.openapitools.client.model.ResponseMapInfoFeaturesPublicTransport;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseMapInfoFeatures {
  
  @SerializedName("public_transport")
  private ResponseMapInfoFeaturesPublicTransport publicTransport = null;
  @SerializedName("fares")
  private Boolean fares = null;
  @SerializedName("postcodes")
  private Boolean postcodes = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public ResponseMapInfoFeaturesPublicTransport getPublicTransport() {
    return publicTransport;
  }
  public void setPublicTransport(ResponseMapInfoFeaturesPublicTransport publicTransport) {
    this.publicTransport = publicTransport;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getFares() {
    return fares;
  }
  public void setFares(Boolean fares) {
    this.fares = fares;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getPostcodes() {
    return postcodes;
  }
  public void setPostcodes(Boolean postcodes) {
    this.postcodes = postcodes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeatures responseMapInfoFeatures = (ResponseMapInfoFeatures) o;
    return (this.publicTransport == null ? responseMapInfoFeatures.publicTransport == null : this.publicTransport.equals(responseMapInfoFeatures.publicTransport)) &&
        (this.fares == null ? responseMapInfoFeatures.fares == null : this.fares.equals(responseMapInfoFeatures.fares)) &&
        (this.postcodes == null ? responseMapInfoFeatures.postcodes == null : this.postcodes.equals(responseMapInfoFeatures.postcodes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.publicTransport == null ? 0: this.publicTransport.hashCode());
    result = 31 * result + (this.fares == null ? 0: this.fares.hashCode());
    result = 31 * result + (this.postcodes == null ? 0: this.postcodes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoFeatures {\n");
    
    sb.append("  publicTransport: ").append(publicTransport).append("\n");
    sb.append("  fares: ").append(fares).append("\n");
    sb.append("  postcodes: ").append(postcodes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}