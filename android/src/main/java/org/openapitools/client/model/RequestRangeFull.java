/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
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
public class RequestRangeFull {
  
  @SerializedName("enabled")
  private Boolean enabled = null;
  @SerializedName("max_results")
  private Integer maxResults = null;
  @SerializedName("width")
  private Integer width = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Boolean getEnabled() {
    return enabled;
  }
  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  /**
   * minimum: 1
   * maximum: 5
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getMaxResults() {
    return maxResults;
  }
  public void setMaxResults(Integer maxResults) {
    this.maxResults = maxResults;
  }

  /**
   * minimum: 1
   * maximum: 43200
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getWidth() {
    return width;
  }
  public void setWidth(Integer width) {
    this.width = width;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRangeFull requestRangeFull = (RequestRangeFull) o;
    return (this.enabled == null ? requestRangeFull.enabled == null : this.enabled.equals(requestRangeFull.enabled)) &&
        (this.maxResults == null ? requestRangeFull.maxResults == null : this.maxResults.equals(requestRangeFull.maxResults)) &&
        (this.width == null ? requestRangeFull.width == null : this.width.equals(requestRangeFull.width));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.enabled == null ? 0: this.enabled.hashCode());
    result = 31 * result + (this.maxResults == null ? 0: this.maxResults.hashCode());
    result = 31 * result + (this.width == null ? 0: this.width.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRangeFull {\n");
    
    sb.append("  enabled: ").append(enabled).append("\n");
    sb.append("  maxResults: ").append(maxResults).append("\n");
    sb.append("  width: ").append(width).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
