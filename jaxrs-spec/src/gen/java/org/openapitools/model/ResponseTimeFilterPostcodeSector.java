package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ResponseTimeFilterPostcodeSectorProperties;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class ResponseTimeFilterPostcodeSector   {
  
  private @Valid String code;
  private @Valid ResponseTimeFilterPostcodeSectorProperties properties;

  /**
   **/
  public ResponseTimeFilterPostcodeSector code(String code) {
    this.code = code;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("code")
  @NotNull
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

/**
   **/
  public ResponseTimeFilterPostcodeSector properties(ResponseTimeFilterPostcodeSectorProperties properties) {
    this.properties = properties;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("properties")
  @NotNull
  public ResponseTimeFilterPostcodeSectorProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseTimeFilterPostcodeSectorProperties properties) {
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
    ResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector = (ResponseTimeFilterPostcodeSector) o;
    return Objects.equals(this.code, responseTimeFilterPostcodeSector.code) &&
        Objects.equals(this.properties, responseTimeFilterPostcodeSector.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }


}

