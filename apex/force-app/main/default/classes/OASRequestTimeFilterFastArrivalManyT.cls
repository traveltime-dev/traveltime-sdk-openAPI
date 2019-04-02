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
 * OASRequestTimeFilterFastArrivalManyT
 */
public class OASRequestTimeFilterFastArrivalManyT implements OAS.MappedProperties {
    /**
     * Get id
     * @return id
     */
    public String id { get; set; }

    /**
     * Get arrivalLocationId
     * @return arrivalLocationId
     */
    public String arrivalLocationId { get; set; }

    /**
     * Get departureLocationIds
     * @return departureLocationIds
     */
    public List<String> departureLocationIds { get; set; }

    /**
     * Get transportation
     * @return transportation
     */
    public OASRequestTransportationFast transportation { get; set; }

    /**
     * Get travelTime
     * minimum: 60
     * maximum: 14400
     * @return travelTime
     */
    public Integer travelTime { get; set; }

    /**
     * Get arrivalTimePeriod
     * @return arrivalTimePeriod
     */
    public OASRequestArrivalTimePeriod arrivalTimePeriod { get; set; }

    /**
     * Get properties
     * @return properties
     */
    public List<OASRequestTimeFilterFastProperty> properties { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'arrival_location_id' => 'arrivalLocationId',
        'departure_location_ids' => 'departureLocationIds',
        'travel_time' => 'travelTime',
        'arrival_time_period' => 'arrivalTimePeriod'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASRequestTimeFilterFastArrivalManyT() {
        departureLocationIds = new List<String>();
        properties = new List<OASRequestTimeFilterFastProperty>();
    }

    public static OASRequestTimeFilterFastArrivalManyT getExample() {
        OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch = new OASRequestTimeFilterFastArrivalManyT();
          requestTimeFilterFastArrivalManyToOneSearch.id = '';
          requestTimeFilterFastArrivalManyToOneSearch.arrivalLocationId = '';
          requestTimeFilterFastArrivalManyToOneSearch.departureLocationIds = new List<String>{''};
          requestTimeFilterFastArrivalManyToOneSearch.transportation = OASRequestTransportationFast.getExample();
          requestTimeFilterFastArrivalManyToOneSearch.travelTime = 0;
          requestTimeFilterFastArrivalManyToOneSearch.arrivalTimePeriod = OASRequestArrivalTimePeriod.getExample();
          requestTimeFilterFastArrivalManyToOneSearch.properties = new List<OASRequestTimeFilterFastProperty>{OASRequestTimeFilterFastProperty.getExample()};
        return requestTimeFilterFastArrivalManyToOneSearch;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASRequestTimeFilterFastArrivalManyT) {           
            OASRequestTimeFilterFastArrivalManyT requestTimeFilterFastArrivalManyToOneSearch = (OASRequestTimeFilterFastArrivalManyT) obj;
            return this.id == requestTimeFilterFastArrivalManyToOneSearch.id
                && this.arrivalLocationId == requestTimeFilterFastArrivalManyToOneSearch.arrivalLocationId
                && this.departureLocationIds == requestTimeFilterFastArrivalManyToOneSearch.departureLocationIds
                && this.transportation == requestTimeFilterFastArrivalManyToOneSearch.transportation
                && this.travelTime == requestTimeFilterFastArrivalManyToOneSearch.travelTime
                && this.arrivalTimePeriod == requestTimeFilterFastArrivalManyToOneSearch.arrivalTimePeriod
                && this.properties == requestTimeFilterFastArrivalManyToOneSearch.properties;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (id == null ? 0 : System.hashCode(id));
        hashCode = (17 * hashCode) + (arrivalLocationId == null ? 0 : System.hashCode(arrivalLocationId));
        hashCode = (17 * hashCode) + (departureLocationIds == null ? 0 : System.hashCode(departureLocationIds));
        hashCode = (17 * hashCode) + (transportation == null ? 0 : System.hashCode(transportation));
        hashCode = (17 * hashCode) + (travelTime == null ? 0 : System.hashCode(travelTime));
        hashCode = (17 * hashCode) + (arrivalTimePeriod == null ? 0 : System.hashCode(arrivalTimePeriod));
        hashCode = (17 * hashCode) + (properties == null ? 0 : System.hashCode(properties));
        return hashCode;
    }
}
