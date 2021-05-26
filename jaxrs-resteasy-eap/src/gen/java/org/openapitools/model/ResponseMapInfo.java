package org.openapitools.model;

import java.util.Objects;
import java.util.ArrayList;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseMapInfoMap;
import javax.validation.constraints.*;
import io.swagger.annotations.*;

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaResteasyEapServerCodegen", date = "2021-05-26T18:50:28.794Z[Etc/UTC]")
public class ResponseMapInfo   {
  

  private List<ResponseMapInfoMap> maps = new ArrayList<ResponseMapInfoMap>();

  /**
   **/
  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("maps")
  @NotNull
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
    return Objects.equals(maps, responseMapInfo.maps);
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

