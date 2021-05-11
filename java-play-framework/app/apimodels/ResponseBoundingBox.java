package apimodels;

import apimodels.ResponseBox;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseBoundingBox
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseBoundingBox   {
  @JsonProperty("envelope")
  @NotNull
@Valid

  private ResponseBox envelope;

  @JsonProperty("boxes")
  @NotNull
@Valid

  private List<ResponseBox> boxes = new ArrayList<>();

  public ResponseBoundingBox envelope(ResponseBox envelope) {
    this.envelope = envelope;
    return this;
  }

   /**
   * Get envelope
   * @return envelope
  **/
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
    boxes.add(boxesItem);
    return this;
  }

   /**
   * Get boxes
   * @return boxes
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

