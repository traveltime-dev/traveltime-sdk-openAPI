@isTest
private class OASResponseRoutePartTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = responseRoutePart1;
        OASResponseRoutePart responseRoutePart3 = new OASResponseRoutePart();
        OASResponseRoutePart responseRoutePart4 = responseRoutePart3;

        System.assert(responseRoutePart1.equals(responseRoutePart2));
        System.assert(responseRoutePart2.equals(responseRoutePart1));
        System.assert(responseRoutePart1.equals(responseRoutePart1));
        System.assert(responseRoutePart3.equals(responseRoutePart4));
        System.assert(responseRoutePart4.equals(responseRoutePart3));
        System.assert(responseRoutePart3.equals(responseRoutePart3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart3 = new OASResponseRoutePart();
        OASResponseRoutePart responseRoutePart4 = new OASResponseRoutePart();

        System.assert(responseRoutePart1.equals(responseRoutePart2));
        System.assert(responseRoutePart2.equals(responseRoutePart1));
        System.assert(responseRoutePart3.equals(responseRoutePart4));
        System.assert(responseRoutePart4.equals(responseRoutePart3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = new OASResponseRoutePart();

        System.assertEquals(false, responseRoutePart1.equals('foo'));
        System.assertEquals(false, responseRoutePart2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = new OASResponseRoutePart();
        OASResponseRoutePart responseRoutePart3;

        System.assertEquals(false, responseRoutePart1.equals(responseRoutePart3));
        System.assertEquals(false, responseRoutePart2.equals(responseRoutePart3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = new OASResponseRoutePart();

        System.assertEquals(responseRoutePart1.hashCode(), responseRoutePart1.hashCode());
        System.assertEquals(responseRoutePart2.hashCode(), responseRoutePart2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoutePart responseRoutePart1 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart2 = OASResponseRoutePart.getExample();
        OASResponseRoutePart responseRoutePart3 = new OASResponseRoutePart();
        OASResponseRoutePart responseRoutePart4 = new OASResponseRoutePart();

        System.assert(responseRoutePart1.equals(responseRoutePart2));
        System.assert(responseRoutePart3.equals(responseRoutePart4));
        System.assertEquals(responseRoutePart1.hashCode(), responseRoutePart2.hashCode());
        System.assertEquals(responseRoutePart3.hashCode(), responseRoutePart4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseRoutePart responseRoutePart = new OASResponseRoutePart();
        Map<String, String> x-property-mappings = responseRoutePart.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('departureStation', x-property-mappings.get('departure_station'));
        System.assertEquals('arrivalStation', x-property-mappings.get('arrival_station'));
        System.assertEquals('departsAt', x-property-mappings.get('departs_at'));
        System.assertEquals('arrivesAt', x-property-mappings.get('arrives_at'));
        System.assertEquals('numStops', x-property-mappings.get('num_stops'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseRoutePart responseRoutePart = new OASResponseRoutePart();
        System.assertEquals(new List<OASCoords>(), responseRoutePart.coords);
        System.assertEquals(null, responseRoutePart.id);
        System.assertEquals(null, responseRoutePart.type);
        System.assertEquals(null, responseRoutePart.mode);
        System.assertEquals(null, responseRoutePart.directions);
        System.assertEquals(null, responseRoutePart.distance);
        System.assertEquals(null, responseRoutePart.travelTime);
        System.assertEquals(null, responseRoutePart.direction);
        System.assertEquals(null, responseRoutePart.road);
        System.assertEquals(null, responseRoutePart.turn);
        System.assertEquals(null, responseRoutePart.line);
        System.assertEquals(null, responseRoutePart.departureStation);
        System.assertEquals(null, responseRoutePart.arrivalStation);
        System.assertEquals(null, responseRoutePart.departsAt);
        System.assertEquals(null, responseRoutePart.arrivesAt);
        System.assertEquals(null, responseRoutePart.numStops);
    }
}
