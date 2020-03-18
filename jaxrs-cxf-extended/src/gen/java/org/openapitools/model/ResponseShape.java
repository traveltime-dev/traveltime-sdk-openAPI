package org.openapitools.model;

import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.Coords;
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


public class ResponseShape  {
  
  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<Coords> shell = new ArrayList<Coords>();

  @ApiModelProperty(required = true, value = "")
  @Valid
  private List<List<Coords>> holes = new ArrayList<List<Coords>>();
 /**
  * Get shell
  * @return shell
  */
  @JsonProperty("shell")
  @NotNull
  public List<Coords> getShell() {
    return shell;
  }

  /**
   * Sets the <code>shell</code> property.
   */
  public void setShell(List<Coords> shell) {
    this.shell = shell;
  }

  /**
   * Sets the <code>shell</code> property.
   */
  public ResponseShape shell(List<Coords> shell) {
    this.shell = shell;
    return this;
  }

  /**
   * Adds a new item to the <code>shell</code> list.
   */
  public ResponseShape addShellItem(Coords shellItem) {
    this.shell.add(shellItem);
    return this;
  }

 /**
  * Get holes
  * @return holes
  */
  @JsonProperty("holes")
  @NotNull
  public List<List<Coords>> getHoles() {
    return holes;
  }

  /**
   * Sets the <code>holes</code> property.
   */
  public void setHoles(List<List<Coords>> holes) {
    this.holes = holes;
  }

  /**
   * Sets the <code>holes</code> property.
   */
  public ResponseShape holes(List<List<Coords>> holes) {
    this.holes = holes;
    return this;
  }

  /**
   * Adds a new item to the <code>holes</code> list.
   */
  public ResponseShape addHolesItem(List<Coords> holesItem) {
    this.holes.add(holesItem);
    return this;
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
  private static String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

