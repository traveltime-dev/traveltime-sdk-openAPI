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



@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJAXRSSpecServerCodegen", date = "2021-05-11T08:38:21.168Z[Etc/UTC]")public class RequestRangeFull   {
  
  private @Valid Boolean enabled;
  private @Valid Integer maxResults;
  private @Valid Integer width;

  /**
   **/
  public RequestRangeFull enabled(Boolean enabled) {
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
  }

/**
   * minimum: 1
   * maximum: 5
   **/
  public RequestRangeFull maxResults(Integer maxResults) {
    this.maxResults = maxResults;
    return this;
  }

  

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("max_results")
  @NotNull
 @Min(1) @Max(5)  public Integer getMaxResults() {
    return maxResults;
  }

  public void setMaxResults(Integer maxResults) {
    this.maxResults = maxResults;
  }

/**
   * minimum: 1
   * maximum: 43200
   **/
  public RequestRangeFull width(Integer width) {
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
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRangeFull requestRangeFull = (RequestRangeFull) o;
    return Objects.equals(this.enabled, requestRangeFull.enabled) &&
        Objects.equals(this.maxResults, requestRangeFull.maxResults) &&
        Objects.equals(this.width, requestRangeFull.width);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, maxResults, width);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRangeFull {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    maxResults: ").append(toIndentedString(maxResults)).append("\n");
    sb.append("    width: ").append(toIndentedString(width)).append("\n");
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

