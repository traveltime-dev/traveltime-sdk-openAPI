package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.prokarma.pkmst.model.ResponseBoundingBox;
import com.prokarma.pkmst.model.ResponseTimeMapProperties;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseTimeMapBoundingBoxesResult
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2021-05-26T18:50:05.078Z[Etc/UTC]")
public class ResponseTimeMapBoundingBoxesResult   {
  @JsonProperty("search_id")
  private String searchId;

  @JsonProperty("bounding_boxes")
  
  private List<ResponseBoundingBox> boundingBoxes = new ArrayList<>();

  @JsonProperty("properties")
  private ResponseTimeMapProperties properties;

  public ResponseTimeMapBoundingBoxesResult searchId(String searchId) {
    this.searchId = searchId;
    return this;
  }

   /**
   * Get searchId
   * @return searchId
  **/
  @ApiModelProperty(required = true, value = "")
  public String getSearchId() {
    return searchId;
  }

  public void setSearchId(String searchId) {
    this.searchId = searchId;
  }

  public ResponseTimeMapBoundingBoxesResult boundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
    return this;
  }

  public ResponseTimeMapBoundingBoxesResult addBoundingBoxesItem(ResponseBoundingBox boundingBoxesItem) {
    this.boundingBoxes.add(boundingBoxesItem);
    return this;
  }

   /**
   * Get boundingBoxes
   * @return boundingBoxes
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseBoundingBox> getBoundingBoxes() {
    return boundingBoxes;
  }

  public void setBoundingBoxes(List<ResponseBoundingBox> boundingBoxes) {
    this.boundingBoxes = boundingBoxes;
  }

  public ResponseTimeMapBoundingBoxesResult properties(ResponseTimeMapProperties properties) {
    this.properties = properties;
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public ResponseTimeMapProperties getProperties() {
    return properties;
  }

  public void setProperties(ResponseTimeMapProperties properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapBoundingBoxesResult responseTimeMapBoundingBoxesResult = (ResponseTimeMapBoundingBoxesResult) o;
    return Objects.equals(this.searchId, responseTimeMapBoundingBoxesResult.searchId) &&
        Objects.equals(this.boundingBoxes, responseTimeMapBoundingBoxesResult.boundingBoxes) &&
        Objects.equals(this.properties, responseTimeMapBoundingBoxesResult.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(searchId, boundingBoxes, properties);
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

