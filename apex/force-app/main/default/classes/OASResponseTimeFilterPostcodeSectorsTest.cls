@isTest
private class OASResponseTimeFilterPostcodeSectorsTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = responseTimeFilterPostcodeSectors1;
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors3 = new OASResponseTimeFilterPostcodeSectors();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors4 = responseTimeFilterPostcodeSectors3;

        System.assert(responseTimeFilterPostcodeSectors1.equals(responseTimeFilterPostcodeSectors2));
        System.assert(responseTimeFilterPostcodeSectors2.equals(responseTimeFilterPostcodeSectors1));
        System.assert(responseTimeFilterPostcodeSectors1.equals(responseTimeFilterPostcodeSectors1));
        System.assert(responseTimeFilterPostcodeSectors3.equals(responseTimeFilterPostcodeSectors4));
        System.assert(responseTimeFilterPostcodeSectors4.equals(responseTimeFilterPostcodeSectors3));
        System.assert(responseTimeFilterPostcodeSectors3.equals(responseTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors3 = new OASResponseTimeFilterPostcodeSectors();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors4 = new OASResponseTimeFilterPostcodeSectors();

        System.assert(responseTimeFilterPostcodeSectors1.equals(responseTimeFilterPostcodeSectors2));
        System.assert(responseTimeFilterPostcodeSectors2.equals(responseTimeFilterPostcodeSectors1));
        System.assert(responseTimeFilterPostcodeSectors3.equals(responseTimeFilterPostcodeSectors4));
        System.assert(responseTimeFilterPostcodeSectors4.equals(responseTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = new OASResponseTimeFilterPostcodeSectors();

        System.assertEquals(false, responseTimeFilterPostcodeSectors1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodeSectors2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = new OASResponseTimeFilterPostcodeSectors();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors3;

        System.assertEquals(false, responseTimeFilterPostcodeSectors1.equals(responseTimeFilterPostcodeSectors3));
        System.assertEquals(false, responseTimeFilterPostcodeSectors2.equals(responseTimeFilterPostcodeSectors3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = new OASResponseTimeFilterPostcodeSectors();

        System.assertEquals(responseTimeFilterPostcodeSectors1.hashCode(), responseTimeFilterPostcodeSectors1.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSectors2.hashCode(), responseTimeFilterPostcodeSectors2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors1 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors2 = OASResponseTimeFilterPostcodeSectors.getExample();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors3 = new OASResponseTimeFilterPostcodeSectors();
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors4 = new OASResponseTimeFilterPostcodeSectors();

        System.assert(responseTimeFilterPostcodeSectors1.equals(responseTimeFilterPostcodeSectors2));
        System.assert(responseTimeFilterPostcodeSectors3.equals(responseTimeFilterPostcodeSectors4));
        System.assertEquals(responseTimeFilterPostcodeSectors1.hashCode(), responseTimeFilterPostcodeSectors2.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSectors3.hashCode(), responseTimeFilterPostcodeSectors4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterPostcodeSectors responseTimeFilterPostcodeSectors = new OASResponseTimeFilterPostcodeSectors();
        System.assertEquals(new List<OASResponseTimeFilterPostcodeSectors>(), responseTimeFilterPostcodeSectors.results);
    }
}
