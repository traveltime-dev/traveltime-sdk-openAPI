@isTest
private class OASResponseTimeFilterPostcodesProperTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = responseTimeFilterPostcodesProperties1;
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties3 = new OASResponseTimeFilterPostcodesProper();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties4 = responseTimeFilterPostcodesProperties3;

        System.assert(responseTimeFilterPostcodesProperties1.equals(responseTimeFilterPostcodesProperties2));
        System.assert(responseTimeFilterPostcodesProperties2.equals(responseTimeFilterPostcodesProperties1));
        System.assert(responseTimeFilterPostcodesProperties1.equals(responseTimeFilterPostcodesProperties1));
        System.assert(responseTimeFilterPostcodesProperties3.equals(responseTimeFilterPostcodesProperties4));
        System.assert(responseTimeFilterPostcodesProperties4.equals(responseTimeFilterPostcodesProperties3));
        System.assert(responseTimeFilterPostcodesProperties3.equals(responseTimeFilterPostcodesProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties3 = new OASResponseTimeFilterPostcodesProper();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties4 = new OASResponseTimeFilterPostcodesProper();

        System.assert(responseTimeFilterPostcodesProperties1.equals(responseTimeFilterPostcodesProperties2));
        System.assert(responseTimeFilterPostcodesProperties2.equals(responseTimeFilterPostcodesProperties1));
        System.assert(responseTimeFilterPostcodesProperties3.equals(responseTimeFilterPostcodesProperties4));
        System.assert(responseTimeFilterPostcodesProperties4.equals(responseTimeFilterPostcodesProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = new OASResponseTimeFilterPostcodesProper();

        System.assertEquals(false, responseTimeFilterPostcodesProperties1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodesProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = new OASResponseTimeFilterPostcodesProper();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties3;

        System.assertEquals(false, responseTimeFilterPostcodesProperties1.equals(responseTimeFilterPostcodesProperties3));
        System.assertEquals(false, responseTimeFilterPostcodesProperties2.equals(responseTimeFilterPostcodesProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = new OASResponseTimeFilterPostcodesProper();

        System.assertEquals(responseTimeFilterPostcodesProperties1.hashCode(), responseTimeFilterPostcodesProperties1.hashCode());
        System.assertEquals(responseTimeFilterPostcodesProperties2.hashCode(), responseTimeFilterPostcodesProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties1 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties2 = OASResponseTimeFilterPostcodesProper.getExample();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties3 = new OASResponseTimeFilterPostcodesProper();
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties4 = new OASResponseTimeFilterPostcodesProper();

        System.assert(responseTimeFilterPostcodesProperties1.equals(responseTimeFilterPostcodesProperties2));
        System.assert(responseTimeFilterPostcodesProperties3.equals(responseTimeFilterPostcodesProperties4));
        System.assertEquals(responseTimeFilterPostcodesProperties1.hashCode(), responseTimeFilterPostcodesProperties2.hashCode());
        System.assertEquals(responseTimeFilterPostcodesProperties3.hashCode(), responseTimeFilterPostcodesProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterPostcodesProper responseTimeFilterPostcodesProperties = new OASResponseTimeFilterPostcodesProper();
        Map<String, String> x-property-mappings = responseTimeFilterPostcodesProperties.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
    }
}
