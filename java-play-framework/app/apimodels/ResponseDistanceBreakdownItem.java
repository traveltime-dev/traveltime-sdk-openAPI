package apimodels;

import apimodels.ResponseTransportationMode;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseDistanceBreakdownItem
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseDistanceBreakdownItem   {
  @JsonProperty("mode")
  @NotNull
@Valid

  private ResponseTransportationMode mode;

  @JsonProperty("distance")
  @NotNull

  private Integer distance;

  public ResponseDistanceBreakdownItem mode(ResponseTransportationMode mode) {
    this.mode = mode;
    return this;
  }

   /**
   * Get mode
   * @return mode
  **/
  public ResponseTransportationMode getMode() {
    return mode;
  }

  public void setMode(ResponseTransportationMode mode) {
    this.mode = mode;
  }

  public ResponseDistanceBreakdownItem distance(Integer distance) {
    this.distance = distance;
    return this;
  }

   /**
   * Get distance
   * @return distance
  **/
  public Integer getDistance() {
    return distance;
  }

  public void setDistance(Integer distance) {
    this.distance = distance;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseDistanceBreakdownItem responseDistanceBreakdownItem = (ResponseDistanceBreakdownItem) o;
    return Objects.equals(mode, responseDistanceBreakdownItem.mode) &&
        Objects.equals(distance, responseDistanceBreakdownItem.distance);
  }

  @Override
  public int hashCode() {
    return Objects.hash(mode, distance);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseDistanceBreakdownItem {\n");
    
    sb.append("    mode: ").append(toIndentedString(mode)).append("\n");
    sb.append("    distance: ").append(toIndentedString(distance)).append("\n");
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

