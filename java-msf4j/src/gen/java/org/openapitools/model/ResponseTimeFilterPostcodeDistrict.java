package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTimeFilterPostcodeDistrictProperties;

/**
 * ResponseTimeFilterPostcodeDistrict
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2020-07-14T11:27:11.038Z[Etc/UTC]")
public class ResponseTimeFilterPostcodeDistrict   {
  @JsonProperty("code")
  private String code = null;

  @JsonProperty("properties")
  private ResponseTimeFilterPostcodeDistrictProperties properties;

  public ResponseTimeFilterPostcodeDistrict code(String code) {
    this.code = code;
    return this;
  }

   /**
   * Get code
   * @return code
  **/
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
  public ResponseTimeFilterPostcodeDistrictProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseTimeFilterPostcodeDistrictProperties properties) {
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
    ResponseTimeFilterPostcodeDistrict responseTimeFilterPostcodeDistrict = (ResponseTimeFilterPostcodeDistrict) o;
    return Objects.equals(this.code, responseTimeFilterPostcodeDistrict.code) &&
        Objects.equals(this.properties, responseTimeFilterPostcodeDistrict.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

