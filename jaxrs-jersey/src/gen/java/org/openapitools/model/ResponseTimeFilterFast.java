/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterFastResult;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ResponseTimeFilterFast
 */
@JsonPropertyOrder({
  ResponseTimeFilterFast.JSON_PROPERTY_RESULTS
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class ResponseTimeFilterFast   {
  public static final String JSON_PROPERTY_RESULTS = "results";
  @JsonProperty(JSON_PROPERTY_RESULTS)
  private List<ResponseTimeFilterFastResult> results = new ArrayList<ResponseTimeFilterFastResult>();

  public ResponseTimeFilterFast results(List<ResponseTimeFilterFastResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterFast addResultsItem(ResponseTimeFilterFastResult resultsItem) {
    this.results.add(resultsItem);
    return this;
  }

  /**
   * Get results
   * @return results
   **/
  @JsonProperty(value = "results")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public List<ResponseTimeFilterFastResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterFastResult> results) {
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
    ResponseTimeFilterFast responseTimeFilterFast = (ResponseTimeFilterFast) o;
    return Objects.equals(this.results, responseTimeFilterFast.results);
  }

  @Override
  public int hashCode() {
    return Objects.hash(results);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterFast {\n");
    
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

