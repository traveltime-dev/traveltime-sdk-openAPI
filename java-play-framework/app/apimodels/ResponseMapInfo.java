package apimodels;

import apimodels.ResponseMapInfoMap;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseMapInfo
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseMapInfo   {
  @JsonProperty("maps")
  @NotNull
@Valid

  private List<ResponseMapInfoMap> maps = new ArrayList<>();

  public ResponseMapInfo maps(List<ResponseMapInfoMap> maps) {
    this.maps = maps;
    return this;
  }

  public ResponseMapInfo addMapsItem(ResponseMapInfoMap mapsItem) {
    maps.add(mapsItem);
    return this;
  }

   /**
   * Get maps
   * @return maps
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

