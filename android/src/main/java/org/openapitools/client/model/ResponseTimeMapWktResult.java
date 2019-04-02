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

import org.openapitools.client.model.ResponseTimeMapProperties;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseTimeMapWktResult {
  
  @SerializedName("search_id")
  private String searchId = null;
  @SerializedName("shape")
  private String shape = null;
  @SerializedName("properties")
  private ResponseTimeMapProperties properties = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getShape() {
    return shape;
  }
  public void setShape(String shape) {
    this.shape = shape;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public ResponseTimeMapProperties getProperties() {
    return properties;
  }
  public void setProperties(ResponseTimeMapProperties properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapWktResult responseTimeMapWktResult = (ResponseTimeMapWktResult) o;
    return (this.searchId == null ? responseTimeMapWktResult.searchId == null : this.searchId.equals(responseTimeMapWktResult.searchId)) &&
        (this.shape == null ? responseTimeMapWktResult.shape == null : this.shape.equals(responseTimeMapWktResult.shape)) &&
        (this.properties == null ? responseTimeMapWktResult.properties == null : this.properties.equals(responseTimeMapWktResult.properties));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.searchId == null ? 0: this.searchId.hashCode());
    result = 31 * result + (this.shape == null ? 0: this.shape.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapWktResult {\n");
    
    sb.append("  searchId: ").append(searchId).append("\n");
    sb.append("  shape: ").append(shape).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}