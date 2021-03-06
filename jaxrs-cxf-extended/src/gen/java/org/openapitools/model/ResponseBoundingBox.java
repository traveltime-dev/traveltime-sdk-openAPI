package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseBox;
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


public class ResponseBoundingBox  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private ResponseBox envelope;

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<ResponseBox> boxes = new ArrayList<ResponseBox>();
 /**
  * Get envelope
  * @return envelope
  */
  @JsonProperty("envelope")
  @NotNull
  public ResponseBox getEnvelope() {
    return envelope;
  }

  /**
   * Sets the <code>envelope</code> property.
   */
  public void setEnvelope(ResponseBox envelope) {
    this.envelope = envelope;
  }

  /**
   * Sets the <code>envelope</code> property.
   */
  public ResponseBoundingBox envelope(ResponseBox envelope) {
    this.envelope = envelope;
    return this;
  }

 /**
  * Get boxes
  * @return boxes
  */
  @JsonProperty("boxes")
  @NotNull
  public List<ResponseBox> getBoxes() {
    return boxes;
  }

  /**
   * Sets the <code>boxes</code> property.
   */
  public void setBoxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
  }

  /**
   * Sets the <code>boxes</code> property.
   */
  public ResponseBoundingBox boxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
    return this;
  }

  /**
   * Adds a new item to the <code>boxes</code> list.
   */
  public ResponseBoundingBox addBoxesItem(ResponseBox boxesItem) {
    this.boxes.add(boxesItem);
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

