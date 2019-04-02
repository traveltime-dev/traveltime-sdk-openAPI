/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
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
import org.openapitools.model.Coords;
import javax.validation.constraints.*;
import javax.validation.Valid;

/**
 * ResponseShape
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaJerseyServerCodegen", date = "2019-04-02T12:37:58.515Z[Etc/UTC]")
public class ResponseShape   {
  @JsonProperty("shell")
  private List<Coords> shell = new ArrayList<Coords>();

  @JsonProperty("holes")
  private List<List<Coords>> holes = new ArrayList<List<Coords>>();

  public ResponseShape shell(List<Coords> shell) {
    this.shell = shell;
    return this;
  }

  public ResponseShape addShellItem(Coords shellItem) {
    this.shell.add(shellItem);
    return this;
  }

  /**
   * Get shell
   * @return shell
   **/
  @JsonProperty("shell")
  @ApiModelProperty(required = true, value = "")
    @NotNull
@Valid
  public List<Coords> getShell() {
    return shell;
  }

  public void setShell(List<Coords> shell) {
    this.shell = shell;
  }

  public ResponseShape holes(List<List<Coords>> holes) {
    this.holes = holes;
    return this;
  }

  public ResponseShape addHolesItem(List<Coords> holesItem) {
    this.holes.add(holesItem);
    return this;
  }

  /**
   * Get holes
   * @return holes
   **/
  @JsonProperty("holes")
  @ApiModelProperty(required = true, value = "")
    @NotNull
@Valid
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
