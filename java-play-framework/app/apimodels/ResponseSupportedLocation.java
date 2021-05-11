package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseSupportedLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseSupportedLocation   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("map_name")
  @NotNull

  private String mapName;

  public ResponseSupportedLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseSupportedLocation mapName(String mapName) {
    this.mapName = mapName;
    return this;
  }

   /**
   * Get mapName
   * @return mapName
  **/
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
    return Objects.equals(id, responseSupportedLocation.id) &&
        Objects.equals(mapName, responseSupportedLocation.mapName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, mapName);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

