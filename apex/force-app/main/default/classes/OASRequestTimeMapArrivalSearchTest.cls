@isTest
private class OASRequestTimeMapArrivalSearchTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = requestTimeMapArrivalSearch1;
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch3 = new OASRequestTimeMapArrivalSearch();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch4 = requestTimeMapArrivalSearch3;

        System.assert(requestTimeMapArrivalSearch1.equals(requestTimeMapArrivalSearch2));
        System.assert(requestTimeMapArrivalSearch2.equals(requestTimeMapArrivalSearch1));
        System.assert(requestTimeMapArrivalSearch1.equals(requestTimeMapArrivalSearch1));
        System.assert(requestTimeMapArrivalSearch3.equals(requestTimeMapArrivalSearch4));
        System.assert(requestTimeMapArrivalSearch4.equals(requestTimeMapArrivalSearch3));
        System.assert(requestTimeMapArrivalSearch3.equals(requestTimeMapArrivalSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch3 = new OASRequestTimeMapArrivalSearch();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch4 = new OASRequestTimeMapArrivalSearch();

        System.assert(requestTimeMapArrivalSearch1.equals(requestTimeMapArrivalSearch2));
        System.assert(requestTimeMapArrivalSearch2.equals(requestTimeMapArrivalSearch1));
        System.assert(requestTimeMapArrivalSearch3.equals(requestTimeMapArrivalSearch4));
        System.assert(requestTimeMapArrivalSearch4.equals(requestTimeMapArrivalSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = new OASRequestTimeMapArrivalSearch();

        System.assertEquals(false, requestTimeMapArrivalSearch1.equals('foo'));
        System.assertEquals(false, requestTimeMapArrivalSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = new OASRequestTimeMapArrivalSearch();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch3;

        System.assertEquals(false, requestTimeMapArrivalSearch1.equals(requestTimeMapArrivalSearch3));
        System.assertEquals(false, requestTimeMapArrivalSearch2.equals(requestTimeMapArrivalSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = new OASRequestTimeMapArrivalSearch();

        System.assertEquals(requestTimeMapArrivalSearch1.hashCode(), requestTimeMapArrivalSearch1.hashCode());
        System.assertEquals(requestTimeMapArrivalSearch2.hashCode(), requestTimeMapArrivalSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch1 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch2 = OASRequestTimeMapArrivalSearch.getExample();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch3 = new OASRequestTimeMapArrivalSearch();
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch4 = new OASRequestTimeMapArrivalSearch();

        System.assert(requestTimeMapArrivalSearch1.equals(requestTimeMapArrivalSearch2));
        System.assert(requestTimeMapArrivalSearch3.equals(requestTimeMapArrivalSearch4));
        System.assertEquals(requestTimeMapArrivalSearch1.hashCode(), requestTimeMapArrivalSearch2.hashCode());
        System.assertEquals(requestTimeMapArrivalSearch3.hashCode(), requestTimeMapArrivalSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch = new OASRequestTimeMapArrivalSearch();
        Map<String, String> x-property-mappings = requestTimeMapArrivalSearch.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('arrivalTime', x-property-mappings.get('arrival_time'));
        System.assertEquals('levelOfDetail', x-property-mappings.get('level_of_detail'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeMapArrivalSearch requestTimeMapArrivalSearch = new OASRequestTimeMapArrivalSearch();
        System.assertEquals(new List<OASRequestTimeMapProperty>(), requestTimeMapArrivalSearch.properties);
        System.assertEquals(null, requestTimeMapArrivalSearch.id);
        System.assertEquals(null, requestTimeMapArrivalSearch.coords);
        System.assertEquals(null, requestTimeMapArrivalSearch.transportation);
        System.assertEquals(null, requestTimeMapArrivalSearch.travelTime);
        System.assertEquals(null, requestTimeMapArrivalSearch.arrivalTime);
        System.assertEquals(null, requestTimeMapArrivalSearch.range);
        System.assertEquals(null, requestTimeMapArrivalSearch.levelOfDetail);
    }
}
