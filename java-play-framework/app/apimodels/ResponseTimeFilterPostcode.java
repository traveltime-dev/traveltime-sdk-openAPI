package apimodels;

import apimodels.ResponseTimeFilterPostcodesProperties;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcode
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcode   {
  @JsonProperty("code")
  private String code = null;

  @JsonProperty("properties")
  private List<ResponseTimeFilterPostcodesProperties> properties = new ArrayList<>();

  public ResponseTimeFilterPostcode code(String code) {
    this.code = code;
    return this;
  }

   /**
   * Get code
   * @return code
  **/
  @NotNull
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public ResponseTimeFilterPostcode properties(List<ResponseTimeFilterPostcodesProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseTimeFilterPostcode addPropertiesItem(ResponseTimeFilterPostcodesProperties propertiesItem) {
    properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @NotNull
@Valid
  public List<ResponseTimeFilterPostcodesProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseTimeFilterPostcodesProperties> properties) {
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
    ResponseTimeFilterPostcode responseTimeFilterPostcode = (ResponseTimeFilterPostcode) o;
    return Objects.equals(code, responseTimeFilterPostcode.code) &&
        Objects.equals(properties, responseTimeFilterPostcode.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcode {\n");
    
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
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

