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
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-05-24T09:06:51.855Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseShape   {
  @JsonProperty("shell")
  private List<Coords> shell = new ArrayList<>();

  @JsonProperty("holes")
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
    holes.add(holesItem);
    return this;
  }

   /**
   * Get holes
   * @return holes
  **/
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

