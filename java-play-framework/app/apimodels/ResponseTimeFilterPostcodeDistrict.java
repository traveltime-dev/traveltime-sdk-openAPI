package apimodels;

import apimodels.ResponseTimeFilterPostcodeDistrictProperties;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeDistrict
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeDistrict   {
  @JsonProperty("code")
  @NotNull

  private String code;

  @JsonProperty("properties")
  @NotNull
@Valid

  private ResponseTimeFilterPostcodeDistrictProperties properties;

  public ResponseTimeFilterPostcodeDistrict code(String code) {
    this.code = code;
    return this;
  }

   /**
   * Get code
   * @return code
  **/
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public ResponseTimeFilterPostcodeDistrict properties(ResponseTimeFilterPostcodeDistrictProperties properties) {
    this.properties = properties;
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  public ResponseTimeFilterPostcodeDistrictProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseTimeFilterPostcodeDistrictProperties properties) {
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
    ResponseTimeFilterPostcodeDistrict responseTimeFilterPostcodeDistrict = (ResponseTimeFilterPostcodeDistrict) o;
    return Objects.equals(code, responseTimeFilterPostcodeDistrict.code) &&
        Objects.equals(properties, responseTimeFilterPostcodeDistrict.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeDistrict {\n");
    
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
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

