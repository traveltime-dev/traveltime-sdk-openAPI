package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseBox
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-05-24T09:06:51.855Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
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
  @NotNull
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
  @NotNull
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
  @NotNull
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
  @NotNull
  public Double getMaxLng() {
    return maxLng;
  }

  public void setMaxLng(Double maxLng) {
    this.maxLng = maxLng;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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

  @SuppressWarnings("StringBufferReplaceableByString")
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

