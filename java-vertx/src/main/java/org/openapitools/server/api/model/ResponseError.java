package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@JsonInclude(JsonInclude.Include.NON_NULL) 
public class ResponseError   {
  
  private Integer httpStatus = ;
  private Integer errorCode = ;
  private String description = ;
  private String documentationLink = ;
  private Map<String, List<String>> additionalInfo = new HashMap<>();

  public ResponseError () {

  }

  public ResponseError (Integer httpStatus, Integer errorCode, String description, String documentationLink, Map<String, List<String>> additionalInfo) {
    this.httpStatus = httpStatus;
    this.errorCode = errorCode;
    this.description = description;
    this.documentationLink = documentationLink;
    this.additionalInfo = additionalInfo;
  }

    
  @JsonProperty("http_status")
  public Integer getHttpStatus() {
    return httpStatus;
  }
  public void setHttpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
  }

    
  @JsonProperty("error_code")
  public Integer getErrorCode() {
    return errorCode;
  }
  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }

    
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

    
  @JsonProperty("documentation_link")
  public String getDocumentationLink() {
    return documentationLink;
  }
  public void setDocumentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
  }

    
  @JsonProperty("additional_info")
  public Map<String, List<String>> getAdditionalInfo() {
    return additionalInfo;
  }
  public void setAdditionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseError responseError = (ResponseError) o;
    return Objects.equals(httpStatus, responseError.httpStatus) &&
        Objects.equals(errorCode, responseError.errorCode) &&
        Objects.equals(description, responseError.description) &&
        Objects.equals(documentationLink, responseError.documentationLink) &&
        Objects.equals(additionalInfo, responseError.additionalInfo);
  }

  @Override
  public int hashCode() {
    return Objects.hash(httpStatus, errorCode, description, documentationLink, additionalInfo);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseError {\n");
    
    sb.append("    httpStatus: ").append(toIndentedString(httpStatus)).append("\n");
    sb.append("    errorCode: ").append(toIndentedString(errorCode)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    documentationLink: ").append(toIndentedString(documentationLink)).append("\n");
    sb.append("    additionalInfo: ").append(toIndentedString(additionalInfo)).append("\n");
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
