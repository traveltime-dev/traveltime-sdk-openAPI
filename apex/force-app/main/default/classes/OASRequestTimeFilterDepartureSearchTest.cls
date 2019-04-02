@isTest
private class OASRequestTimeFilterDepartureSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = requestTimeFilterDepartureSearch1;
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch3 = new OASRequestTimeFilterDepartureSearch();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch4 = requestTimeFilterDepartureSearch3;

        System.assert(requestTimeFilterDepartureSearch1.equals(requestTimeFilterDepartureSearch2));
        System.assert(requestTimeFilterDepartureSearch2.equals(requestTimeFilterDepartureSearch1));
        System.assert(requestTimeFilterDepartureSearch1.equals(requestTimeFilterDepartureSearch1));
        System.assert(requestTimeFilterDepartureSearch3.equals(requestTimeFilterDepartureSearch4));
        System.assert(requestTimeFilterDepartureSearch4.equals(requestTimeFilterDepartureSearch3));
        System.assert(requestTimeFilterDepartureSearch3.equals(requestTimeFilterDepartureSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch3 = new OASRequestTimeFilterDepartureSearch();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch4 = new OASRequestTimeFilterDepartureSearch();

        System.assert(requestTimeFilterDepartureSearch1.equals(requestTimeFilterDepartureSearch2));
        System.assert(requestTimeFilterDepartureSearch2.equals(requestTimeFilterDepartureSearch1));
        System.assert(requestTimeFilterDepartureSearch3.equals(requestTimeFilterDepartureSearch4));
        System.assert(requestTimeFilterDepartureSearch4.equals(requestTimeFilterDepartureSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = new OASRequestTimeFilterDepartureSearch();

        System.assertEquals(false, requestTimeFilterDepartureSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterDepartureSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = new OASRequestTimeFilterDepartureSearch();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch3;

        System.assertEquals(false, requestTimeFilterDepartureSearch1.equals(requestTimeFilterDepartureSearch3));
        System.assertEquals(false, requestTimeFilterDepartureSearch2.equals(requestTimeFilterDepartureSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = new OASRequestTimeFilterDepartureSearch();

        System.assertEquals(requestTimeFilterDepartureSearch1.hashCode(), requestTimeFilterDepartureSearch1.hashCode());
        System.assertEquals(requestTimeFilterDepartureSearch2.hashCode(), requestTimeFilterDepartureSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch1 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch2 = OASRequestTimeFilterDepartureSearch.getExample();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch3 = new OASRequestTimeFilterDepartureSearch();
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch4 = new OASRequestTimeFilterDepartureSearch();

        System.assert(requestTimeFilterDepartureSearch1.equals(requestTimeFilterDepartureSearch2));
        System.assert(requestTimeFilterDepartureSearch3.equals(requestTimeFilterDepartureSearch4));
        System.assertEquals(requestTimeFilterDepartureSearch1.hashCode(), requestTimeFilterDepartureSearch2.hashCode());
        System.assertEquals(requestTimeFilterDepartureSearch3.hashCode(), requestTimeFilterDepartureSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch = new OASRequestTimeFilterDepartureSearch();
        Map<String, String> propertyMappings = requestTimeFilterDepartureSearch.getPropertyMappings();
        System.assertEquals('departureLocationId', propertyMappings.get('departure_location_id'));
        System.assertEquals('arrivalLocationIds', propertyMappings.get('arrival_location_ids'));
        System.assertEquals('travelTime', propertyMappings.get('travel_time'));
        System.assertEquals('departureTime', propertyMappings.get('departure_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterDepartureSearch requestTimeFilterDepartureSearch = new OASRequestTimeFilterDepartureSearch();
        System.assertEquals(new List<String>(), requestTimeFilterDepartureSearch.arrivalLocationIds);
        System.assertEquals(new List<OASRequestTimeFilterProperty>(), requestTimeFilterDepartureSearch.properties);
        System.assertEquals(null, requestTimeFilterDepartureSearch.id);
        System.assertEquals(null, requestTimeFilterDepartureSearch.departureLocationId);
        System.assertEquals(null, requestTimeFilterDepartureSearch.transportation);
        System.assertEquals(null, requestTimeFilterDepartureSearch.travelTime);
        System.assertEquals(null, requestTimeFilterDepartureSearch.departureTime);
        System.assertEquals(null, requestTimeFilterDepartureSearch.range);
    }
}
