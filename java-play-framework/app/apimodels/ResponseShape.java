package apimodels;

import apimodels.Coords;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseShape
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-26T18:50:07.636Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseShape   {
  @JsonProperty("shell")
  @NotNull
@Valid

  private List<Coords> shell = new ArrayList<>();

  @JsonProperty("holes")
  @NotNull
@Valid

  private List<List<Coords>> holes = new ArrayList<>();

  public ResponseShape shell(List<Coords> shell) {
    this.shell = shell;
    return this;
  }

  public ResponseShape addShellItem(Coords shellItem) {
    shell.add(shellItem);
    return this;
  }

   /**
   * Get shell
   * @return shell
  **/
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
    holes.add(holesItem);
    return this;
  }

   /**
   * Get holes
   * @return holes
  **/
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

  @SuppressWarnings("StringBufferReplaceableByString")
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

