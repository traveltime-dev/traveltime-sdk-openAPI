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
 * ResponseBox
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class ResponseBox   {
  @JsonProperty("min_lat")
  private Double minLat;

  @JsonProperty("max_lat")
  private Double maxLat;

  @JsonProperty("min_lng")
  private Double minLng;

  @JsonProperty("max_lng")
  private Double maxLng;

  public ResponseBox minLat(Double minLat) {
    this.minLat = minLat;
    return this;
  }

   /**
   * Get minLat
   * @return minLat
  **/
  @ApiModelProperty(required = true, value = "")
  public Double getMinLat() {
    return minLat;
  }

  public void setMinLat(Double minLat) {
    this.minLat = minLat;
  }

  public ResponseBox maxLat(Double maxLat) {
    this.maxLat = maxLat;
    return this;
  }

   /**
   * Get maxLat
   * @return maxLat
  **/
  @ApiModelProperty(required = true, value = "")
  public Double getMaxLat() {
    return maxLat;
  }

  public void setMaxLat(Double maxLat) {
    this.maxLat = maxLat;
  }

  public ResponseBox minLng(Double minLng) {
    this.minLng = minLng;
    return this;
  }

   /**
   * Get minLng
   * @return minLng
  **/
  @ApiModelProperty(required = true, value = "")
  public Double getMinLng() {
    return minLng;
  }

  public void setMinLng(Double minLng) {
    this.minLng = minLng;
  }

  public ResponseBox maxLng(Double maxLng) {
    this.maxLng = maxLng;
    return this;
  }

   /**
   * Get maxLng
   * @return maxLng
  **/
  @ApiModelProperty(required = true, value = "")
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
    return Objects.equals(this.minLat, responseBox.minLat) &&
        Objects.equals(this.maxLat, responseBox.maxLat) &&
        Objects.equals(this.minLng, responseBox.minLng) &&
        Objects.equals(this.maxLng, responseBox.maxLng);
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

