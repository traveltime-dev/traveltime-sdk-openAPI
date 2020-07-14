package org.openapitools.vertxweb.server.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.vertxweb.server.model.Coords;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseShape   {
  
  private List<Coords> shell = new ArrayList<>();
  private List<List<Coords>> holes = new ArrayList<>();

  public ResponseShape () {

  }

  public ResponseShape (List<Coords> shell, List<List<Coords>> holes) {
    this.shell = shell;
    this.holes = holes;
  }

    
  @JsonProperty("shell")
  public List<Coords> getShell() {
    return shell;
  }
  public void setShell(List<Coords> shell) {
    this.shell = shell;
  }

    
  @JsonProperty("holes")
  public List<List<Coords>> getHoles() {
    return holes;
  }
  public void setHoles(List<List<Coords>> holes) {
    this.holes = holes;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseShape responseShape = (ResponseShape) o;
    return Objects.equals(shell, responseShape.shell) &&
        Objects.equals(holes, responseShape.holes);
  }

  @Override
  public int hashCode() {
    return Objects.hash(shell, holes);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseShape {\n");
    
    sb.append("    shell: ").append(toIndentedString(shell)).append("\n");
    sb.append("    holes: ").append(toIndentedString(holes)).append("\n");
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
