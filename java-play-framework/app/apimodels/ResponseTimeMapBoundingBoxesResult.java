package apimodels;

import apimodels.ResponseBoundingBox;
import apimodels.ResponseTimeMapProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeMapBoundingBoxesResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeMapBoundingBoxesResult   {
  @JsonProperty("search_id")
  @NotNull

  private String searchId;

  @JsonProperty("bounding_boxes")
  @NotNull
@Valid

  private List<ResponseBoundingBox> boundingBoxes = new ArrayList<>();

  @JsonProperty("properties")
  @NotNull
@Valid

  private ResponseTimeMapProperties properties;

  public ResponseTimeMapBoundingBoxesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeMapBoundingBoxesResult boundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
    return this;
  }

  public ResponseTimeMapBoundingBoxesResult addBoundingBoxesItem(ResponseBoundingBox boundingBoxesItem) {
    boundingBoxes.add(boundingBoxesItem);
    return this;
  }

   /**
   * Get boundingBoxes
   * @return boundingBoxes
  **/
  public List<ResponseBoundingBox> getBoundingBoxes() {
    return boundingBoxes;
  }

  public void setBoundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
  }

  public ResponseTimeMapBoundingBoxesResult properties(ResponseTimeMapProperties properties) {
    this.properties = properties;
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

