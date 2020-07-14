package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.openapitools.vertxweb.server.model.ResponseTimeMapProperties;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeMapWktResult   {
  
  private String searchId;
  private String shape;
  private ResponseTimeMapProperties properties;

  public ResponseTimeMapWktResult () {

  }

  public ResponseTimeMapWktResult (String searchId, String shape, ResponseTimeMapProperties properties) {
    this.searchId = searchId;
    this.shape = shape;
    this.properties = properties;
  }

    
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

    
  @JsonProperty("shape")
  public String getShape() {
    return shape;
  }
  public void setShape(String shape) {
    this.shape = shape;
  }

    
  @JsonProperty("properties")
  public ResponseTimeMapProperties getProperties() {
    return properties;
  }
  public void setProperties(ResponseTimeMapProperties properties) {
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
    ResponseTimeMapWktResult responseTimeMapWktResult = (ResponseTimeMapWktResult) o;
    return Objects.equals(searchId, responseTimeMapWktResult.searchId) &&
        Objects.equals(shape, responseTimeMapWktResult.shape) &&
        Objects.equals(properties, responseTimeMapWktResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shape, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapWktResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    shape: ").append(toIndentedString(shape)).append("\n");
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
