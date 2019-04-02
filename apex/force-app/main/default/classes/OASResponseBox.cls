/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OAS-api/OAS-codegen.git
 * Do not edit the class manually.
 */

/**
 * OASResponseBox
 */
public class OASResponseBox implements OAS.MappedProperties {
    /**
     * Get minLat
     * @return minLat
     */
    public Double minLat { get; set; }

    /**
     * Get maxLat
     * @return maxLat
     */
    public Double maxLat { get; set; }

    /**
     * Get minLng
     * @return minLng
     */
    public Double minLng { get; set; }

    /**
     * Get maxLng
     * @return maxLng
     */
    public Double maxLng { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'min_lat' => 'minLat',
        'max_lat' => 'maxLat',
        'min_lng' => 'minLng',
        'max_lng' => 'maxLng'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASResponseBox getExample() {
        OASResponseBox responseBox = new OASResponseBox();
          responseBox.minLat = 1.3579;
          responseBox.maxLat = 1.3579;
          responseBox.minLng = 1.3579;
          responseBox.maxLng = 1.3579;
        return responseBox;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseBox) {           
            OASResponseBox responseBox = (OASResponseBox) obj;
            return this.minLat == responseBox.minLat
                && this.maxLat == responseBox.maxLat
                && this.minLng == responseBox.minLng
                && this.maxLng == responseBox.maxLng;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (minLat == null ? 0 : System.hashCode(minLat));
        hashCode = (17 * hashCode) + (maxLat == null ? 0 : System.hashCode(maxLat));
        hashCode = (17 * hashCode) + (minLng == null ? 0 : System.hashCode(minLng));
        hashCode = (17 * hashCode) + (maxLng == null ? 0 : System.hashCode(maxLng));
        return hashCode;
    }
}
