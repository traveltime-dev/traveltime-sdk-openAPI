package apimodels;

import apimodels.ResponseTimeFilterPostcodeSectorsResult;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeFilterPostcodeSectors
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeFilterPostcodeSectors   {
  @JsonProperty("results")
  @NotNull
@Valid

  private List<ResponseTimeFilterPostcodeSectorsResult> results = new ArrayList<>();

  public ResponseTimeFilterPostcodeSectors results(List<ResponseTimeFilterPostcodeSectorsResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterPostcodeSectors addResultsItem(ResponseTimeFilterPostcodeSectorsResult resultsItem) {
    results.add(resultsItem);
    return this;
  }

   /**
   * Get results
   * @return results
  **/
  public List<ResponseTimeFilterPostcodeSectorsResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterPostcodeSectorsResult> results) {
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
    ResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors = (ResponseTimeFilterPostcodeSectors) o;
    return Objects.equals(results, responseTimeFilterPostcodeSectors.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcodeSectors {\n");
    
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

