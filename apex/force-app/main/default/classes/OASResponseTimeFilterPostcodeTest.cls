@isTest
private class OASResponseTimeFilterPostcodeTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = responseTimeFilterPostcode1;
        OASResponseTimeFilterPostcode responseTimeFilterPostcode3 = new OASResponseTimeFilterPostcode();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode4 = responseTimeFilterPostcode3;

        System.assert(responseTimeFilterPostcode1.equals(responseTimeFilterPostcode2));
        System.assert(responseTimeFilterPostcode2.equals(responseTimeFilterPostcode1));
        System.assert(responseTimeFilterPostcode1.equals(responseTimeFilterPostcode1));
        System.assert(responseTimeFilterPostcode3.equals(responseTimeFilterPostcode4));
        System.assert(responseTimeFilterPostcode4.equals(responseTimeFilterPostcode3));
        System.assert(responseTimeFilterPostcode3.equals(responseTimeFilterPostcode3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode3 = new OASResponseTimeFilterPostcode();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode4 = new OASResponseTimeFilterPostcode();

        System.assert(responseTimeFilterPostcode1.equals(responseTimeFilterPostcode2));
        System.assert(responseTimeFilterPostcode2.equals(responseTimeFilterPostcode1));
        System.assert(responseTimeFilterPostcode3.equals(responseTimeFilterPostcode4));
        System.assert(responseTimeFilterPostcode4.equals(responseTimeFilterPostcode3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = new OASResponseTimeFilterPostcode();

        System.assertEquals(false, responseTimeFilterPostcode1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcode2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = new OASResponseTimeFilterPostcode();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode3;

        System.assertEquals(false, responseTimeFilterPostcode1.equals(responseTimeFilterPostcode3));
        System.assertEquals(false, responseTimeFilterPostcode2.equals(responseTimeFilterPostcode3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = new OASResponseTimeFilterPostcode();

        System.assertEquals(responseTimeFilterPostcode1.hashCode(), responseTimeFilterPostcode1.hashCode());
        System.assertEquals(responseTimeFilterPostcode2.hashCode(), responseTimeFilterPostcode2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode1 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode2 = OASResponseTimeFilterPostcode.getExample();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode3 = new OASResponseTimeFilterPostcode();
        OASResponseTimeFilterPostcode responseTimeFilterPostcode4 = new OASResponseTimeFilterPostcode();

        System.assert(responseTimeFilterPostcode1.equals(responseTimeFilterPostcode2));
        System.assert(responseTimeFilterPostcode3.equals(responseTimeFilterPostcode4));
        System.assertEquals(responseTimeFilterPostcode1.hashCode(), responseTimeFilterPostcode2.hashCode());
        System.assertEquals(responseTimeFilterPostcode3.hashCode(), responseTimeFilterPostcode4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterPostcode responseTimeFilterPostcode = new OASResponseTimeFilterPostcode();
        System.assertEquals(new List<OASResponseTimeFilterPostcodesProper>(), responseTimeFilterPostcode.properties);
        System.assertEquals(null, responseTimeFilterPostcode.code);
    }
}
