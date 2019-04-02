package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseBox;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseBoundingBox   {
  
  private ResponseBox envelope = null;
  private List<ResponseBox> boxes = new ArrayList<>();

  public ResponseBoundingBox () {

  }

  public ResponseBoundingBox (ResponseBox envelope, List<ResponseBox> boxes) {
    this.envelope = envelope;
    this.boxes = boxes;
  }

    
  @JsonProperty("envelope")
  public ResponseBox getEnvelope() {
    return envelope;
  }
  public void setEnvelope(ResponseBox envelope) {
    this.envelope = envelope;
  }

    
  @JsonProperty("boxes")
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
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
