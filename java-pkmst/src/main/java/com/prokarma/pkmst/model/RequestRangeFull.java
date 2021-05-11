package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * RequestRangeFull
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-11T08:37:57.444Z[Etc/UTC]")
public class RequestRangeFull   {
  @JsonProperty("enabled")
  private Boolean enabled;

  @JsonProperty("max_results")
  private Integer maxResults;

  @JsonProperty("width")
  private Integer width;

  public RequestRangeFull enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

   /**
   * Get enabled
   * @return enabled
  **/
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
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
  @ApiModelProperty(required = true, value = "")
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

