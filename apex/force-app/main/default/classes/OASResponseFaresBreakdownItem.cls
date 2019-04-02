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
 * OASResponseFaresBreakdownItem
 */
public class OASResponseFaresBreakdownItem implements OAS.MappedProperties {
    /**
     * Get modes
     * @return modes
     */
    public List<OASResponseTransportationMode> modes { get; set; }

    /**
     * Get routePartIds
     * @return routePartIds
     */
    public List<Integer> routePartIds { get; set; }

    /**
     * Get tickets
     * @return tickets
     */
    public List<OASResponseFareTicket> tickets { get; set; }

    private static final Map<String, String> propertyMappings = new Map<String, String>{
        'route_part_ids' => 'routePartIds'
    };

    public Map<String, String> getPropertyMappings() {
        return propertyMappings;
    }

    public OASResponseFaresBreakdownItem() {
        modes = new List<OASResponseTransportationMode>();
        routePartIds = new List<Integer>();
        tickets = new List<OASResponseFareTicket>();
    }

    public static OASResponseFaresBreakdownItem getExample() {
        OASResponseFaresBreakdownItem responseFaresBreakdownItem = new OASResponseFaresBreakdownItem();
          responseFaresBreakdownItem.modes = new List<OASResponseTransportationMode>{OASResponseTransportationMode.getExample()};
          responseFaresBreakdownItem.routePartIds = new List<Integer>{0};
          responseFaresBreakdownItem.tickets = new List<OASResponseFareTicket>{OASResponseFareTicket.getExample()};
        return responseFaresBreakdownItem;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseFaresBreakdownItem) {           
            OASResponseFaresBreakdownItem responseFaresBreakdownItem = (OASResponseFaresBreakdownItem) obj;
            return this.modes == responseFaresBreakdownItem.modes
                && this.routePartIds == responseFaresBreakdownItem.routePartIds
                && this.tickets == responseFaresBreakdownItem.tickets;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (modes == null ? 0 : System.hashCode(modes));
        hashCode = (17 * hashCode) + (routePartIds == null ? 0 : System.hashCode(routePartIds));
        hashCode = (17 * hashCode) + (tickets == null ? 0 : System.hashCode(tickets));
        return hashCode;
    }
}
