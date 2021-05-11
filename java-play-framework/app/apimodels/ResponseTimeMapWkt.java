package apimodels;

import apimodels.ResponseTimeMapWktResult;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeMapWkt
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeMapWkt   {
  @JsonProperty("results")
  @NotNull
@Valid

  private List<ResponseTimeMapWktResult> results = new ArrayList<>();

  public ResponseTimeMapWkt results(List<ResponseTimeMapWktResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeMapWkt addResultsItem(ResponseTimeMapWktResult resultsItem) {
    results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  public List<ResponseTimeMapWktResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeMapWktResult> results) {
    this.results = results;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapWkt responseTimeMapWkt = (ResponseTimeMapWkt) o;
    return Objects.equals(results, responseTimeMapWkt.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapWkt {\n");
    
    sb.append("    results: ").append(toIndentedString(results)).append("\n");
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

