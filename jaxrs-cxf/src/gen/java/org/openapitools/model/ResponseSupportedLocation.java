package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseSupportedLocation  {
  
  @ApiModelProperty(required = true, value = "")
  private String id;

  @ApiModelProperty(required = true, value = "")
  private String mapName;
 /**
   * Get id
   * @return id
  **/
  @JsonProperty("id")
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseSupportedLocation id(String id) {
    this.id = id;
    return this;
  }

 /**
   * Get mapName
   * @return mapName
  **/
  @JsonProperty("map_name")
  @NotNull
  public String getMapName() {
    return mapName;
  }

  public void setMapName(String mapName) {
    this.mapName = mapName;
  }

  public ResponseSupportedLocation mapName(String mapName) {
    this.mapName = mapName;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseSupportedLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    mapName: ").append(toIndentedString(mapName)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

