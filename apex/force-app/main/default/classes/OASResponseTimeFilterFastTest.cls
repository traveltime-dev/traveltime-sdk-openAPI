@isTest
private class OASResponseTimeFilterFastTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = responseTimeFilterFast1;
        OASResponseTimeFilterFast responseTimeFilterFast3 = new OASResponseTimeFilterFast();
        OASResponseTimeFilterFast responseTimeFilterFast4 = responseTimeFilterFast3;

        System.assert(responseTimeFilterFast1.equals(responseTimeFilterFast2));
        System.assert(responseTimeFilterFast2.equals(responseTimeFilterFast1));
        System.assert(responseTimeFilterFast1.equals(responseTimeFilterFast1));
        System.assert(responseTimeFilterFast3.equals(responseTimeFilterFast4));
        System.assert(responseTimeFilterFast4.equals(responseTimeFilterFast3));
        System.assert(responseTimeFilterFast3.equals(responseTimeFilterFast3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast3 = new OASResponseTimeFilterFast();
        OASResponseTimeFilterFast responseTimeFilterFast4 = new OASResponseTimeFilterFast();

        System.assert(responseTimeFilterFast1.equals(responseTimeFilterFast2));
        System.assert(responseTimeFilterFast2.equals(responseTimeFilterFast1));
        System.assert(responseTimeFilterFast3.equals(responseTimeFilterFast4));
        System.assert(responseTimeFilterFast4.equals(responseTimeFilterFast3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = new OASResponseTimeFilterFast();

        System.assertEquals(false, responseTimeFilterFast1.equals('foo'));
        System.assertEquals(false, responseTimeFilterFast2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = new OASResponseTimeFilterFast();
        OASResponseTimeFilterFast responseTimeFilterFast3;

        System.assertEquals(false, responseTimeFilterFast1.equals(responseTimeFilterFast3));
        System.assertEquals(false, responseTimeFilterFast2.equals(responseTimeFilterFast3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = new OASResponseTimeFilterFast();

        System.assertEquals(responseTimeFilterFast1.hashCode(), responseTimeFilterFast1.hashCode());
        System.assertEquals(responseTimeFilterFast2.hashCode(), responseTimeFilterFast2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterFast responseTimeFilterFast1 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast2 = OASResponseTimeFilterFast.getExample();
        OASResponseTimeFilterFast responseTimeFilterFast3 = new OASResponseTimeFilterFast();
        OASResponseTimeFilterFast responseTimeFilterFast4 = new OASResponseTimeFilterFast();

        System.assert(responseTimeFilterFast1.equals(responseTimeFilterFast2));
        System.assert(responseTimeFilterFast3.equals(responseTimeFilterFast4));
        System.assertEquals(responseTimeFilterFast1.hashCode(), responseTimeFilterFast2.hashCode());
        System.assertEquals(responseTimeFilterFast3.hashCode(), responseTimeFilterFast4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterFast responseTimeFilterFast = new OASResponseTimeFilterFast();
        System.assertEquals(new List<OASResponseTimeFilterFastResult>(), responseTimeFilterFast.results);
    }
}
