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

import java.util.*;
import org.openapitools.client.model.ResponseTimeFilterPostcodesProperties;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseTimeFilterPostcode {
  
  @SerializedName("code")
  private String code = null;
  @SerializedName("properties")
  private List<ResponseTimeFilterPostcodesProperties> properties = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getCode() {
    return code;
  }
  public void setCode(String code) {
    this.code = code;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterPostcodesProperties> getProperties() {
    return properties;
  }
  public void setProperties(List<ResponseTimeFilterPostcodesProperties> properties) {
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
    ResponseTimeFilterPostcode responseTimeFilterPostcode = (ResponseTimeFilterPostcode) o;
    return (this.code == null ? responseTimeFilterPostcode.code == null : this.code.equals(responseTimeFilterPostcode.code)) &&
        (this.properties == null ? responseTimeFilterPostcode.properties == null : this.properties.equals(responseTimeFilterPostcode.properties));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.code == null ? 0: this.code.hashCode());
    result = 31 * result + (this.properties == null ? 0: this.properties.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcode {\n");
    
    sb.append("  code: ").append(code).append("\n");
    sb.append("  properties: ").append(properties).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
