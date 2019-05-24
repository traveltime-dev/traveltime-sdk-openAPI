package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsArrivalSearch;
import org.openapitools.model.RequestTimeFilterPostcodeDistrictsDepartureSearch;
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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestTimeFilterPostcodeDistricts  {
  
  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches = null;

  @ApiModelProperty(value = "")
  @Valid
  private List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches = null;
 /**
  * Get departureSearches
  * @return departureSearches
  */
  @JsonProperty("departure_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeDistrictsDepartureSearch> getDepartureSearches() {
    return departureSearches;
  }

  /**
   * Sets the <code>departureSearches</code> property.
   */
  public void setDepartureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
  }

  /**
   * Sets the <code>departureSearches</code> property.
   */
  public RequestTimeFilterPostcodeDistricts departureSearches(List<RequestTimeFilterPostcodeDistrictsDepartureSearch> departureSearches) {
    this.departureSearches = departureSearches;
    return this;
  }

  /**
   * Adds a new item to the <code>departureSearches</code> list.
   */
  public RequestTimeFilterPostcodeDistricts addDepartureSearchesItem(RequestTimeFilterPostcodeDistrictsDepartureSearch departureSearchesItem) {
    this.departureSearches.add(departureSearchesItem);
    return this;
  }

 /**
  * Get arrivalSearches
  * @return arrivalSearches
  */
  @JsonProperty("arrival_searches")
 @Size(max=10)  public List<RequestTimeFilterPostcodeDistrictsArrivalSearch> getArrivalSearches() {
    return arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public void setArrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public RequestTimeFilterPostcodeDistricts arrivalSearches(List<RequestTimeFilterPostcodeDistrictsArrivalSearch> arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }

  /**
   * Adds a new item to the <code>arrivalSearches</code> list.
   */
  public RequestTimeFilterPostcodeDistricts addArrivalSearchesItem(RequestTimeFilterPostcodeDistrictsArrivalSearch arrivalSearchesItem) {
    this.arrivalSearches.add(arrivalSearchesItem);
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterPostcodeDistricts {\n");
    
    sb.append("    departureSearches: ").append(toIndentedString(departureSearches)).append("\n");
    sb.append("    arrivalSearches: ").append(toIndentedString(arrivalSearches)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

