package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class RequestRangeNoMaxResults   {
  
  private Boolean enabled;
  private Integer width;

  public RequestRangeNoMaxResults () {

  }

  public RequestRangeNoMaxResults (Boolean enabled, Integer width) {
    this.enabled = enabled;
    this.width = width;
  }

    
  @JsonProperty("enabled")
  public Boolean getEnabled() {
    return enabled;
  }
  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

    
  @JsonProperty("width")
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
    RequestRangeNoMaxResults requestRangeNoMaxResults = (RequestRangeNoMaxResults) o;
    return Objects.equals(enabled, requestRangeNoMaxResults.enabled) &&
        Objects.equals(width, requestRangeNoMaxResults.width);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
