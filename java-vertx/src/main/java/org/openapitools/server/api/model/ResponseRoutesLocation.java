package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseRoutesProperties;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseRoutesLocation   {
  
  private String id;
  private List<ResponseRoutesProperties> properties = new ArrayList<>();

  public ResponseRoutesLocation () {

  }

  public ResponseRoutesLocation (String id, List<ResponseRoutesProperties> properties) {
    this.id = id;
    this.properties = properties;
  }

    
  @JsonProperty("id")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

    
  @JsonProperty("properties")
  public List<ResponseRoutesProperties> getProperties() {
    return properties;
  }
  public void setProperties(List<ResponseRoutesProperties> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseRoutesLocation responseRoutesLocation = (ResponseRoutesLocation) o;
    return Objects.equals(id, responseRoutesLocation.id) &&
        Objects.equals(properties, responseRoutesLocation.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseRoutesLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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
