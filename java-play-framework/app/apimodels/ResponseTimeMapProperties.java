package apimodels;

import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseTimeMapProperties
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2020-03-18T08:50:52.411Z[Etc/UTC]")

@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseTimeMapProperties   {
  @JsonProperty("is_only_walking")
  private Boolean isOnlyWalking;

  public ResponseTimeMapProperties isOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
    return this;
  }

   /**
   * Get isOnlyWalking
   * @return isOnlyWalking
  **/
    public Boolean getIsOnlyWalking() {
    return isOnlyWalking;
  }

  public void setIsOnlyWalking(Boolean isOnlyWalking) {
    this.isOnlyWalking = isOnlyWalking;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeMapProperties responseTimeMapProperties = (ResponseTimeMapProperties) o;
    return Objects.equals(isOnlyWalking, responseTimeMapProperties.isOnlyWalking);
  }

  @Override
  public int hashCode() {
    return Objects.hash(isOnlyWalking);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeMapProperties {\n");
    
    sb.append("    isOnlyWalking: ").append(toIndentedString(isOnlyWalking)).append("\n");
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

