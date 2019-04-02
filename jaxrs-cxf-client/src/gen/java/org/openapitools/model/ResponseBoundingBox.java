package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseBox;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ResponseBoundingBox  {
  
  @ApiModelProperty(required = true, value = "")
  private ResponseBox envelope = null;

  @ApiModelProperty(required = true, value = "")
  private List<ResponseBox> boxes = new ArrayList<ResponseBox>();
 /**
   * Get envelope
   * @return envelope
  **/
  @JsonProperty("envelope")
  public ResponseBox getEnvelope() {
    return envelope;
  }

  public void setEnvelope(ResponseBox envelope) {
    this.envelope = envelope;
  }

  public ResponseBoundingBox envelope(ResponseBox envelope) {
    this.envelope = envelope;
    return this;
  }

 /**
   * Get boxes
   * @return boxes
  **/
  @JsonProperty("boxes")
  public List<ResponseBox> getBoxes() {
    return boxes;
  }

  public void setBoxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
  }

  public ResponseBoundingBox boxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
    return this;
  }

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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

