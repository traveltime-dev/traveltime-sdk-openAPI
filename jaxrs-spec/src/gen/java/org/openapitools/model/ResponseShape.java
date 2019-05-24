package org.openapitools.model;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.*;
import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;



public class ResponseShape   {
  
  private @Valid List<Coords> shell = new ArrayList<Coords>();
  private @Valid List<List<Coords>> holes = new ArrayList<List<Coords>>();

  /**
   **/
  public ResponseShape shell(List<Coords> shell) {
    this.shell = shell;
    return this;
  }

  
  @ApiModelProperty(required = true, value = "")
  @JsonProperty("shell")
  @NotNull
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
  @NotNull
  public List<List<Coords>> getHoles() {
    return holes;
  }
  public void setHoles(List<List<Coords>> holes) {
    this.holes = holes;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseShape responseShape = (ResponseShape) o;
    return Objects.equals(this.shell, responseShape.shell) &&
        Objects.equals(this.holes, responseShape.holes);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

