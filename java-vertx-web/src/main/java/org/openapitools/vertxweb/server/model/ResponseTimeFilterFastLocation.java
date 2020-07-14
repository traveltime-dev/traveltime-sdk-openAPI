package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.ResponseTimeFilterFastProperties;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeFilterFastLocation   {
  
  private String id;
  private List<ResponseTimeFilterFastProperties> properties = new ArrayList<>();

  public ResponseTimeFilterFastLocation () {

  }

  public ResponseTimeFilterFastLocation (String id, List<ResponseTimeFilterFastProperties> properties) {
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
  public List<ResponseTimeFilterFastProperties> getProperties() {
    return properties;
  }
  public void setProperties(List<ResponseTimeFilterFastProperties> properties) {
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
    ResponseTimeFilterFastLocation responseTimeFilterFastLocation = (ResponseTimeFilterFastLocation) o;
    return Objects.equals(id, responseTimeFilterFastLocation.id) &&
        Objects.equals(properties, responseTimeFilterFastLocation.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFastLocation {\n");
    
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
