package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterPostcodesProperties;
import org.openapitools.jackson.nullable.JsonNullable;
import javax.validation.Valid;
import javax.validation.constraints.*;

/**
 * ResponseTimeFilterPostcode
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.SpringCodegen", date = "2021-05-26T18:51:56.918Z[Etc/UTC]")
public class ResponseTimeFilterPostcode   {
  @JsonProperty("code")
  private String code;

  @JsonProperty("properties")
  @Valid
  private List<ResponseTimeFilterPostcodesProperties> properties = new ArrayList<>();

  public ResponseTimeFilterPostcode code(String code) {
    this.code = code;
    return this;
  }

  /**
   * Get code
   * @return code
  */
  @ApiModelProperty(required = true, value = "")
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
    this.properties.add(propertiesItem);
    return this;
  }

  /**
   * Get properties
   * @return properties
  */
  @ApiModelProperty(required = true, value = "")
  @NotNull

  @Valid

  public List<ResponseTimeFilterPostcodesProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseTimeFilterPostcodesProperties> properties) {
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
    ResponseTimeFilterPostcode responseTimeFilterPostcode = (ResponseTimeFilterPostcode) o;
    return Objects.equals(this.code, responseTimeFilterPostcode.code) &&
        Objects.equals(this.properties, responseTimeFilterPostcode.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

