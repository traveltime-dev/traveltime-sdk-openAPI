@isTest
private class OASResponseDistanceBreakdownItemTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = responseDistanceBreakdownItem1;
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem3 = new OASResponseDistanceBreakdownItem();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem4 = responseDistanceBreakdownItem3;

        System.assert(responseDistanceBreakdownItem1.equals(responseDistanceBreakdownItem2));
        System.assert(responseDistanceBreakdownItem2.equals(responseDistanceBreakdownItem1));
        System.assert(responseDistanceBreakdownItem1.equals(responseDistanceBreakdownItem1));
        System.assert(responseDistanceBreakdownItem3.equals(responseDistanceBreakdownItem4));
        System.assert(responseDistanceBreakdownItem4.equals(responseDistanceBreakdownItem3));
        System.assert(responseDistanceBreakdownItem3.equals(responseDistanceBreakdownItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem3 = new OASResponseDistanceBreakdownItem();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem4 = new OASResponseDistanceBreakdownItem();

        System.assert(responseDistanceBreakdownItem1.equals(responseDistanceBreakdownItem2));
        System.assert(responseDistanceBreakdownItem2.equals(responseDistanceBreakdownItem1));
        System.assert(responseDistanceBreakdownItem3.equals(responseDistanceBreakdownItem4));
        System.assert(responseDistanceBreakdownItem4.equals(responseDistanceBreakdownItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = new OASResponseDistanceBreakdownItem();

        System.assertEquals(false, responseDistanceBreakdownItem1.equals('foo'));
        System.assertEquals(false, responseDistanceBreakdownItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = new OASResponseDistanceBreakdownItem();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem3;

        System.assertEquals(false, responseDistanceBreakdownItem1.equals(responseDistanceBreakdownItem3));
        System.assertEquals(false, responseDistanceBreakdownItem2.equals(responseDistanceBreakdownItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = new OASResponseDistanceBreakdownItem();

        System.assertEquals(responseDistanceBreakdownItem1.hashCode(), responseDistanceBreakdownItem1.hashCode());
        System.assertEquals(responseDistanceBreakdownItem2.hashCode(), responseDistanceBreakdownItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem1 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem2 = OASResponseDistanceBreakdownItem.getExample();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem3 = new OASResponseDistanceBreakdownItem();
        OASResponseDistanceBreakdownItem responseDistanceBreakdownItem4 = new OASResponseDistanceBreakdownItem();

        System.assert(responseDistanceBreakdownItem1.equals(responseDistanceBreakdownItem2));
        System.assert(responseDistanceBreakdownItem3.equals(responseDistanceBreakdownItem4));
        System.assertEquals(responseDistanceBreakdownItem1.hashCode(), responseDistanceBreakdownItem2.hashCode());
        System.assertEquals(responseDistanceBreakdownItem3.hashCode(), responseDistanceBreakdownItem4.hashCode());
    }
}
