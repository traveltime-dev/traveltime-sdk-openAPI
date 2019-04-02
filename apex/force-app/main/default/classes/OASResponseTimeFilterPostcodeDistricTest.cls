@isTest
private class OASResponseTimeFilterPostcodeDistricTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = responseTimeFilterPostcodeDistricts1;
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts3 = new OASResponseTimeFilterPostcodeDistric();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts4 = responseTimeFilterPostcodeDistricts3;

        System.assert(responseTimeFilterPostcodeDistricts1.equals(responseTimeFilterPostcodeDistricts2));
        System.assert(responseTimeFilterPostcodeDistricts2.equals(responseTimeFilterPostcodeDistricts1));
        System.assert(responseTimeFilterPostcodeDistricts1.equals(responseTimeFilterPostcodeDistricts1));
        System.assert(responseTimeFilterPostcodeDistricts3.equals(responseTimeFilterPostcodeDistricts4));
        System.assert(responseTimeFilterPostcodeDistricts4.equals(responseTimeFilterPostcodeDistricts3));
        System.assert(responseTimeFilterPostcodeDistricts3.equals(responseTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts3 = new OASResponseTimeFilterPostcodeDistric();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts4 = new OASResponseTimeFilterPostcodeDistric();

        System.assert(responseTimeFilterPostcodeDistricts1.equals(responseTimeFilterPostcodeDistricts2));
        System.assert(responseTimeFilterPostcodeDistricts2.equals(responseTimeFilterPostcodeDistricts1));
        System.assert(responseTimeFilterPostcodeDistricts3.equals(responseTimeFilterPostcodeDistricts4));
        System.assert(responseTimeFilterPostcodeDistricts4.equals(responseTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = new OASResponseTimeFilterPostcodeDistric();

        System.assertEquals(false, responseTimeFilterPostcodeDistricts1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodeDistricts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = new OASResponseTimeFilterPostcodeDistric();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts3;

        System.assertEquals(false, responseTimeFilterPostcodeDistricts1.equals(responseTimeFilterPostcodeDistricts3));
        System.assertEquals(false, responseTimeFilterPostcodeDistricts2.equals(responseTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = new OASResponseTimeFilterPostcodeDistric();

        System.assertEquals(responseTimeFilterPostcodeDistricts1.hashCode(), responseTimeFilterPostcodeDistricts1.hashCode());
        System.assertEquals(responseTimeFilterPostcodeDistricts2.hashCode(), responseTimeFilterPostcodeDistricts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts1 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts2 = OASResponseTimeFilterPostcodeDistric.getExample();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts3 = new OASResponseTimeFilterPostcodeDistric();
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts4 = new OASResponseTimeFilterPostcodeDistric();

        System.assert(responseTimeFilterPostcodeDistricts1.equals(responseTimeFilterPostcodeDistricts2));
        System.assert(responseTimeFilterPostcodeDistricts3.equals(responseTimeFilterPostcodeDistricts4));
        System.assertEquals(responseTimeFilterPostcodeDistricts1.hashCode(), responseTimeFilterPostcodeDistricts2.hashCode());
        System.assertEquals(responseTimeFilterPostcodeDistricts3.hashCode(), responseTimeFilterPostcodeDistricts4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterPostcodeDistric responseTimeFilterPostcodeDistricts = new OASResponseTimeFilterPostcodeDistric();
        System.assertEquals(new List<OASResponseTimeFilterPostcodeDistric>(), responseTimeFilterPostcodeDistricts.results);
    }
}
