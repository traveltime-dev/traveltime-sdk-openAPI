@isTest
private class OASRequestTimeMapTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = requestTimeMap1;
        OASRequestTimeMap requestTimeMap3 = new OASRequestTimeMap();
        OASRequestTimeMap requestTimeMap4 = requestTimeMap3;

        System.assert(requestTimeMap1.equals(requestTimeMap2));
        System.assert(requestTimeMap2.equals(requestTimeMap1));
        System.assert(requestTimeMap1.equals(requestTimeMap1));
        System.assert(requestTimeMap3.equals(requestTimeMap4));
        System.assert(requestTimeMap4.equals(requestTimeMap3));
        System.assert(requestTimeMap3.equals(requestTimeMap3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap3 = new OASRequestTimeMap();
        OASRequestTimeMap requestTimeMap4 = new OASRequestTimeMap();

        System.assert(requestTimeMap1.equals(requestTimeMap2));
        System.assert(requestTimeMap2.equals(requestTimeMap1));
        System.assert(requestTimeMap3.equals(requestTimeMap4));
        System.assert(requestTimeMap4.equals(requestTimeMap3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = new OASRequestTimeMap();

        System.assertEquals(false, requestTimeMap1.equals('foo'));
        System.assertEquals(false, requestTimeMap2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = new OASRequestTimeMap();
        OASRequestTimeMap requestTimeMap3;

        System.assertEquals(false, requestTimeMap1.equals(requestTimeMap3));
        System.assertEquals(false, requestTimeMap2.equals(requestTimeMap3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = new OASRequestTimeMap();

        System.assertEquals(requestTimeMap1.hashCode(), requestTimeMap1.hashCode());
        System.assertEquals(requestTimeMap2.hashCode(), requestTimeMap2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeMap requestTimeMap1 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap2 = OASRequestTimeMap.getExample();
        OASRequestTimeMap requestTimeMap3 = new OASRequestTimeMap();
        OASRequestTimeMap requestTimeMap4 = new OASRequestTimeMap();

        System.assert(requestTimeMap1.equals(requestTimeMap2));
        System.assert(requestTimeMap3.equals(requestTimeMap4));
        System.assertEquals(requestTimeMap1.hashCode(), requestTimeMap2.hashCode());
        System.assertEquals(requestTimeMap3.hashCode(), requestTimeMap4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeMap requestTimeMap = new OASRequestTimeMap();
        Map<String, String> x-property-mappings = requestTimeMap.getx-property-mappings();
        System.assertEquals('departureSearches', x-property-mappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', x-property-mappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeMap requestTimeMap = new OASRequestTimeMap();
        System.assertEquals(new List<OASRequestTimeMapDepartureSearch>(), requestTimeMap.departureSearches);
        System.assertEquals(new List<OASRequestTimeMapArrivalSearch>(), requestTimeMap.arrivalSearches);
        System.assertEquals(new List<OASRequestUnionOnIntersection>(), requestTimeMap.unions);
        System.assertEquals(new List<OASRequestUnionOnIntersection>(), requestTimeMap.intersections);
    }
}
