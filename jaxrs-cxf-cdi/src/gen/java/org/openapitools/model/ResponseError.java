package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.validation.constraints.*;


import io.swagger.annotations.*;
import java.util.Objects;

import javax.xml.bind.annotation.*;


public class ResponseError   {
  
  private Integer httpStatus;

  private Integer errorCode;

  private String description;

  private String documentationLink;

  private Map<String, List<String>> additionalInfo = null;


  /**
   **/
  public ResponseError httpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("http_status")
  public Integer getHttpStatus() {
    return httpStatus;
  }
  public void setHttpStatus(Integer httpStatus) {
    this.httpStatus = httpStatus;
  }


  /**
   **/
  public ResponseError errorCode(Integer errorCode) {
    this.errorCode = errorCode;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("error_code")
  public Integer getErrorCode() {
    return errorCode;
  }
  public void setErrorCode(Integer errorCode) {
    this.errorCode = errorCode;
  }


  /**
   **/
  public ResponseError description(String description) {
    this.description = description;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("description")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }


  /**
   **/
  public ResponseError documentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("documentation_link")
  public String getDocumentationLink() {
    return documentationLink;
  }
  public void setDocumentationLink(String documentationLink) {
    this.documentationLink = documentationLink;
  }


  /**
   **/
  public ResponseError additionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
    return this;
  }

  
  @ApiModelProperty(value = "")
  @JsonProperty("additional_info")
  public Map<String, List<String>> getAdditionalInfo() {
    return additionalInfo;
  }
  public void setAdditionalInfo(Map<String, List<String>> additionalInfo) {
    this.additionalInfo = additionalInfo;
  }


  public ResponseError putAdditionalInfoItem(String key, List<String> additionalInfoItem) {
    if (this.additionalInfo == null) {
      this.additionalInfo = new HashMap<String, List<String>>();
    }
    this.additionalInfo.put(key, additionalInfoItem);
    return this;
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
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

