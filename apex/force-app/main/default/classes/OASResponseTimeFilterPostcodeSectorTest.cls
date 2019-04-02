@isTest
private class OASResponseTimeFilterPostcodeSectorTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = responseTimeFilterPostcodeSector1;
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector3 = new OASResponseTimeFilterPostcodeSector();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector4 = responseTimeFilterPostcodeSector3;

        System.assert(responseTimeFilterPostcodeSector1.equals(responseTimeFilterPostcodeSector2));
        System.assert(responseTimeFilterPostcodeSector2.equals(responseTimeFilterPostcodeSector1));
        System.assert(responseTimeFilterPostcodeSector1.equals(responseTimeFilterPostcodeSector1));
        System.assert(responseTimeFilterPostcodeSector3.equals(responseTimeFilterPostcodeSector4));
        System.assert(responseTimeFilterPostcodeSector4.equals(responseTimeFilterPostcodeSector3));
        System.assert(responseTimeFilterPostcodeSector3.equals(responseTimeFilterPostcodeSector3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector3 = new OASResponseTimeFilterPostcodeSector();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector4 = new OASResponseTimeFilterPostcodeSector();

        System.assert(responseTimeFilterPostcodeSector1.equals(responseTimeFilterPostcodeSector2));
        System.assert(responseTimeFilterPostcodeSector2.equals(responseTimeFilterPostcodeSector1));
        System.assert(responseTimeFilterPostcodeSector3.equals(responseTimeFilterPostcodeSector4));
        System.assert(responseTimeFilterPostcodeSector4.equals(responseTimeFilterPostcodeSector3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = new OASResponseTimeFilterPostcodeSector();

        System.assertEquals(false, responseTimeFilterPostcodeSector1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodeSector2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = new OASResponseTimeFilterPostcodeSector();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector3;

        System.assertEquals(false, responseTimeFilterPostcodeSector1.equals(responseTimeFilterPostcodeSector3));
        System.assertEquals(false, responseTimeFilterPostcodeSector2.equals(responseTimeFilterPostcodeSector3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = new OASResponseTimeFilterPostcodeSector();

        System.assertEquals(responseTimeFilterPostcodeSector1.hashCode(), responseTimeFilterPostcodeSector1.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSector2.hashCode(), responseTimeFilterPostcodeSector2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector1 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector2 = OASResponseTimeFilterPostcodeSector.getExample();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector3 = new OASResponseTimeFilterPostcodeSector();
        OASResponseTimeFilterPostcodeSector responseTimeFilterPostcodeSector4 = new OASResponseTimeFilterPostcodeSector();

        System.assert(responseTimeFilterPostcodeSector1.equals(responseTimeFilterPostcodeSector2));
        System.assert(responseTimeFilterPostcodeSector3.equals(responseTimeFilterPostcodeSector4));
        System.assertEquals(responseTimeFilterPostcodeSector1.hashCode(), responseTimeFilterPostcodeSector2.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSector3.hashCode(), responseTimeFilterPostcodeSector4.hashCode());
    }
}
