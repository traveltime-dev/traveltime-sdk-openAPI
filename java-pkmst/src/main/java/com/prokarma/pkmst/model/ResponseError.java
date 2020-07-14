package com.prokarma.pkmst.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * Response class to be returned by Api
 * @author pkmst
 *
 */
/**
 * ResponseError
 */

@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaPKMSTServerCodegen", date = "2020-07-14T11:27:13.425Z[Etc/UTC]")
public class ResponseError   {
  @JsonProperty("http_status")
  private Integer httpStatus;

  @JsonProperty("error_code")
  private Integer errorCode;

  @JsonProperty("description")
  private String description;

  @JsonProperty("documentation_link")
  private String documentationLink;

  @JsonProperty("additional_info")
  
  private Map<String, List<String>> additionalInfo = null;

  public ResponseError httpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
    return this;
  }

   /**
   * Get httpStatus
   * @return httpStatus
  **/
  @ApiModelProperty(value = "")
  public Integer getHttpStatus() {
    return httpStatus;
  }

  public void setHttpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
  }

  public ResponseError errorCode(Integer errorCode) {
    this.errorCode = errorCode;
    return this;
  }

   /**
   * Get errorCode
   * @return errorCode
  **/
  @ApiModelProperty(value = "")
  public Integer getErrorCode() {
    return errorCode;
  }

  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }

  public ResponseError description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Get description
   * @return description
  **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public ResponseError documentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
    return this;
  }

   /**
   * Get documentationLink
   * @return documentationLink
  **/
  @ApiModelProperty(value = "")
  public String getDocumentationLink() {
    return documentationLink;
  }

  public void setDocumentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
  }

  public ResponseError additionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
    return this;
  }

  public ResponseError putAdditionalInfoItem(String key, List<String> additionalInfoItem) {
    if (this.additionalInfo == null) {
      this.additionalInfo = new HashMap<>();
    }
    this.additionalInfo.put(key, additionalInfoItem);
    return this;
  }

   /**
   * Get additionalInfo
   * @return additionalInfo
  **/
  @ApiModelProperty(value = "")
  public Map<String, List<String>> getAdditionalInfo() {
    return additionalInfo;
  }

  public void setAdditionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseError responseError = (ResponseError) o;
    return Objects.equals(this.httpStatus, responseError.httpStatus) &&
        Objects.equals(this.errorCode, responseError.errorCode) &&
        Objects.equals(this.description, responseError.description) &&
        Objects.equals(this.documentationLink, responseError.documentationLink) &&
        Objects.equals(this.additionalInfo, responseError.additionalInfo);
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

