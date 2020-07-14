package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

/**
 * ResponseSupportedLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2020-07-14T11:27:11.038Z[Etc/UTC]")
public class ResponseSupportedLocation   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("map_name")
  private String mapName;

  public ResponseSupportedLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
  public String getMapName() {
    return mapName;
  }

  public void setMapName(String mapName) {
    this.mapName = mapName;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseSupportedLocation responseSupportedLocation = (ResponseSupportedLocation) o;
    return Objects.equals(this.id, responseSupportedLocation.id) &&
        Objects.equals(this.mapName, responseSupportedLocation.mapName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, mapName);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

