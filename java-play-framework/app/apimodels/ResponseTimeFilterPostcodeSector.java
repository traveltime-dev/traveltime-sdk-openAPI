package apimodels;

import apimodels.ResponseTimeFilterPostcodeSectorProperties;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeSector
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-02T12:37:46.315Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeSector   {
  @JsonProperty("code")
  private String code = null;

  @JsonProperty("properties")
  private ResponseTimeFilterPostcodeSectorProperties properties = null;

  public ResponseTimeFilterPostcodeSector code(String code) {
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

  public ResponseTimeFilterPostcodeSector properties(ResponseTimeFilterPostcodeSectorProperties properties) {
    this.properties = properties;
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @NotNull
@Valid
  public ResponseTimeFilterPostcodeSectorProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseTimeFilterPostcodeSectorProperties properties) {
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
    ResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector = (ResponseTimeFilterPostcodeSector) o;
    return Objects.equals(code, responseTimeFilterPostcodeSector.code) &&
        Objects.equals(properties, responseTimeFilterPostcodeSector.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSector {\n");
    
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

