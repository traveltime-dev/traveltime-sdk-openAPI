package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseMapInfoMap;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseMapInfo
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-07-14T11:27:13.425Z[Etc/UTC]")
public class ResponseMapInfo   {
  @JsonProperty("maps")
  
  private List<ResponseMapInfoMap> maps = new ArrayList<>();

  public ResponseMapInfo maps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
    return this;
  }

  public ResponseMapInfo addMapsItem(ResponseMapInfoMap mapsItem) {
    this.maps.add(mapsItem);
    return this;
  }

   /**
   * Get maps
   * @return maps
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseMapInfoMap> getMaps() {
    return maps;
  }

  public void setMaps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfo responseMapInfo = (ResponseMapInfo) o;
    return Objects.equals(this.maps, responseMapInfo.maps);
  }

  @Override
  public int hashCode() {
    return Objects.hash(maps);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

