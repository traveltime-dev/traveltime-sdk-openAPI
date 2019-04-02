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
 * OASRequestRoutes
 */
public class OASRequestRoutes implements OAS.MappedProperties {
    /**
     * Get locations
     * @return locations
     */
    public List<OASRequestLocation> locations { get; set; }

    /**
     * Get departureSearches
     * @return departureSearches
     */
    public List<OASRequestRoutesDepartureSearch> departureSearches { get; set; }

    /**
     * Get arrivalSearches
     * @return arrivalSearches
     */
    public List<OASRequestRoutesArrivalSearch> arrivalSearches { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'departure_searches' => 'departureSearches',
        'arrival_searches' => 'arrivalSearches'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASRequestRoutes() {
        locations = new List<OASRequestLocation>();
        departureSearches = new List<OASRequestRoutesDepartureSearch>();
        arrivalSearches = new List<OASRequestRoutesArrivalSearch>();
    }

    public static OASRequestRoutes getExample() {
        OASRequestRoutes requestRoutes = new OASRequestRoutes();
          requestRoutes.locations = new List<OASRequestLocation>{OASRequestLocation.getExample()};
          requestRoutes.departureSearches = new List<OASRequestRoutesDepartureSearch>{OASRequestRoutesDepartureSearch.getExample()};
          requestRoutes.arrivalSearches = new List<OASRequestRoutesArrivalSearch>{OASRequestRoutesArrivalSearch.getExample()};
        return requestRoutes;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRequestRoutes) {           
            OASRequestRoutes requestRoutes = (OASRequestRoutes) obj;
            return this.locations == requestRoutes.locations
                && this.departureSearches == requestRoutes.departureSearches
                && this.arrivalSearches == requestRoutes.arrivalSearches;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (locations == null ? 0 : System.hashCode(locations));
        hashCode = (17 * hashCode) + (departureSearches == null ? 0 : System.hashCode(departureSearches));
        hashCode = (17 * hashCode) + (arrivalSearches == null ? 0 : System.hashCode(arrivalSearches));
        return hashCode;
    }
}
