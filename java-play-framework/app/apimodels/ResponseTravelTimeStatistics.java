package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTravelTimeStatistics
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTravelTimeStatistics   {
  @JsonProperty("min")
  @NotNull

  private Integer min;

  @JsonProperty("max")
  @NotNull

  private Integer max;

  @JsonProperty("mean")
  @NotNull

  private Integer mean;

  @JsonProperty("median")
  @NotNull

  private Integer median;

  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

   /**
   * Get min
   * @return min
  **/
  public Integer getMin() {
    return min;
  }

  public void setMin(Integer min) {
    this.min = min;
  }

  public ResponseTravelTimeStatistics max(Integer max) {
    this.max = max;
    return this;
  }

   /**
   * Get max
   * @return max
  **/
  public Integer getMax() {
    return max;
  }

  public void setMax(Integer max) {
    this.max = max;
  }

  public ResponseTravelTimeStatistics mean(Integer mean) {
    this.mean = mean;
    return this;
  }

   /**
   * Get mean
   * @return mean
  **/
  public Integer getMean() {
    return mean;
  }

  public void setMean(Integer mean) {
    this.mean = mean;
  }

  public ResponseTravelTimeStatistics median(Integer median) {
    this.median = median;
    return this;
  }

   /**
   * Get median
   * @return median
  **/
  public Integer getMedian() {
    return median;
  }

  public void setMedian(Integer median) {
    this.median = median;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTravelTimeStatistics responseTravelTimeStatistics = (ResponseTravelTimeStatistics) o;
    return Objects.equals(min, responseTravelTimeStatistics.min) &&
        Objects.equals(max, responseTravelTimeStatistics.max) &&
        Objects.equals(mean, responseTravelTimeStatistics.mean) &&
        Objects.equals(median, responseTravelTimeStatistics.median);
  }

  @Override
  public int hashCode() {
    return Objects.hash(min, max, mean, median);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTravelTimeStatistics {\n");
    
    sb.append("    min: ").append(toIndentedString(min)).append("\n");
    sb.append("    max: ").append(toIndentedString(max)).append("\n");
    sb.append("    mean: ").append(toIndentedString(mean)).append("\n");
    sb.append("    median: ").append(toIndentedString(median)).append("\n");
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

