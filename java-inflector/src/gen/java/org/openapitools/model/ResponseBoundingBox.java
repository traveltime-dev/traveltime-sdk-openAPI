package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseBox;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2019-05-24T09:06:45.077Z[Etc/UTC]")
public class ResponseBoundingBox   {
  @JsonProperty("envelope")
  private ResponseBox envelope = null;

  @JsonProperty("boxes")
  private List<ResponseBox> boxes = new ArrayList<ResponseBox>();

  /**
   **/
  public ResponseBoundingBox envelope(ResponseBox envelope) {
    this.envelope = envelope;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("envelope")
  public ResponseBox getEnvelope() {
    return envelope;
  }
  public void setEnvelope(ResponseBox envelope) {
    this.envelope = envelope;
  }

  /**
   **/
  public ResponseBoundingBox boxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("boxes")
  public List<ResponseBox> getBoxes() {
    return boxes;
  }
  public void setBoxes(List<ResponseBox> boxes) {
    this.boxes = boxes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseBoundingBox responseBoundingBox = (ResponseBoundingBox) o;
    return Objects.equals(envelope, responseBoundingBox.envelope) &&
        Objects.equals(boxes, responseBoundingBox.boxes);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

