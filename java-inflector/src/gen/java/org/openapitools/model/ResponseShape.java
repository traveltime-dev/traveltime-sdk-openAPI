package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;





@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaInflectorServerCodegen", date = "2021-05-11T08:37:52.749Z[Etc/UTC]")
public class ResponseShape   {
  @JsonProperty("shell")
  private List<Coords> shell = new ArrayList<Coords>();

  @JsonProperty("holes")
  private List<List<Coords>> holes = new ArrayList<List<Coords>>();

  /**
   **/
  public ResponseShape shell(List<Coords> shell) {
    this.shell = shell;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("shell")
  public List<Coords> getShell() {
    return shell;
  }
  public void setShell(List<Coords> shell) {
    this.shell = shell;
  }

  /**
   **/
  public ResponseShape holes(List<List<Coords>> holes) {
    this.holes = holes;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
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

