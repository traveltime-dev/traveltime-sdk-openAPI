@isTest
private class OASResponseMapInfoTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = responseMapInfo1;
        OASResponseMapInfo responseMapInfo3 = new OASResponseMapInfo();
        OASResponseMapInfo responseMapInfo4 = responseMapInfo3;

        System.assert(responseMapInfo1.equals(responseMapInfo2));
        System.assert(responseMapInfo2.equals(responseMapInfo1));
        System.assert(responseMapInfo1.equals(responseMapInfo1));
        System.assert(responseMapInfo3.equals(responseMapInfo4));
        System.assert(responseMapInfo4.equals(responseMapInfo3));
        System.assert(responseMapInfo3.equals(responseMapInfo3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo3 = new OASResponseMapInfo();
        OASResponseMapInfo responseMapInfo4 = new OASResponseMapInfo();

        System.assert(responseMapInfo1.equals(responseMapInfo2));
        System.assert(responseMapInfo2.equals(responseMapInfo1));
        System.assert(responseMapInfo3.equals(responseMapInfo4));
        System.assert(responseMapInfo4.equals(responseMapInfo3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = new OASResponseMapInfo();

        System.assertEquals(false, responseMapInfo1.equals('foo'));
        System.assertEquals(false, responseMapInfo2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = new OASResponseMapInfo();
        OASResponseMapInfo responseMapInfo3;

        System.assertEquals(false, responseMapInfo1.equals(responseMapInfo3));
        System.assertEquals(false, responseMapInfo2.equals(responseMapInfo3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = new OASResponseMapInfo();

        System.assertEquals(responseMapInfo1.hashCode(), responseMapInfo1.hashCode());
        System.assertEquals(responseMapInfo2.hashCode(), responseMapInfo2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseMapInfo responseMapInfo1 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo2 = OASResponseMapInfo.getExample();
        OASResponseMapInfo responseMapInfo3 = new OASResponseMapInfo();
        OASResponseMapInfo responseMapInfo4 = new OASResponseMapInfo();

        System.assert(responseMapInfo1.equals(responseMapInfo2));
        System.assert(responseMapInfo3.equals(responseMapInfo4));
        System.assertEquals(responseMapInfo1.hashCode(), responseMapInfo2.hashCode());
        System.assertEquals(responseMapInfo3.hashCode(), responseMapInfo4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseMapInfo responseMapInfo = new OASResponseMapInfo();
        System.assertEquals(new List<OASResponseMapInfoMap>(), responseMapInfo.maps);
    }
}
