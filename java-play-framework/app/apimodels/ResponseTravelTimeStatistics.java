package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTravelTimeStatistics
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-07-14T11:27:15.847Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTravelTimeStatistics   {
  @JsonProperty("min")
  private Integer min;

  @JsonProperty("max")
  private Integer max;

  @JsonProperty("mean")
  private Integer mean;

  @JsonProperty("median")
  private Integer median;

  public ResponseTravelTimeStatistics min(Integer min) {
    this.min = min;
    return this;
  }

   /**
   * Get min
   * @return min
  **/
  @NotNull
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
  @NotNull
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
  @NotNull
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
  @NotNull
  public Integer getMedian() {
    return median;
  }

  public void setMedian(Integer median) {
    this.median = median;
  }


  @Override
  public boolean equals(java.lang.Object o) {
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

