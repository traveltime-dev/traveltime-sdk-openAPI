package org.openapitools.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import javax.validation.constraints.*;
import javax.validation.Valid;

import io.swagger.annotations.ApiModelProperty;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlEnumValue;
import com.fasterxml.jackson.annotation.JsonProperty;

public class RequestLevelOfDetail  {
  
@XmlType(name="ScaleTypeEnum")
@XmlEnum(String.class)
public enum ScaleTypeEnum {

@XmlEnumValue("simple") SIMPLE(String.valueOf("simple"));


    private String value;

    ScaleTypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static ScaleTypeEnum fromValue(String value) {
        for (ScaleTypeEnum b : ScaleTypeEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(required = true, value = "")
  private ScaleTypeEnum scaleType;

@XmlType(name="LevelEnum")
@XmlEnum(String.class)
public enum LevelEnum {

@XmlEnumValue("lowest") LOWEST(String.valueOf("lowest")), @XmlEnumValue("low") LOW(String.valueOf("low")), @XmlEnumValue("medium") MEDIUM(String.valueOf("medium")), @XmlEnumValue("high") HIGH(String.valueOf("high")), @XmlEnumValue("highest") HIGHEST(String.valueOf("highest"));


    private String value;

    LevelEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    @JsonValue
    public String toString() {
        return String.valueOf(value);
    }

    @JsonCreator
    public static LevelEnum fromValue(String value) {
        for (LevelEnum b : LevelEnum.values()) {
            if (b.value.equals(value)) {
                return b;
            }
        }
        throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
}

  @ApiModelProperty(required = true, value = "")
  private LevelEnum level;
 /**
   * Get scaleType
   * @return scaleType
  **/
  @JsonProperty("scale_type")
  @NotNull
  public String getScaleType() {
    if (scaleType == null) {
      return null;
    }
    return scaleType.value();
  }

  public void setScaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
  }

  public RequestLevelOfDetail scaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
    return this;
  }

 /**
   * Get level
   * @return level
  **/
  @JsonProperty("level")
  @NotNull
  public String getLevel() {
    if (level == null) {
      return null;
    }
    return level.value();
  }

  public void setLevel(LevelEnum level) {
    this.level = level;
  }

  public RequestLevelOfDetail level(LevelEnum level) {
    this.level = level;
    return this;
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
  private static String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}

