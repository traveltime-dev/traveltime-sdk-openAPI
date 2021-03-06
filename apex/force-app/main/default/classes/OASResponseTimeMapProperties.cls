/*
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OpenAPITools/openapi-generator
 * Do not edit the class manually.
 */

/**
 * OASResponseTimeMapProperties
 */
public class OASResponseTimeMapProperties implements OAS.MappedProperties {
    /**
     * Get isOnlyWalking
     * @return isOnlyWalking
     */
    public Boolean isOnlyWalking { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'is_only_walking' => 'isOnlyWalking'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public static OASResponseTimeMapProperties getExample() {
        OASResponseTimeMapProperties responseTimeMapProperties = new OASResponseTimeMapProperties();
          responseTimeMapProperties.isOnlyWalking = true;
        return responseTimeMapProperties;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseTimeMapProperties) {           
            OASResponseTimeMapProperties responseTimeMapProperties = (OASResponseTimeMapProperties) obj;
            return this.isOnlyWalking == responseTimeMapProperties.isOnlyWalking;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (isOnlyWalking == null ? 0 : System.hashCode(isOnlyWalking));
        return hashCode;
    }
}

