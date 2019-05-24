package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseBox   {
  
  private Double minLat;
  private Double maxLat;
  private Double minLng;
  private Double maxLng;

  public ResponseBox () {

  }

  public ResponseBox (Double minLat, Double maxLat, Double minLng, Double maxLng) {
    this.minLat = minLat;
    this.maxLat = maxLat;
    this.minLng = minLng;
    this.maxLng = maxLng;
  }

    
  @JsonProperty("min_lat")
  public Double getMinLat() {
    return minLat;
  }
  public void setMinLat(Double minLat) {
    this.minLat = minLat;
  }

    
  @JsonProperty("max_lat")
  public Double getMaxLat() {
    return maxLat;
  }
  public void setMaxLat(Double maxLat) {
    this.maxLat = maxLat;
  }

    
  @JsonProperty("min_lng")
  public Double getMinLng() {
    return minLng;
  }
  public void setMinLng(Double minLng) {
    this.minLng = minLng;
  }

    
  @JsonProperty("max_lng")
  public Double getMaxLng() {
    return maxLng;
  }
  public void setMaxLng(Double maxLng) {
    this.maxLng = maxLng;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseBox responseBox = (ResponseBox) o;
    return Objects.equals(minLat, responseBox.minLat) &&
        Objects.equals(maxLat, responseBox.maxLat) &&
        Objects.equals(minLng, responseBox.minLng) &&
        Objects.equals(maxLng, responseBox.maxLng);
  }

  @Override
  public int hashCode() {
    return Objects.hash(minLat, maxLat, minLng, maxLng);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseBox {\n");
    
    sb.append("    minLat: ").append(toIndentedString(minLat)).append("\n");
    sb.append("    maxLat: ").append(toIndentedString(maxLat)).append("\n");
    sb.append("    minLng: ").append(toIndentedString(minLng)).append("\n");
    sb.append("    maxLng: ").append(toIndentedString(maxLng)).append("\n");
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
