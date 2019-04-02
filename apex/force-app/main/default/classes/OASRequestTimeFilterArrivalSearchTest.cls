@isTest
private class OASRequestTimeFilterArrivalSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = requestTimeFilterArrivalSearch1;
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch3 = new OASRequestTimeFilterArrivalSearch();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch4 = requestTimeFilterArrivalSearch3;

        System.assert(requestTimeFilterArrivalSearch1.equals(requestTimeFilterArrivalSearch2));
        System.assert(requestTimeFilterArrivalSearch2.equals(requestTimeFilterArrivalSearch1));
        System.assert(requestTimeFilterArrivalSearch1.equals(requestTimeFilterArrivalSearch1));
        System.assert(requestTimeFilterArrivalSearch3.equals(requestTimeFilterArrivalSearch4));
        System.assert(requestTimeFilterArrivalSearch4.equals(requestTimeFilterArrivalSearch3));
        System.assert(requestTimeFilterArrivalSearch3.equals(requestTimeFilterArrivalSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch3 = new OASRequestTimeFilterArrivalSearch();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch4 = new OASRequestTimeFilterArrivalSearch();

        System.assert(requestTimeFilterArrivalSearch1.equals(requestTimeFilterArrivalSearch2));
        System.assert(requestTimeFilterArrivalSearch2.equals(requestTimeFilterArrivalSearch1));
        System.assert(requestTimeFilterArrivalSearch3.equals(requestTimeFilterArrivalSearch4));
        System.assert(requestTimeFilterArrivalSearch4.equals(requestTimeFilterArrivalSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = new OASRequestTimeFilterArrivalSearch();

        System.assertEquals(false, requestTimeFilterArrivalSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterArrivalSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = new OASRequestTimeFilterArrivalSearch();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch3;

        System.assertEquals(false, requestTimeFilterArrivalSearch1.equals(requestTimeFilterArrivalSearch3));
        System.assertEquals(false, requestTimeFilterArrivalSearch2.equals(requestTimeFilterArrivalSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = new OASRequestTimeFilterArrivalSearch();

        System.assertEquals(requestTimeFilterArrivalSearch1.hashCode(), requestTimeFilterArrivalSearch1.hashCode());
        System.assertEquals(requestTimeFilterArrivalSearch2.hashCode(), requestTimeFilterArrivalSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch1 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch2 = OASRequestTimeFilterArrivalSearch.getExample();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch3 = new OASRequestTimeFilterArrivalSearch();
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch4 = new OASRequestTimeFilterArrivalSearch();

        System.assert(requestTimeFilterArrivalSearch1.equals(requestTimeFilterArrivalSearch2));
        System.assert(requestTimeFilterArrivalSearch3.equals(requestTimeFilterArrivalSearch4));
        System.assertEquals(requestTimeFilterArrivalSearch1.hashCode(), requestTimeFilterArrivalSearch2.hashCode());
        System.assertEquals(requestTimeFilterArrivalSearch3.hashCode(), requestTimeFilterArrivalSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch = new OASRequestTimeFilterArrivalSearch();
        Map<String, String> propertyMappings = requestTimeFilterArrivalSearch.getPropertyMappings();
        System.assertEquals('departureLocationIds', propertyMappings.get('departure_location_ids'));
        System.assertEquals('arrivalLocationId', propertyMappings.get('arrival_location_id'));
        System.assertEquals('travelTime', propertyMappings.get('travel_time'));
        System.assertEquals('arrivalTime', propertyMappings.get('arrival_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterArrivalSearch requestTimeFilterArrivalSearch = new OASRequestTimeFilterArrivalSearch();
        System.assertEquals(new List<String>(), requestTimeFilterArrivalSearch.departureLocationIds);
        System.assertEquals(new List<OASRequestTimeFilterProperty>(), requestTimeFilterArrivalSearch.properties);
        System.assertEquals(null, requestTimeFilterArrivalSearch.id);
        System.assertEquals(null, requestTimeFilterArrivalSearch.arrivalLocationId);
        System.assertEquals(null, requestTimeFilterArrivalSearch.transportation);
        System.assertEquals(null, requestTimeFilterArrivalSearch.travelTime);
        System.assertEquals(null, requestTimeFilterArrivalSearch.arrivalTime);
        System.assertEquals(null, requestTimeFilterArrivalSearch.range);
    }
}
