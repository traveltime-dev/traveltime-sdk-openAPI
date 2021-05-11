package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeSectorsDepartureSearch;
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

public class RequestTimeFilterPostcodeSectors  {
  
  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches = null;
 /**
   * Get departureSearches
   * @return departureSearches
  **/
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeSectorsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  public void setDepartureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  public RequestTimeFilterPostcodeSectors departureSearches(List<RequestTimeFilterPostcodeSectorsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  public RequestTimeFilterPostcodeSectors addDepartureSearchesItem(RequestTimeFilterPostcodeSectorsDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
   * Get arrivalSearches
   * @return arrivalSearches
  **/
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeSectorsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  public void setArrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  public RequestTimeFilterPostcodeSectors arrivalSearches(List<RequestTimeFilterPostcodeSectorsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  public RequestTimeFilterPostcodeSectors addArrivalSearchesItem(RequestTimeFilterPostcodeSectorsArrivalSearch arrivalSearchesItem) {
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeSectors {\n");
    
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
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

