@isTest
private class OASRequestTimeFilterPostcodeSectorsTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = requestTimeFilterPostcodeSectors1;
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors3 = new OASRequestTimeFilterPostcodeSectors();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors4 = requestTimeFilterPostcodeSectors3;

        System.assert(requestTimeFilterPostcodeSectors1.equals(requestTimeFilterPostcodeSectors2));
        System.assert(requestTimeFilterPostcodeSectors2.equals(requestTimeFilterPostcodeSectors1));
        System.assert(requestTimeFilterPostcodeSectors1.equals(requestTimeFilterPostcodeSectors1));
        System.assert(requestTimeFilterPostcodeSectors3.equals(requestTimeFilterPostcodeSectors4));
        System.assert(requestTimeFilterPostcodeSectors4.equals(requestTimeFilterPostcodeSectors3));
        System.assert(requestTimeFilterPostcodeSectors3.equals(requestTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors3 = new OASRequestTimeFilterPostcodeSectors();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors4 = new OASRequestTimeFilterPostcodeSectors();

        System.assert(requestTimeFilterPostcodeSectors1.equals(requestTimeFilterPostcodeSectors2));
        System.assert(requestTimeFilterPostcodeSectors2.equals(requestTimeFilterPostcodeSectors1));
        System.assert(requestTimeFilterPostcodeSectors3.equals(requestTimeFilterPostcodeSectors4));
        System.assert(requestTimeFilterPostcodeSectors4.equals(requestTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = new OASRequestTimeFilterPostcodeSectors();

        System.assertEquals(false, requestTimeFilterPostcodeSectors1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodeSectors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = new OASRequestTimeFilterPostcodeSectors();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors3;

        System.assertEquals(false, requestTimeFilterPostcodeSectors1.equals(requestTimeFilterPostcodeSectors3));
        System.assertEquals(false, requestTimeFilterPostcodeSectors2.equals(requestTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = new OASRequestTimeFilterPostcodeSectors();

        System.assertEquals(requestTimeFilterPostcodeSectors1.hashCode(), requestTimeFilterPostcodeSectors1.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectors2.hashCode(), requestTimeFilterPostcodeSectors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors1 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors2 = OASRequestTimeFilterPostcodeSectors.getExample();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors3 = new OASRequestTimeFilterPostcodeSectors();
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors4 = new OASRequestTimeFilterPostcodeSectors();

        System.assert(requestTimeFilterPostcodeSectors1.equals(requestTimeFilterPostcodeSectors2));
        System.assert(requestTimeFilterPostcodeSectors3.equals(requestTimeFilterPostcodeSectors4));
        System.assertEquals(requestTimeFilterPostcodeSectors1.hashCode(), requestTimeFilterPostcodeSectors2.hashCode());
        System.assertEquals(requestTimeFilterPostcodeSectors3.hashCode(), requestTimeFilterPostcodeSectors4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = new OASRequestTimeFilterPostcodeSectors();
        Map<String, String> x-property-mappings = requestTimeFilterPostcodeSectors.getx-property-mappings();
        System.assertEquals('departureSearches', x-property-mappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', x-property-mappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodeSectors requestTimeFilterPostcodeSectors = new OASRequestTimeFilterPostcodeSectors();
        System.assertEquals(new List<OASRequestTimeFilterPostcodeSectorsD>(), requestTimeFilterPostcodeSectors.departureSearches);
        System.assertEquals(new List<OASRequestTimeFilterPostcodeSectorsA>(), requestTimeFilterPostcodeSectors.arrivalSearches);
    }
}
