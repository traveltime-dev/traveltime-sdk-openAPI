/**
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

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.Coords;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class ResponseShape {
  
  @SerializedName("shell")
  private List<Coords> shell = null;
  @SerializedName("holes")
  private List<List<Coords>> holes = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Coords> getShell() {
    return shell;
  }
  public void setShell(List<Coords> shell) {
    this.shell = shell;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
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
    return (this.shell == null ? responseShape.shell == null : this.shell.equals(responseShape.shell)) &&
        (this.holes == null ? responseShape.holes == null : this.holes.equals(responseShape.holes));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.shell == null ? 0: this.shell.hashCode());
    result = 31 * result + (this.holes == null ? 0: this.holes.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseShape {\n");
    
    sb.append("  shell: ").append(shell).append("\n");
    sb.append("  holes: ").append(holes).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}