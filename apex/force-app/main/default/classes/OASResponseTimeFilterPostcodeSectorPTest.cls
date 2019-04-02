@isTest
private class OASResponseTimeFilterPostcodeSectorPTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = responseTimeFilterPostcodeSectorProperties1;
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties3 = new OASResponseTimeFilterPostcodeSectorP();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties4 = responseTimeFilterPostcodeSectorProperties3;

        System.assert(responseTimeFilterPostcodeSectorProperties1.equals(responseTimeFilterPostcodeSectorProperties2));
        System.assert(responseTimeFilterPostcodeSectorProperties2.equals(responseTimeFilterPostcodeSectorProperties1));
        System.assert(responseTimeFilterPostcodeSectorProperties1.equals(responseTimeFilterPostcodeSectorProperties1));
        System.assert(responseTimeFilterPostcodeSectorProperties3.equals(responseTimeFilterPostcodeSectorProperties4));
        System.assert(responseTimeFilterPostcodeSectorProperties4.equals(responseTimeFilterPostcodeSectorProperties3));
        System.assert(responseTimeFilterPostcodeSectorProperties3.equals(responseTimeFilterPostcodeSectorProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties3 = new OASResponseTimeFilterPostcodeSectorP();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties4 = new OASResponseTimeFilterPostcodeSectorP();

        System.assert(responseTimeFilterPostcodeSectorProperties1.equals(responseTimeFilterPostcodeSectorProperties2));
        System.assert(responseTimeFilterPostcodeSectorProperties2.equals(responseTimeFilterPostcodeSectorProperties1));
        System.assert(responseTimeFilterPostcodeSectorProperties3.equals(responseTimeFilterPostcodeSectorProperties4));
        System.assert(responseTimeFilterPostcodeSectorProperties4.equals(responseTimeFilterPostcodeSectorProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = new OASResponseTimeFilterPostcodeSectorP();

        System.assertEquals(false, responseTimeFilterPostcodeSectorProperties1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodeSectorProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = new OASResponseTimeFilterPostcodeSectorP();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties3;

        System.assertEquals(false, responseTimeFilterPostcodeSectorProperties1.equals(responseTimeFilterPostcodeSectorProperties3));
        System.assertEquals(false, responseTimeFilterPostcodeSectorProperties2.equals(responseTimeFilterPostcodeSectorProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = new OASResponseTimeFilterPostcodeSectorP();

        System.assertEquals(responseTimeFilterPostcodeSectorProperties1.hashCode(), responseTimeFilterPostcodeSectorProperties1.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSectorProperties2.hashCode(), responseTimeFilterPostcodeSectorProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties1 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties2 = OASResponseTimeFilterPostcodeSectorP.getExample();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties3 = new OASResponseTimeFilterPostcodeSectorP();
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties4 = new OASResponseTimeFilterPostcodeSectorP();

        System.assert(responseTimeFilterPostcodeSectorProperties1.equals(responseTimeFilterPostcodeSectorProperties2));
        System.assert(responseTimeFilterPostcodeSectorProperties3.equals(responseTimeFilterPostcodeSectorProperties4));
        System.assertEquals(responseTimeFilterPostcodeSectorProperties1.hashCode(), responseTimeFilterPostcodeSectorProperties2.hashCode());
        System.assertEquals(responseTimeFilterPostcodeSectorProperties3.hashCode(), responseTimeFilterPostcodeSectorProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterPostcodeSectorP responseTimeFilterPostcodeSectorProperties = new OASResponseTimeFilterPostcodeSectorP();
        Map<String, String> propertyMappings = responseTimeFilterPostcodeSectorProperties.getPropertyMappings();
        System.assertEquals('travelTimeReachable', propertyMappings.get('travel_time_reachable'));
        System.assertEquals('travelTimeAll', propertyMappings.get('travel_time_all'));
    }
}
