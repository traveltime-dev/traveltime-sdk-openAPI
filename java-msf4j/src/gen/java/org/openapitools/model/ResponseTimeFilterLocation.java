package org.openapitools.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.model.ResponseTimeFilterProperties;

/**
 * ResponseTimeFilterLocation
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaMSF4JServerCodegen", date = "2020-07-14T11:27:11.038Z[Etc/UTC]")
public class ResponseTimeFilterLocation   {
  @JsonProperty("id")
  private String id;

  @JsonProperty("properties")
  private List<ResponseTimeFilterProperties> properties = new ArrayList<ResponseTimeFilterProperties>();

  public ResponseTimeFilterLocation id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @ApiModelProperty(required = true, value = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ResponseTimeFilterLocation properties(List<ResponseTimeFilterProperties> properties) {
    this.properties = properties;
    return this;
  }

  public ResponseTimeFilterLocation addPropertiesItem(ResponseTimeFilterProperties propertiesItem) {
    this.properties.add(propertiesItem);
    return this;
  }

   /**
   * Get properties
   * @return properties
  **/
  @ApiModelProperty(required = true, value = "")
  public List<ResponseTimeFilterProperties> getProperties() {
    return properties;
  }

  public void setProperties(List<ResponseTimeFilterProperties> properties) {
    this.properties = properties;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ResponseTimeFilterLocation responseTimeFilterLocation = (ResponseTimeFilterLocation) o;
    return Objects.equals(this.id, responseTimeFilterLocation.id) &&
        Objects.equals(this.properties, responseTimeFilterLocation.properties);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, properties);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ResponseTimeFilterLocation {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    properties: ").append(toIndentedString(properties)).append("\n");
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

