@isTest
private class OASResponseTravelTimeStatisticsTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = responseTravelTimeStatistics1;
        OASResponseTravelTimeStatistics responseTravelTimeStatistics3 = new OASResponseTravelTimeStatistics();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics4 = responseTravelTimeStatistics3;

        System.assert(responseTravelTimeStatistics1.equals(responseTravelTimeStatistics2));
        System.assert(responseTravelTimeStatistics2.equals(responseTravelTimeStatistics1));
        System.assert(responseTravelTimeStatistics1.equals(responseTravelTimeStatistics1));
        System.assert(responseTravelTimeStatistics3.equals(responseTravelTimeStatistics4));
        System.assert(responseTravelTimeStatistics4.equals(responseTravelTimeStatistics3));
        System.assert(responseTravelTimeStatistics3.equals(responseTravelTimeStatistics3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics3 = new OASResponseTravelTimeStatistics();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics4 = new OASResponseTravelTimeStatistics();

        System.assert(responseTravelTimeStatistics1.equals(responseTravelTimeStatistics2));
        System.assert(responseTravelTimeStatistics2.equals(responseTravelTimeStatistics1));
        System.assert(responseTravelTimeStatistics3.equals(responseTravelTimeStatistics4));
        System.assert(responseTravelTimeStatistics4.equals(responseTravelTimeStatistics3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = new OASResponseTravelTimeStatistics();

        System.assertEquals(false, responseTravelTimeStatistics1.equals('foo'));
        System.assertEquals(false, responseTravelTimeStatistics2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = new OASResponseTravelTimeStatistics();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics3;

        System.assertEquals(false, responseTravelTimeStatistics1.equals(responseTravelTimeStatistics3));
        System.assertEquals(false, responseTravelTimeStatistics2.equals(responseTravelTimeStatistics3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = new OASResponseTravelTimeStatistics();

        System.assertEquals(responseTravelTimeStatistics1.hashCode(), responseTravelTimeStatistics1.hashCode());
        System.assertEquals(responseTravelTimeStatistics2.hashCode(), responseTravelTimeStatistics2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTravelTimeStatistics responseTravelTimeStatistics1 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics2 = OASResponseTravelTimeStatistics.getExample();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics3 = new OASResponseTravelTimeStatistics();
        OASResponseTravelTimeStatistics responseTravelTimeStatistics4 = new OASResponseTravelTimeStatistics();

        System.assert(responseTravelTimeStatistics1.equals(responseTravelTimeStatistics2));
        System.assert(responseTravelTimeStatistics3.equals(responseTravelTimeStatistics4));
        System.assertEquals(responseTravelTimeStatistics1.hashCode(), responseTravelTimeStatistics2.hashCode());
        System.assertEquals(responseTravelTimeStatistics3.hashCode(), responseTravelTimeStatistics4.hashCode());
    }
}
