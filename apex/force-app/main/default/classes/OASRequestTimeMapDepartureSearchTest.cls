@isTest
private class OASRequestTimeMapDepartureSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = requestTimeMapDepartureSearch1;
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch3 = new OASRequestTimeMapDepartureSearch();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch4 = requestTimeMapDepartureSearch3;

        System.assert(requestTimeMapDepartureSearch1.equals(requestTimeMapDepartureSearch2));
        System.assert(requestTimeMapDepartureSearch2.equals(requestTimeMapDepartureSearch1));
        System.assert(requestTimeMapDepartureSearch1.equals(requestTimeMapDepartureSearch1));
        System.assert(requestTimeMapDepartureSearch3.equals(requestTimeMapDepartureSearch4));
        System.assert(requestTimeMapDepartureSearch4.equals(requestTimeMapDepartureSearch3));
        System.assert(requestTimeMapDepartureSearch3.equals(requestTimeMapDepartureSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch3 = new OASRequestTimeMapDepartureSearch();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch4 = new OASRequestTimeMapDepartureSearch();

        System.assert(requestTimeMapDepartureSearch1.equals(requestTimeMapDepartureSearch2));
        System.assert(requestTimeMapDepartureSearch2.equals(requestTimeMapDepartureSearch1));
        System.assert(requestTimeMapDepartureSearch3.equals(requestTimeMapDepartureSearch4));
        System.assert(requestTimeMapDepartureSearch4.equals(requestTimeMapDepartureSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = new OASRequestTimeMapDepartureSearch();

        System.assertEquals(false, requestTimeMapDepartureSearch1.equals('foo'));
        System.assertEquals(false, requestTimeMapDepartureSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = new OASRequestTimeMapDepartureSearch();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch3;

        System.assertEquals(false, requestTimeMapDepartureSearch1.equals(requestTimeMapDepartureSearch3));
        System.assertEquals(false, requestTimeMapDepartureSearch2.equals(requestTimeMapDepartureSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = new OASRequestTimeMapDepartureSearch();

        System.assertEquals(requestTimeMapDepartureSearch1.hashCode(), requestTimeMapDepartureSearch1.hashCode());
        System.assertEquals(requestTimeMapDepartureSearch2.hashCode(), requestTimeMapDepartureSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch1 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch2 = OASRequestTimeMapDepartureSearch.getExample();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch3 = new OASRequestTimeMapDepartureSearch();
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch4 = new OASRequestTimeMapDepartureSearch();

        System.assert(requestTimeMapDepartureSearch1.equals(requestTimeMapDepartureSearch2));
        System.assert(requestTimeMapDepartureSearch3.equals(requestTimeMapDepartureSearch4));
        System.assertEquals(requestTimeMapDepartureSearch1.hashCode(), requestTimeMapDepartureSearch2.hashCode());
        System.assertEquals(requestTimeMapDepartureSearch3.hashCode(), requestTimeMapDepartureSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch = new OASRequestTimeMapDepartureSearch();
        Map<String, String> propertyMappings = requestTimeMapDepartureSearch.getPropertyMappings();
        System.assertEquals('travelTime', propertyMappings.get('travel_time'));
        System.assertEquals('departureTime', propertyMappings.get('departure_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeMapDepartureSearch requestTimeMapDepartureSearch = new OASRequestTimeMapDepartureSearch();
        System.assertEquals(new List<OASRequestTimeMapProperty>(), requestTimeMapDepartureSearch.properties);
        System.assertEquals(null, requestTimeMapDepartureSearch.id);
        System.assertEquals(null, requestTimeMapDepartureSearch.coords);
        System.assertEquals(null, requestTimeMapDepartureSearch.transportation);
        System.assertEquals(null, requestTimeMapDepartureSearch.travelTime);
        System.assertEquals(null, requestTimeMapDepartureSearch.departureTime);
        System.assertEquals(null, requestTimeMapDepartureSearch.range);
    }
}
