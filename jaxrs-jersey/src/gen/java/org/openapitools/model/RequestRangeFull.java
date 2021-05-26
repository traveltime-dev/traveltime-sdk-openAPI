/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * RequestRangeFull
 */
@JsonPropertyOrder({
  RequestRangeFull.JSON_PROPERTY_ENABLED,
  RequestRangeFull.JSON_PROPERTY_MAX_RESULTS,
  RequestRangeFull.JSON_PROPERTY_WIDTH
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class RequestRangeFull   {
  public static final String JSON_PROPERTY_ENABLED = "enabled";
  @JsonProperty(JSON_PROPERTY_ENABLED)
  private Boolean enabled;

  public static final String JSON_PROPERTY_MAX_RESULTS = "max_results";
  @JsonProperty(JSON_PROPERTY_MAX_RESULTS)
  private Integer maxResults;

  public static final String JSON_PROPERTY_WIDTH = "width";
  @JsonProperty(JSON_PROPERTY_WIDTH)
  private Integer width;

  public RequestRangeFull enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

  /**
   * Get enabled
   * @return enabled
   **/
  @JsonProperty(value = "enabled")
  @ApiModelProperty(required = true, value = "")
  @NotNull 
  public Boolean getEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public RequestRangeFull maxResults(Integer maxResults) {
    this.maxResults = maxResults;
    return this;
  }

  /**
   * Get maxResults
   * minimum: 1
   * maximum: 5
   * @return maxResults
   **/
  @JsonProperty(value = "max_results")
  @ApiModelProperty(required = true, value = "")
  @NotNull  @Min(1) @Max(5)
  public Integer getMaxResults() {
    return maxResults;
  }

  public void setMaxResults(Integer maxResults) {
    this.maxResults = maxResults;
  }

  public RequestRangeFull width(Integer width) {
    this.width = width;
    return this;
  }

  /**
   * Get width
   * minimum: 1
   * maximum: 43200
   * @return width
   **/
  @JsonProperty(value = "width")
  @ApiModelProperty(required = true, value = "")
  @NotNull  @Min(1) @Max(43200)
  public Integer getWidth() {
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

