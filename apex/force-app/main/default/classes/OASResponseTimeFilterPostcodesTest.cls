@isTest
private class OASResponseTimeFilterPostcodesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = responseTimeFilterPostcodes1;
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes3 = new OASResponseTimeFilterPostcodes();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes4 = responseTimeFilterPostcodes3;

        System.assert(responseTimeFilterPostcodes1.equals(responseTimeFilterPostcodes2));
        System.assert(responseTimeFilterPostcodes2.equals(responseTimeFilterPostcodes1));
        System.assert(responseTimeFilterPostcodes1.equals(responseTimeFilterPostcodes1));
        System.assert(responseTimeFilterPostcodes3.equals(responseTimeFilterPostcodes4));
        System.assert(responseTimeFilterPostcodes4.equals(responseTimeFilterPostcodes3));
        System.assert(responseTimeFilterPostcodes3.equals(responseTimeFilterPostcodes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes3 = new OASResponseTimeFilterPostcodes();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes4 = new OASResponseTimeFilterPostcodes();

        System.assert(responseTimeFilterPostcodes1.equals(responseTimeFilterPostcodes2));
        System.assert(responseTimeFilterPostcodes2.equals(responseTimeFilterPostcodes1));
        System.assert(responseTimeFilterPostcodes3.equals(responseTimeFilterPostcodes4));
        System.assert(responseTimeFilterPostcodes4.equals(responseTimeFilterPostcodes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = new OASResponseTimeFilterPostcodes();

        System.assertEquals(false, responseTimeFilterPostcodes1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = new OASResponseTimeFilterPostcodes();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes3;

        System.assertEquals(false, responseTimeFilterPostcodes1.equals(responseTimeFilterPostcodes3));
        System.assertEquals(false, responseTimeFilterPostcodes2.equals(responseTimeFilterPostcodes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = new OASResponseTimeFilterPostcodes();

        System.assertEquals(responseTimeFilterPostcodes1.hashCode(), responseTimeFilterPostcodes1.hashCode());
        System.assertEquals(responseTimeFilterPostcodes2.hashCode(), responseTimeFilterPostcodes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes1 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes2 = OASResponseTimeFilterPostcodes.getExample();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes3 = new OASResponseTimeFilterPostcodes();
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes4 = new OASResponseTimeFilterPostcodes();

        System.assert(responseTimeFilterPostcodes1.equals(responseTimeFilterPostcodes2));
        System.assert(responseTimeFilterPostcodes3.equals(responseTimeFilterPostcodes4));
        System.assertEquals(responseTimeFilterPostcodes1.hashCode(), responseTimeFilterPostcodes2.hashCode());
        System.assertEquals(responseTimeFilterPostcodes3.hashCode(), responseTimeFilterPostcodes4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterPostcodes responseTimeFilterPostcodes = new OASResponseTimeFilterPostcodes();
        System.assertEquals(new List<OASResponseTimeFilterPostcodesResult>(), responseTimeFilterPostcodes.results);
    }
}
