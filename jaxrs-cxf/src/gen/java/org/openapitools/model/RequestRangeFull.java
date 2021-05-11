package org.openapitools.model;

import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestRangeFull  {
  
  @ApiModelProperty(required = true, value = "")
  private Boolean enabled;

  @ApiModelProperty(required = true, value = "")
  private Integer maxResults;

  @ApiModelProperty(required = true, value = "")
  private Integer width;
 /**
   * Get enabled
   * @return enabled
  **/
  @JsonProperty("enabled")
  @NotNull
  public Boolean getEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public RequestRangeFull enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

 /**
   * Get maxResults
   * minimum: 1
   * maximum: 5
   * @return maxResults
  **/
  @JsonProperty("max_results")
  @NotNull
 @Min(1) @Max(5)  public Integer getMaxResults() {
    return maxResults;
  }

  public void setMaxResults(Integer maxResults) {
    this.maxResults = maxResults;
  }

  public RequestRangeFull maxResults(Integer maxResults) {
    this.maxResults = maxResults;
    return this;
  }

 /**
   * Get width
   * minimum: 1
   * maximum: 43200
   * @return width
  **/
  @JsonProperty("width")
  @NotNull
 @Min(1) @Max(43200)  public Integer getWidth() {
    return width;
  }

  public void setWidth(Integer width) {
    this.width = width;
  }

  public RequestRangeFull width(Integer width) {
    this.width = width;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

