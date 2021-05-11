package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseBoundingBox;
import org.openapitools.model.ResponseTimeMapProperties;
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


public class ResponseTimeMapBoundingBoxesResult  {
  
  @ApiModelProperty(required = true, value = "")
  private String searchId;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseBoundingBox> boundingBoxes = new ArrayList<ResponseBoundingBox>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseTimeMapProperties properties;
 /**
  * Get searchId
  * @return searchId
  */
  @JsonProperty("search_id")
  @NotNull
  public String getSearchId() {
    return searchId;
  }

  /**
   * Sets the <code>searchId</code> property.
   */
  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  /**
   * Sets the <code>searchId</code> property.
   */
  public ResponseTimeMapBoundingBoxesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

 /**
  * Get boundingBoxes
  * @return boundingBoxes
  */
  @JsonProperty("bounding_boxes")
  @NotNull
  public List<ResponseBoundingBox> getBoundingBoxes() {
    return boundingBoxes;
  }

  /**
   * Sets the <code>boundingBoxes</code> property.
   */
  public void setBoundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
  }

  /**
   * Sets the <code>boundingBoxes</code> property.
   */
  public ResponseTimeMapBoundingBoxesResult boundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
    return this;
  }

  /**
   * Adds a new item to the <code>boundingBoxes</code> list.
   */
  public ResponseTimeMapBoundingBoxesResult addBoundingBoxesItem(ResponseBoundingBox boundingBoxesItem) {
    this.boundingBoxes.add(boundingBoxesItem);
    return this;
  }

 /**
  * Get properties
  * @return properties
  */
  @JsonProperty("properties")
  @NotNull
  public ResponseTimeMapProperties getProperties() {
    return properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public void setProperties(ResponseTimeMapProperties properties) {
    this.properties = properties;
  }

  /**
   * Sets the <code>properties</code> property.
   */
  public ResponseTimeMapBoundingBoxesResult properties(ResponseTimeMapProperties properties) {
    this.properties = properties;
    return this;
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapBoundingBoxesResult {\n");
    
    sb.append("    searchId: ").append(toIndentedString(searchId)).append("\n");
    sb.append("    boundingBoxes: ").append(toIndentedString(boundingBoxes)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

