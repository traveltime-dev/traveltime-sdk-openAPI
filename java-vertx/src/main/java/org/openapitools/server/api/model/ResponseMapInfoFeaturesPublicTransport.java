package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.time.OffsetDateTime;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseMapInfoFeaturesPublicTransport   {
  
  private OffsetDateTime dateStart;
  private OffsetDateTime dateEnd;

  public ResponseMapInfoFeaturesPublicTransport () {

  }

  public ResponseMapInfoFeaturesPublicTransport (OffsetDateTime dateStart, OffsetDateTime dateEnd) {
    this.dateStart = dateStart;
    this.dateEnd = dateEnd;
  }

    
  @JsonProperty("date_start")
  public OffsetDateTime getDateStart() {
    return dateStart;
  }
  public void setDateStart(OffsetDateTime dateStart) {
    this.dateStart = dateStart;
  }

    
  @JsonProperty("date_end")
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
