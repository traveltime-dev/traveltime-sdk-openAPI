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
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;


public class RequestLevelOfDetail  {
  
@XmlType(name="ScaleTypeEnum")
@XmlEnum(String.class)
public enum ScaleTypeEnum {

    @XmlEnumValue("simple") @JsonProperty("simple") SIMPLE(String.valueOf("simple"));

    private String value;

    ScaleTypeEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

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

    @XmlEnumValue("lowest") @JsonProperty("lowest") LOWEST(String.valueOf("lowest")), 
    @XmlEnumValue("low") @JsonProperty("low") LOW(String.valueOf("low")), 
    @XmlEnumValue("medium") @JsonProperty("medium") MEDIUM(String.valueOf("medium")), 
    @XmlEnumValue("high") @JsonProperty("high") HIGH(String.valueOf("high")), 
    @XmlEnumValue("highest") @JsonProperty("highest") HIGHEST(String.valueOf("highest"));

    private String value;

    LevelEnum (String v) {
        value = v;
    }

    public String value() {
        return value;
    }

    @Override
    public String toString() {
        return String.valueOf(value);
    }

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
  */
  @JsonProperty("scale_type")
  @NotNull
  public String getScaleType() {
    return scaleType == null ? null : scaleType.value();
  }

  /**
   * Sets the <code>scaleType</code> property.
   */
  public void setScaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
  }

  /**
   * Sets the <code>scaleType</code> property.
   */
  public RequestLevelOfDetail scaleType(ScaleTypeEnum scaleType) {
    this.scaleType = scaleType;
    return this;
  }

 /**
  * Get level
  * @return level
  */
  @JsonProperty("level")
  @NotNull
  public String getLevel() {
    return level == null ? null : level.value();
  }

  /**
   * Sets the <code>level</code> property.
   */
  public void setLevel(LevelEnum level) {
    this.level = level;
  }

  /**
   * Sets the <code>level</code> property.
   */
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

