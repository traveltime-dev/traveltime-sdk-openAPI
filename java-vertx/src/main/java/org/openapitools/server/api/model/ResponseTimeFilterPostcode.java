package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.server.api.model.ResponseTimeFilterPostcodesProperties;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ResponseTimeFilterPostcode   {
  
  private String code = null;
  private List<ResponseTimeFilterPostcodesProperties> properties = new ArrayList<>();

  public ResponseTimeFilterPostcode () {

  }

  public ResponseTimeFilterPostcode (String code, List<ResponseTimeFilterPostcodesProperties> properties) {
    this.code = code;
    this.properties = properties;
  }

    
  @JsonProperty("code")
  public String getCode() {
    return code;
  }
  public void setCode(String code) {
    this.code = code;
  }

    
  @JsonProperty("properties")
  public List<ResponseTimeFilterPostcodesProperties> getProperties() {
    return properties;
  }
  public void setProperties(List<ResponseTimeFilterPostcodesProperties> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterPostcode responseTimeFilterPostcode = (ResponseTimeFilterPostcode) o;
    return Objects.equals(code, responseTimeFilterPostcode.code) &&
        Objects.equals(properties, responseTimeFilterPostcode.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(code, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterPostcode {\n");
    
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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
