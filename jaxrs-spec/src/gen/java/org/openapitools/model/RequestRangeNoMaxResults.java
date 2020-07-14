package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2020-07-14T11:27:39.949Z[Etc/UTC]")public class RequestRangeNoMaxResults   {
  
  private @Valid Boolean enabled;
  private @Valid Integer width;

  /**
   **/
  public RequestRangeNoMaxResults enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("enabled")
  @NotNull
  public Boolean getEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }/**
   * minimum: 1
   * maximum: 43200
   **/
  public RequestRangeNoMaxResults width(Integer width) {
    this.width = width;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("width")
  @NotNull
 @Min(1) @Max(43200)  public Integer getWidth() {
    return width;
  }

  public void setWidth(Integer width) {
    this.width = width;
  }

  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRangeNoMaxResults requestRangeNoMaxResults = (RequestRangeNoMaxResults) o;
    return Objects.equals(this.enabled, requestRangeNoMaxResults.enabled) &&
        Objects.equals(this.width, requestRangeNoMaxResults.width);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, width);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRangeNoMaxResults {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    width: ").append(toIndentedString(width)).append("\n");
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

