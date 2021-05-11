package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterFastResult;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseTimeFilterFast  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseTimeFilterFastResult> results = new ArrayList<ResponseTimeFilterFastResult>();
 /**
   * Get results
   * @return results
  **/
  @JsonProperty("results")
  @NotNull
  public List<ResponseTimeFilterFastResult> getResults() {
    return results;
  }

  public void setResults(List<ResponseTimeFilterFastResult> results) {
    this.results = results;
  }

  public ResponseTimeFilterFast results(List<ResponseTimeFilterFastResult> results) {
    this.results = results;
    return this;
  }

  public ResponseTimeFilterFast addResultsItem(ResponseTimeFilterFastResult resultsItem) {
    this.results.add(resultsItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

