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
import org.openapitools.model.ResponseBox;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ResponseBoundingBox
 */
@JsonPropertyOrder({
  ResponseBoundingBox.JSON_PROPERTY_ENVELOPE,
  ResponseBoundingBox.JSON_PROPERTY_BOXES
})
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2021-05-26T18:50:23.522Z[Etc/UTC]")
public class ResponseBoundingBox   {
  public static final String JSON_PROPERTY_ENVELOPE = "envelope";
  @JsonProperty(JSON_PROPERTY_ENVELOPE)
  private ResponseBox envelope;

  public static final String JSON_PROPERTY_BOXES = "boxes";
  @JsonProperty(JSON_PROPERTY_BOXES)
  private List<ResponseBox> boxes = new ArrayList<ResponseBox>();

  public ResponseBoundingBox envelope(ResponseBox envelope) {
    this.envelope = envelope;
    return this;
  }

  /**
   * Get envelope
   * @return envelope
   **/
  @JsonProperty(value = "envelope")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public ResponseBox getEnvelope() {
    return envelope;
  }

  public void setEnvelope(ResponseBox envelope) {
    this.envelope = envelope;
  }

  public ResponseBoundingBox boxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
    return this;
  }

  public ResponseBoundingBox addBoxesItem(ResponseBox boxesItem) {
    this.boxes.add(boxesItem);
    return this;
  }

  /**
   * Get boxes
   * @return boxes
   **/
  @JsonProperty(value = "boxes")
  @ApiModelProperty(required = true, value = "")
  @NotNull @Valid 
  public List<ResponseBox> getBoxes() {
    return boxes;
  }

  public void setBoxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseBoundingBox responseBoundingBox = (ResponseBoundingBox) o;
    return Objects.equals(this.envelope, responseBoundingBox.envelope) &&
        Objects.equals(this.boxes, responseBoundingBox.boxes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(envelope, boxes);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseBoundingBox {\n");
    
    sb.append("    envelope: ").append(toIndentedString(envelope)).append("\n");
    sb.append("    boxes: ").append(toIndentedString(boxes)).append("\n");
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

