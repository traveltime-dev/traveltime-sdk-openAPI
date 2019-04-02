package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseSupportedLocation   {
  
  private String id = ;
  private String mapName = ;

  public ResponseSupportedLocation () {

  }

  public ResponseSupportedLocation (String id, String mapName) {
    this.id = id;
    this.mapName = mapName;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("map_name")
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
