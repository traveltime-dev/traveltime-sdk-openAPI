package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.ResponseShape;
import org.openapitools.vertxweb.server.model.ResponseTimeMapProperties;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeMapResult   {
  
  private String searchId;
  private List<ResponseShape> shapes = new ArrayList<>();
  private ResponseTimeMapProperties properties;

  public ResponseTimeMapResult () {

  }

  public ResponseTimeMapResult (String searchId, List<ResponseShape> shapes, ResponseTimeMapProperties properties) {
    this.searchId = searchId;
    this.shapes = shapes;
    this.properties = properties;
  }

    
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

    
  @JsonProperty("shapes")
  public List<ResponseShape> getShapes() {
    return shapes;
  }
  public void setShapes(List<ResponseShape> shapes) {
    this.shapes = shapes;
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
    ResponseTimeMapResult responseTimeMapResult = (ResponseTimeMapResult) o;
    return Objects.equals(searchId, responseTimeMapResult.searchId) &&
        Objects.equals(shapes, responseTimeMapResult.shapes) &&
        Objects.equals(properties, responseTimeMapResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shapes, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    shapes: ").append(toIndentedString(shapes)).append("\n");
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
