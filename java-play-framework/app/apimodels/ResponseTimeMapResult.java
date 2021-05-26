package apimodels;

import apimodels.ResponseShape;
import apimodels.ResponseTimeMapProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeMapResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeMapResult   {
  @JsonProperty("search_id")
  @NotNull

  private String searchId;

  @JsonProperty("shapes")
  @NotNull
@Valid

  private List<ResponseShape> shapes = new ArrayList<>();

  @JsonProperty("properties")
  @NotNull
@Valid

  private ResponseTimeMapProperties properties;

  public ResponseTimeMapResult searchId(String searchId) {
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

  public ResponseTimeMapResult shapes(List<ResponseShape> shapes) {
    this.shapes = shapes;
    return this;
  }

  public ResponseTimeMapResult addShapesItem(ResponseShape shapesItem) {
    shapes.add(shapesItem);
    return this;
  }

   /**
   * Get shapes
   * @return shapes
  **/
  public List<ResponseShape> getShapes() {
    return shapes;
  }

  public void setShapes(List<ResponseShape> shapes) {
    this.shapes = shapes;
  }

  public ResponseTimeMapResult properties(ResponseTimeMapProperties properties) {
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
    ResponseTimeMapResult responseTimeMapResult = (ResponseTimeMapResult) o;
    return Objects.equals(searchId, responseTimeMapResult.searchId) &&
        Objects.equals(shapes, responseTimeMapResult.shapes) &&
        Objects.equals(properties, responseTimeMapResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shapes, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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

