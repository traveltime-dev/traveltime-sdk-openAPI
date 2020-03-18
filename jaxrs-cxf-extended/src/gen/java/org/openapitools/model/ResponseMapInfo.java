package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseMapInfoMap;
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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class ResponseMapInfo  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseMapInfoMap> maps = new ArrayList<ResponseMapInfoMap>();
 /**
  * Get maps
  * @return maps
  */
  @JsonProperty("maps")
  @NotNull
  public List<ResponseMapInfoMap> getMaps() {
    return maps;
  }

  /**
   * Sets the <code>maps</code> property.
   */
  public void setMaps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
  }

  /**
   * Sets the <code>maps</code> property.
   */
  public ResponseMapInfo maps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
    return this;
  }

  /**
   * Adds a new item to the <code>maps</code> list.
   */
  public ResponseMapInfo addMapsItem(ResponseMapInfoMap mapsItem) {
    this.maps.add(mapsItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfo {\n");
    
    sb.append("    maps: ").append(toIndentedString(maps)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

