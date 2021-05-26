@isTest
private class OASRequestLevelOfDetailTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = requestLevelOfDetail1;
        OASRequestLevelOfDetail requestLevelOfDetail3 = new OASRequestLevelOfDetail();
        OASRequestLevelOfDetail requestLevelOfDetail4 = requestLevelOfDetail3;

        System.assert(requestLevelOfDetail1.equals(requestLevelOfDetail2));
        System.assert(requestLevelOfDetail2.equals(requestLevelOfDetail1));
        System.assert(requestLevelOfDetail1.equals(requestLevelOfDetail1));
        System.assert(requestLevelOfDetail3.equals(requestLevelOfDetail4));
        System.assert(requestLevelOfDetail4.equals(requestLevelOfDetail3));
        System.assert(requestLevelOfDetail3.equals(requestLevelOfDetail3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail3 = new OASRequestLevelOfDetail();
        OASRequestLevelOfDetail requestLevelOfDetail4 = new OASRequestLevelOfDetail();

        System.assert(requestLevelOfDetail1.equals(requestLevelOfDetail2));
        System.assert(requestLevelOfDetail2.equals(requestLevelOfDetail1));
        System.assert(requestLevelOfDetail3.equals(requestLevelOfDetail4));
        System.assert(requestLevelOfDetail4.equals(requestLevelOfDetail3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = new OASRequestLevelOfDetail();

        System.assertEquals(false, requestLevelOfDetail1.equals('foo'));
        System.assertEquals(false, requestLevelOfDetail2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = new OASRequestLevelOfDetail();
        OASRequestLevelOfDetail requestLevelOfDetail3;

        System.assertEquals(false, requestLevelOfDetail1.equals(requestLevelOfDetail3));
        System.assertEquals(false, requestLevelOfDetail2.equals(requestLevelOfDetail3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = new OASRequestLevelOfDetail();

        System.assertEquals(requestLevelOfDetail1.hashCode(), requestLevelOfDetail1.hashCode());
        System.assertEquals(requestLevelOfDetail2.hashCode(), requestLevelOfDetail2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestLevelOfDetail requestLevelOfDetail1 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail2 = OASRequestLevelOfDetail.getExample();
        OASRequestLevelOfDetail requestLevelOfDetail3 = new OASRequestLevelOfDetail();
        OASRequestLevelOfDetail requestLevelOfDetail4 = new OASRequestLevelOfDetail();

        System.assert(requestLevelOfDetail1.equals(requestLevelOfDetail2));
        System.assert(requestLevelOfDetail3.equals(requestLevelOfDetail4));
        System.assertEquals(requestLevelOfDetail1.hashCode(), requestLevelOfDetail2.hashCode());
        System.assertEquals(requestLevelOfDetail3.hashCode(), requestLevelOfDetail4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestLevelOfDetail requestLevelOfDetail = new OASRequestLevelOfDetail();
        Map<String, String> x-property-mappings = requestLevelOfDetail.getx-property-mappings();
        System.assertEquals('scaleType', x-property-mappings.get('scale_type'));
    }
}
