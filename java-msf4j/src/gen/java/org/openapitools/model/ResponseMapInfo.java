package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseMapInfoMap;

/**
 * ResponseMapInfo
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2021-05-11T08:37:55.137Z[Etc/UTC]")
public class ResponseMapInfo   {
  @JsonProperty("maps")
  private List<ResponseMapInfoMap> maps = new ArrayList<ResponseMapInfoMap>();

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
  public boolean equals(Object o) {
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

