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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseTimeMapProperties {
  
  @SerializedName("is_only_walking")
  private Boolean isOnlyWalking = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsOnlyWalking() {
    return isOnlyWalking;
  }
  public void setIsOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapProperties responseTimeMapProperties = (ResponseTimeMapProperties) o;
    return (this.isOnlyWalking == null ? responseTimeMapProperties.isOnlyWalking == null : this.isOnlyWalking.equals(responseTimeMapProperties.isOnlyWalking));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.isOnlyWalking == null ? 0: this.isOnlyWalking.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapProperties {\n");
    
    sb.append("  isOnlyWalking: ").append(isOnlyWalking).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}