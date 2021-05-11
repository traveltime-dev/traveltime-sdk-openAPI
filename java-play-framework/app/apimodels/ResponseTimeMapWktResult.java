package apimodels;

import apimodels.ResponseTimeMapProperties;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeMapWktResult
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeMapWktResult   {
  @JsonProperty("search_id")
  @NotNull

  private String searchId;

  @JsonProperty("shape")
  @NotNull

  private String shape;

  @JsonProperty("properties")
  @NotNull
@Valid

  private ResponseTimeMapProperties properties;

  public ResponseTimeMapWktResult searchId(String searchId) {
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

  public ResponseTimeMapWktResult shape(String shape) {
    this.shape = shape;
    return this;
  }

   /**
   * Get shape
   * @return shape
  **/
  public String getShape() {
    return shape;
  }

  public void setShape(String shape) {
    this.shape = shape;
  }

  public ResponseTimeMapWktResult properties(ResponseTimeMapProperties properties) {
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
    ResponseTimeMapWktResult responseTimeMapWktResult = (ResponseTimeMapWktResult) o;
    return Objects.equals(searchId, responseTimeMapWktResult.searchId) &&
        Objects.equals(shape, responseTimeMapWktResult.shape) &&
        Objects.equals(properties, responseTimeMapWktResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, shape, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
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

