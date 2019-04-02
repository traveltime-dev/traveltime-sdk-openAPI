@isTest
private class OASResponseTimeMapTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = responseTimeMap1;
        OASResponseTimeMap responseTimeMap3 = new OASResponseTimeMap();
        OASResponseTimeMap responseTimeMap4 = responseTimeMap3;

        System.assert(responseTimeMap1.equals(responseTimeMap2));
        System.assert(responseTimeMap2.equals(responseTimeMap1));
        System.assert(responseTimeMap1.equals(responseTimeMap1));
        System.assert(responseTimeMap3.equals(responseTimeMap4));
        System.assert(responseTimeMap4.equals(responseTimeMap3));
        System.assert(responseTimeMap3.equals(responseTimeMap3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap3 = new OASResponseTimeMap();
        OASResponseTimeMap responseTimeMap4 = new OASResponseTimeMap();

        System.assert(responseTimeMap1.equals(responseTimeMap2));
        System.assert(responseTimeMap2.equals(responseTimeMap1));
        System.assert(responseTimeMap3.equals(responseTimeMap4));
        System.assert(responseTimeMap4.equals(responseTimeMap3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = new OASResponseTimeMap();

        System.assertEquals(false, responseTimeMap1.equals('foo'));
        System.assertEquals(false, responseTimeMap2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = new OASResponseTimeMap();
        OASResponseTimeMap responseTimeMap3;

        System.assertEquals(false, responseTimeMap1.equals(responseTimeMap3));
        System.assertEquals(false, responseTimeMap2.equals(responseTimeMap3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = new OASResponseTimeMap();

        System.assertEquals(responseTimeMap1.hashCode(), responseTimeMap1.hashCode());
        System.assertEquals(responseTimeMap2.hashCode(), responseTimeMap2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMap responseTimeMap1 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap2 = OASResponseTimeMap.getExample();
        OASResponseTimeMap responseTimeMap3 = new OASResponseTimeMap();
        OASResponseTimeMap responseTimeMap4 = new OASResponseTimeMap();

        System.assert(responseTimeMap1.equals(responseTimeMap2));
        System.assert(responseTimeMap3.equals(responseTimeMap4));
        System.assertEquals(responseTimeMap1.hashCode(), responseTimeMap2.hashCode());
        System.assertEquals(responseTimeMap3.hashCode(), responseTimeMap4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeMap responseTimeMap = new OASResponseTimeMap();
        System.assertEquals(new List<OASResponseTimeMapResult>(), responseTimeMap.results);
    }
}
