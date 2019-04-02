package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * RequestRangeNoMaxResults
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2019-04-02T12:37:46.315Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class RequestRangeNoMaxResults   {
  @JsonProperty("enabled")
  private Boolean enabled;

  @JsonProperty("width")
  private Integer width;

  public RequestRangeNoMaxResults enabled(Boolean enabled) {
    this.enabled = enabled;
    return this;
  }

   /**
   * Get enabled
   * @return enabled
  **/
  @NotNull
  public Boolean getEnabled() {
    return enabled;
  }

  public void setEnabled(Boolean enabled) {
    this.enabled = enabled;
  }

  public RequestRangeNoMaxResults width(Integer width) {
    this.width = width;
    return this;
  }

   /**
   * Get width
   * minimum: 1
   * maximum: 43200
   * @return width
  **/
  @NotNull
@Min(1)
@Max(43200)
  public Integer getWidth() {
    return width;
  }

  public void setWidth(Integer width) {
    this.width = width;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestRangeNoMaxResults requestRangeNoMaxResults = (RequestRangeNoMaxResults) o;
    return Objects.equals(enabled, requestRangeNoMaxResults.enabled) &&
        Objects.equals(width, requestRangeNoMaxResults.width);
  }

  @Override
  public int hashCode() {
    return Objects.hash(enabled, width);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestRangeNoMaxResults {\n");
    
    sb.append("    enabled: ").append(toIndentedString(enabled)).append("\n");
    sb.append("    width: ").append(toIndentedString(width)).append("\n");
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

