@isTest
private class OASResponseTimeMapWktTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = responseTimeMapWkt1;
        OASResponseTimeMapWkt responseTimeMapWkt3 = new OASResponseTimeMapWkt();
        OASResponseTimeMapWkt responseTimeMapWkt4 = responseTimeMapWkt3;

        System.assert(responseTimeMapWkt1.equals(responseTimeMapWkt2));
        System.assert(responseTimeMapWkt2.equals(responseTimeMapWkt1));
        System.assert(responseTimeMapWkt1.equals(responseTimeMapWkt1));
        System.assert(responseTimeMapWkt3.equals(responseTimeMapWkt4));
        System.assert(responseTimeMapWkt4.equals(responseTimeMapWkt3));
        System.assert(responseTimeMapWkt3.equals(responseTimeMapWkt3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt3 = new OASResponseTimeMapWkt();
        OASResponseTimeMapWkt responseTimeMapWkt4 = new OASResponseTimeMapWkt();

        System.assert(responseTimeMapWkt1.equals(responseTimeMapWkt2));
        System.assert(responseTimeMapWkt2.equals(responseTimeMapWkt1));
        System.assert(responseTimeMapWkt3.equals(responseTimeMapWkt4));
        System.assert(responseTimeMapWkt4.equals(responseTimeMapWkt3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = new OASResponseTimeMapWkt();

        System.assertEquals(false, responseTimeMapWkt1.equals('foo'));
        System.assertEquals(false, responseTimeMapWkt2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = new OASResponseTimeMapWkt();
        OASResponseTimeMapWkt responseTimeMapWkt3;

        System.assertEquals(false, responseTimeMapWkt1.equals(responseTimeMapWkt3));
        System.assertEquals(false, responseTimeMapWkt2.equals(responseTimeMapWkt3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = new OASResponseTimeMapWkt();

        System.assertEquals(responseTimeMapWkt1.hashCode(), responseTimeMapWkt1.hashCode());
        System.assertEquals(responseTimeMapWkt2.hashCode(), responseTimeMapWkt2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapWkt responseTimeMapWkt1 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt2 = OASResponseTimeMapWkt.getExample();
        OASResponseTimeMapWkt responseTimeMapWkt3 = new OASResponseTimeMapWkt();
        OASResponseTimeMapWkt responseTimeMapWkt4 = new OASResponseTimeMapWkt();

        System.assert(responseTimeMapWkt1.equals(responseTimeMapWkt2));
        System.assert(responseTimeMapWkt3.equals(responseTimeMapWkt4));
        System.assertEquals(responseTimeMapWkt1.hashCode(), responseTimeMapWkt2.hashCode());
        System.assertEquals(responseTimeMapWkt3.hashCode(), responseTimeMapWkt4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeMapWkt responseTimeMapWkt = new OASResponseTimeMapWkt();
        System.assertEquals(new List<OASResponseTimeMapWktResult>(), responseTimeMapWkt.results);
    }
}
