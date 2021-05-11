package apimodels;

import apimodels.ResponseTimeFilterFastProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterFastLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterFastLocation   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<ResponseTimeFilterFastProperties> properties = new ArrayList<>();

  public ResponseTimeFilterFastLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseTimeFilterFastLocation properties(List<ResponseTimeFilterFastProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseTimeFilterFastLocation addPropertiesItem(ResponseTimeFilterFastProperties propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

