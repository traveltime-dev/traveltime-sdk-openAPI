package org.openapitools.server.api.model;

import java.util.Objects;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class RequestLevelOfDetail   {
  


  public enum ScaleTypeEnum {
    SIMPLE("simple");

    private String value;

    ScaleTypeEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return value;
    }
  }

  private ScaleTypeEnum scaleType;


  public enum LevelEnum {
    LOWEST("lowest"),
    LOW("low"),
    MEDIUM("medium"),
    HIGH("high"),
    HIGHEST("highest");

    private String value;

    LevelEnum(String value) {
      this.value = value;
    }

    @Override
    @JsonValue
    public String toString() {
      return value;
    }
  }

  private LevelEnum level;

  public RequestLevelOfDetail () {

  }

  public RequestLevelOfDetail (ScaleTypeEnum scaleType, LevelEnum level) {
    this.scaleType = scaleType;
    this.level = level;
  }

    
  @JsonProperty("scale_type")
  public ScaleTypeEnum getScaleType() {
    return scaleType;
  }
  public void setScaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
  }

    
  @JsonProperty("level")
  public LevelEnum getLevel() {
    return level;
  }
  public void setLevel(LevelEnum level) {
    this.level = level;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RequestLevelOfDetail requestLevelOfDetail = (RequestLevelOfDetail) o;
    return Objects.equals(scaleType, requestLevelOfDetail.scaleType) &&
        Objects.equals(level, requestLevelOfDetail.level);
  }

  @Override
  public int hashCode() {
    return Objects.hash(scaleType, level);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RequestLevelOfDetail {\n");
    
    sb.append("    scaleType: ").append(toIndentedString(scaleType)).append("\n");
    sb.append("    level: ").append(toIndentedString(level)).append("\n");
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
