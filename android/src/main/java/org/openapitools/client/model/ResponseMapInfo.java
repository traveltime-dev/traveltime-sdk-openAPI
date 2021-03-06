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
import org.openapitools.client.model.ResponseMapInfoMap;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseMapInfo {
  
  @SerializedName("maps")
  private List<ResponseMapInfoMap> maps = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseMapInfoMap> getMaps() {
    return maps;
  }
  public void setMaps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfo responseMapInfo = (ResponseMapInfo) o;
    return (this.maps == null ? responseMapInfo.maps == null : this.maps.equals(responseMapInfo.maps));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.maps == null ? 0: this.maps.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfo {\n");
    
    sb.append("  maps: ").append(maps).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
