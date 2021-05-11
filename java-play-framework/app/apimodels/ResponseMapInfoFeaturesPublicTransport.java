package apimodels;

import java.time.OffsetDateTime;
import com.fasterxml.jackson.annotation.*;
import java.util.Set;
import javax.validation.*;
import java.util.Objects;
import javax.validation.constraints.*;
/**
 * ResponseMapInfoFeaturesPublicTransport
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPlayFrameworkCodegen", date = "2021-05-11T08:37:59.786Z[Etc/UTC]")
@SuppressWarnings({"UnusedReturnValue", "WeakerAccess"})
public class ResponseMapInfoFeaturesPublicTransport   {
  @JsonProperty("date_start")
  @NotNull
@Valid

  private OffsetDateTime dateStart;

  @JsonProperty("date_end")
  @NotNull
@Valid

  private OffsetDateTime dateEnd;

  public ResponseMapInfoFeaturesPublicTransport dateStart(OffsetDateTime dateStart) {
    this.dateStart = dateStart;
    return this;
  }

   /**
   * Get dateStart
   * @return dateStart
  **/
  public OffsetDateTime getDateStart() {
    return dateStart;
  }

  public void setDateStart(OffsetDateTime dateStart) {
    this.dateStart = dateStart;
  }

  public ResponseMapInfoFeaturesPublicTransport dateEnd(OffsetDateTime dateEnd) {
    this.dateEnd = dateEnd;
    return this;
  }

   /**
   * Get dateEnd
   * @return dateEnd
  **/
  public OffsetDateTime getDateEnd() {
    return dateEnd;
  }

  public void setDateEnd(OffsetDateTime dateEnd) {
    this.dateEnd = dateEnd;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseMapInfoFeaturesPublicTransport responseMapInfoFeaturesPublicTransport = (ResponseMapInfoFeaturesPublicTransport) o;
    return Objects.equals(dateStart, responseMapInfoFeaturesPublicTransport.dateStart) &&
        Objects.equals(dateEnd, responseMapInfoFeaturesPublicTransport.dateEnd);
  }

  @Override
  public int hashCode() {
    return Objects.hash(dateStart, dateEnd);
  }

  @SuppressWarnings("StringBufferReplaceableByString")
  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseMapInfoFeaturesPublicTransport {\n");
    
    sb.append("    dateStart: ").append(toIndentedString(dateStart)).append("\n");
    sb.append("    dateEnd: ").append(toIndentedString(dateEnd)).append("\n");
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

