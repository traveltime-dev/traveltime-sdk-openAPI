@isTest
private class OASRequestRangeFullTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = requestRangeFull1;
        OASRequestRangeFull requestRangeFull3 = new OASRequestRangeFull();
        OASRequestRangeFull requestRangeFull4 = requestRangeFull3;

        System.assert(requestRangeFull1.equals(requestRangeFull2));
        System.assert(requestRangeFull2.equals(requestRangeFull1));
        System.assert(requestRangeFull1.equals(requestRangeFull1));
        System.assert(requestRangeFull3.equals(requestRangeFull4));
        System.assert(requestRangeFull4.equals(requestRangeFull3));
        System.assert(requestRangeFull3.equals(requestRangeFull3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull3 = new OASRequestRangeFull();
        OASRequestRangeFull requestRangeFull4 = new OASRequestRangeFull();

        System.assert(requestRangeFull1.equals(requestRangeFull2));
        System.assert(requestRangeFull2.equals(requestRangeFull1));
        System.assert(requestRangeFull3.equals(requestRangeFull4));
        System.assert(requestRangeFull4.equals(requestRangeFull3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = new OASRequestRangeFull();

        System.assertEquals(false, requestRangeFull1.equals('foo'));
        System.assertEquals(false, requestRangeFull2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = new OASRequestRangeFull();
        OASRequestRangeFull requestRangeFull3;

        System.assertEquals(false, requestRangeFull1.equals(requestRangeFull3));
        System.assertEquals(false, requestRangeFull2.equals(requestRangeFull3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = new OASRequestRangeFull();

        System.assertEquals(requestRangeFull1.hashCode(), requestRangeFull1.hashCode());
        System.assertEquals(requestRangeFull2.hashCode(), requestRangeFull2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestRangeFull requestRangeFull1 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull2 = OASRequestRangeFull.getExample();
        OASRequestRangeFull requestRangeFull3 = new OASRequestRangeFull();
        OASRequestRangeFull requestRangeFull4 = new OASRequestRangeFull();

        System.assert(requestRangeFull1.equals(requestRangeFull2));
        System.assert(requestRangeFull3.equals(requestRangeFull4));
        System.assertEquals(requestRangeFull1.hashCode(), requestRangeFull2.hashCode());
        System.assertEquals(requestRangeFull3.hashCode(), requestRangeFull4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestRangeFull requestRangeFull = new OASRequestRangeFull();
        Map<String, String> propertyMappings = requestRangeFull.getPropertyMappings();
        System.assertEquals('maxResults', propertyMappings.get('max_results'));
    }
}
