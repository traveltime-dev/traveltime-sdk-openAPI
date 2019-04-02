@isTest
private class OASRequestTimeFilterPostcodeSectorsDTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = requestTimeFilterPostcodeSectorsDepartureSearch1;
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch3 = new OASRequestTimeFilterPostcodeSectorsD();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch4 = requestTimeFilterPostcodeSectorsDepartureSearch3;

        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch1.equals(requestTimeFilterPostcodeSectorsDepartureSearch2));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch2.equals(requestTimeFilterPostcodeSectorsDepartureSearch1));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch1.equals(requestTimeFilterPostcodeSectorsDepartureSearch1));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch3.equals(requestTimeFilterPostcodeSectorsDepartureSearch4));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch4.equals(requestTimeFilterPostcodeSectorsDepartureSearch3));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch3.equals(requestTimeFilterPostcodeSectorsDepartureSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch3 = new OASRequestTimeFilterPostcodeSectorsD();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch4 = new OASRequestTimeFilterPostcodeSectorsD();

        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch1.equals(requestTimeFilterPostcodeSectorsDepartureSearch2));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch2.equals(requestTimeFilterPostcodeSectorsDepartureSearch1));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch3.equals(requestTimeFilterPostcodeSectorsDepartureSearch4));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch4.equals(requestTimeFilterPostcodeSectorsDepartureSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = new OASRequestTimeFilterPostcodeSectorsD();

        System.assertEquals(false, requestTimeFilterPostcodeSectorsDepartureSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodeSectorsDepartureSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = new OASRequestTimeFilterPostcodeSectorsD();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch3;

        System.assertEquals(false, requestTimeFilterPostcodeSectorsDepartureSearch1.equals(requestTimeFilterPostcodeSectorsDepartureSearch3));
        System.assertEquals(false, requestTimeFilterPostcodeSectorsDepartureSearch2.equals(requestTimeFilterPostcodeSectorsDepartureSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = new OASRequestTimeFilterPostcodeSectorsD();

        System.assertEquals(requestTimeFilterPostcodeSectorsDepartureSearch1.hashCode(), requestTimeFilterPostcodeSectorsDepartureSearch1.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectorsDepartureSearch2.hashCode(), requestTimeFilterPostcodeSectorsDepartureSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch1 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch2 = OASRequestTimeFilterPostcodeSectorsD.getExample();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch3 = new OASRequestTimeFilterPostcodeSectorsD();
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch4 = new OASRequestTimeFilterPostcodeSectorsD();

        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch1.equals(requestTimeFilterPostcodeSectorsDepartureSearch2));
        System.assert(requestTimeFilterPostcodeSectorsDepartureSearch3.equals(requestTimeFilterPostcodeSectorsDepartureSearch4));
        System.assertEquals(requestTimeFilterPostcodeSectorsDepartureSearch1.hashCode(), requestTimeFilterPostcodeSectorsDepartureSearch2.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectorsDepartureSearch3.hashCode(), requestTimeFilterPostcodeSectorsDepartureSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch = new OASRequestTimeFilterPostcodeSectorsD();
        Map<String, String> propertyMappings = requestTimeFilterPostcodeSectorsDepartureSearch.getPropertyMappings();
        System.assertEquals('travelTime', propertyMappings.get('travel_time'));
        System.assertEquals('departureTime', propertyMappings.get('departure_time'));
        System.assertEquals('reachablePostcodesThreshold', propertyMappings.get('reachable_postcodes_threshold'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodeSectorsD requestTimeFilterPostcodeSectorsDepartureSearch = new OASRequestTimeFilterPostcodeSectorsD();
        System.assertEquals(new List<OASRequestTimeFilterPostcodeSectorsP>(), requestTimeFilterPostcodeSectorsDepartureSearch.properties);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.id);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.transportation);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.travelTime);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.departureTime);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.reachablePostcodesThreshold);
        System.assertEquals(null, requestTimeFilterPostcodeSectorsDepartureSearch.range);
    }
}
