package apimodels;

import apimodels.ResponseTimeFilterProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterLocation   {
  @JsonProperty("id")
  @NotNull

  private String id;

  @JsonProperty("properties")
  @NotNull
@Valid

  private List<ResponseTimeFilterProperties> properties = new ArrayList<>();

  public ResponseTimeFilterLocation id(String id) {
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

  public ResponseTimeFilterLocation properties(List<ResponseTimeFilterProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseTimeFilterLocation addPropertiesItem(ResponseTimeFilterProperties propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public List<ResponseTimeFilterProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseTimeFilterProperties> properties) {
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
    ResponseTimeFilterLocation responseTimeFilterLocation = (ResponseTimeFilterLocation) o;
    return Objects.equals(id, responseTimeFilterLocation.id) &&
        Objects.equals(properties, responseTimeFilterLocation.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterLocation {\n");
    
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

