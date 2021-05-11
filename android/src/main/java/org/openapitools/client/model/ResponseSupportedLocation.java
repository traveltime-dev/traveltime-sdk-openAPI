/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
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
public class ResponseSupportedLocation {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("map_name")
  private String mapName = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getMapName() {
    return mapName;
  }
  public void setMapName(String mapName) {
    this.mapName = mapName;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseSupportedLocation responseSupportedLocation = (ResponseSupportedLocation) o;
    return (this.id == null ? responseSupportedLocation.id == null : this.id.equals(responseSupportedLocation.id)) &&
        (this.mapName == null ? responseSupportedLocation.mapName == null : this.mapName.equals(responseSupportedLocation.mapName));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.mapName == null ? 0: this.mapName.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseSupportedLocation {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  mapName: ").append(mapName).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
