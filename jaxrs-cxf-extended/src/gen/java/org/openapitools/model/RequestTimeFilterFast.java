package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.RequestLocation;
import org.openapitools.model.RequestTimeFilterFastArrivalSearches;
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


public class RequestTimeFilterFast  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<RequestLocation> locations = new ArrayList<RequestLocation>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private RequestTimeFilterFastArrivalSearches arrivalSearches;
 /**
  * Get locations
  * @return locations
  */
  @JsonProperty("locations")
  @NotNull
 @Size(min=1)  public List<RequestLocation> getLocations() {
    return locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public void setLocations(List<RequestLocation> locations) {
    this.locations = locations;
  }

  /**
   * Sets the <code>locations</code> property.
   */
  public RequestTimeFilterFast locations(List<RequestLocation> locations) {
    this.locations = locations;
    return this;
  }

  /**
   * Adds a new item to the <code>locations</code> list.
   */
  public RequestTimeFilterFast addLocationsItem(RequestLocation locationsItem) {
    this.locations.add(locationsItem);
    return this;
  }

 /**
  * Get arrivalSearches
  * @return arrivalSearches
  */
  @JsonProperty("arrival_searches")
  @NotNull
  public RequestTimeFilterFastArrivalSearches getArrivalSearches() {
    return arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public void setArrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
  }

  /**
   * Sets the <code>arrivalSearches</code> property.
   */
  public RequestTimeFilterFast arrivalSearches(RequestTimeFilterFastArrivalSearches arrivalSearches) {
    this.arrivalSearches = arrivalSearches;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestTimeFilterFast {\n");
    
    sb.append("    locations: ").append(toIndentedString(locations)).append("\n");
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

