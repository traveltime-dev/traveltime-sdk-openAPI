@isTest
private class OASResponseMapInfoMapTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = responseMapInfoMap1;
        OASResponseMapInfoMap responseMapInfoMap3 = new OASResponseMapInfoMap();
        OASResponseMapInfoMap responseMapInfoMap4 = responseMapInfoMap3;

        System.assert(responseMapInfoMap1.equals(responseMapInfoMap2));
        System.assert(responseMapInfoMap2.equals(responseMapInfoMap1));
        System.assert(responseMapInfoMap1.equals(responseMapInfoMap1));
        System.assert(responseMapInfoMap3.equals(responseMapInfoMap4));
        System.assert(responseMapInfoMap4.equals(responseMapInfoMap3));
        System.assert(responseMapInfoMap3.equals(responseMapInfoMap3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap3 = new OASResponseMapInfoMap();
        OASResponseMapInfoMap responseMapInfoMap4 = new OASResponseMapInfoMap();

        System.assert(responseMapInfoMap1.equals(responseMapInfoMap2));
        System.assert(responseMapInfoMap2.equals(responseMapInfoMap1));
        System.assert(responseMapInfoMap3.equals(responseMapInfoMap4));
        System.assert(responseMapInfoMap4.equals(responseMapInfoMap3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = new OASResponseMapInfoMap();

        System.assertEquals(false, responseMapInfoMap1.equals('foo'));
        System.assertEquals(false, responseMapInfoMap2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = new OASResponseMapInfoMap();
        OASResponseMapInfoMap responseMapInfoMap3;

        System.assertEquals(false, responseMapInfoMap1.equals(responseMapInfoMap3));
        System.assertEquals(false, responseMapInfoMap2.equals(responseMapInfoMap3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = new OASResponseMapInfoMap();

        System.assertEquals(responseMapInfoMap1.hashCode(), responseMapInfoMap1.hashCode());
        System.assertEquals(responseMapInfoMap2.hashCode(), responseMapInfoMap2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseMapInfoMap responseMapInfoMap1 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap2 = OASResponseMapInfoMap.getExample();
        OASResponseMapInfoMap responseMapInfoMap3 = new OASResponseMapInfoMap();
        OASResponseMapInfoMap responseMapInfoMap4 = new OASResponseMapInfoMap();

        System.assert(responseMapInfoMap1.equals(responseMapInfoMap2));
        System.assert(responseMapInfoMap3.equals(responseMapInfoMap4));
        System.assertEquals(responseMapInfoMap1.hashCode(), responseMapInfoMap2.hashCode());
        System.assertEquals(responseMapInfoMap3.hashCode(), responseMapInfoMap4.hashCode());
    }
}
