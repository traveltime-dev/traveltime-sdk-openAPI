package apimodels;

import apimodels.ResponseRoutesProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseRoutesLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-05-24T09:06:51.855Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseRoutesLocation   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("properties")
  private List<ResponseRoutesProperties> properties = new ArrayList<>();

  public ResponseRoutesLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @NotNull
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseRoutesLocation properties(List<ResponseRoutesProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseRoutesLocation addPropertiesItem(ResponseRoutesProperties propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @NotNull
@Valid
  public List<ResponseRoutesProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseRoutesProperties> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

