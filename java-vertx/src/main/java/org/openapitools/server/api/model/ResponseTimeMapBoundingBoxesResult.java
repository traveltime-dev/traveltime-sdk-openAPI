package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseBoundingBox;
import org.openapitools.server.api.model.ResponseTimeMapProperties;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseTimeMapBoundingBoxesResult   {
  
  private String searchId;
  private List<ResponseBoundingBox> boundingBoxes = new ArrayList<>();
  private ResponseTimeMapProperties properties = null;

  public ResponseTimeMapBoundingBoxesResult () {

  }

  public ResponseTimeMapBoundingBoxesResult (String searchId, List<ResponseBoundingBox> boundingBoxes, ResponseTimeMapProperties properties) {
    this.searchId = searchId;
    this.boundingBoxes = boundingBoxes;
    this.properties = properties;
  }

    
  @JsonProperty("search_id")
  public String getSearchId() {
    return searchId;
  }
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

    
  @JsonProperty("bounding_boxes")
  public List<ResponseBoundingBox> getBoundingBoxes() {
    return boundingBoxes;
  }
  public void setBoundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
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
    ResponseTimeMapBoundingBoxesResult responseTimeMapBoundingBoxesResult = (ResponseTimeMapBoundingBoxesResult) o;
    return Objects.equals(searchId, responseTimeMapBoundingBoxesResult.searchId) &&
        Objects.equals(boundingBoxes, responseTimeMapBoundingBoxesResult.boundingBoxes) &&
        Objects.equals(properties, responseTimeMapBoundingBoxesResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, boundingBoxes, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapBoundingBoxesResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    boundingBoxes: ").append(toIndentedString(boundingBoxes)).append("\n");
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
