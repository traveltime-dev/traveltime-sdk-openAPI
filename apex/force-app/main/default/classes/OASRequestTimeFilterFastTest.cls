@isTest
private class OASRequestTimeFilterFastTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = requestTimeFilterFast1;
        OASRequestTimeFilterFast requestTimeFilterFast3 = new OASRequestTimeFilterFast();
        OASRequestTimeFilterFast requestTimeFilterFast4 = requestTimeFilterFast3;

        System.assert(requestTimeFilterFast1.equals(requestTimeFilterFast2));
        System.assert(requestTimeFilterFast2.equals(requestTimeFilterFast1));
        System.assert(requestTimeFilterFast1.equals(requestTimeFilterFast1));
        System.assert(requestTimeFilterFast3.equals(requestTimeFilterFast4));
        System.assert(requestTimeFilterFast4.equals(requestTimeFilterFast3));
        System.assert(requestTimeFilterFast3.equals(requestTimeFilterFast3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast3 = new OASRequestTimeFilterFast();
        OASRequestTimeFilterFast requestTimeFilterFast4 = new OASRequestTimeFilterFast();

        System.assert(requestTimeFilterFast1.equals(requestTimeFilterFast2));
        System.assert(requestTimeFilterFast2.equals(requestTimeFilterFast1));
        System.assert(requestTimeFilterFast3.equals(requestTimeFilterFast4));
        System.assert(requestTimeFilterFast4.equals(requestTimeFilterFast3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = new OASRequestTimeFilterFast();

        System.assertEquals(false, requestTimeFilterFast1.equals('foo'));
        System.assertEquals(false, requestTimeFilterFast2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = new OASRequestTimeFilterFast();
        OASRequestTimeFilterFast requestTimeFilterFast3;

        System.assertEquals(false, requestTimeFilterFast1.equals(requestTimeFilterFast3));
        System.assertEquals(false, requestTimeFilterFast2.equals(requestTimeFilterFast3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = new OASRequestTimeFilterFast();

        System.assertEquals(requestTimeFilterFast1.hashCode(), requestTimeFilterFast1.hashCode());
        System.assertEquals(requestTimeFilterFast2.hashCode(), requestTimeFilterFast2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterFast requestTimeFilterFast1 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast2 = OASRequestTimeFilterFast.getExample();
        OASRequestTimeFilterFast requestTimeFilterFast3 = new OASRequestTimeFilterFast();
        OASRequestTimeFilterFast requestTimeFilterFast4 = new OASRequestTimeFilterFast();

        System.assert(requestTimeFilterFast1.equals(requestTimeFilterFast2));
        System.assert(requestTimeFilterFast3.equals(requestTimeFilterFast4));
        System.assertEquals(requestTimeFilterFast1.hashCode(), requestTimeFilterFast2.hashCode());
        System.assertEquals(requestTimeFilterFast3.hashCode(), requestTimeFilterFast4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterFast requestTimeFilterFast = new OASRequestTimeFilterFast();
        Map<String, String> propertyMappings = requestTimeFilterFast.getPropertyMappings();
        System.assertEquals('arrivalSearches', propertyMappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterFast requestTimeFilterFast = new OASRequestTimeFilterFast();
        System.assertEquals(new List<OASRequestLocation>(), requestTimeFilterFast.locations);
        System.assertEquals(null, requestTimeFilterFast.arrivalSearches);
    }
}
