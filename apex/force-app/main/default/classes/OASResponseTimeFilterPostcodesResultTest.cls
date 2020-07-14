@isTest
private class OASResponseTimeFilterPostcodesResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = responseTimeFilterPostcodesResult1;
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult3 = new OASResponseTimeFilterPostcodesResult();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult4 = responseTimeFilterPostcodesResult3;

        System.assert(responseTimeFilterPostcodesResult1.equals(responseTimeFilterPostcodesResult2));
        System.assert(responseTimeFilterPostcodesResult2.equals(responseTimeFilterPostcodesResult1));
        System.assert(responseTimeFilterPostcodesResult1.equals(responseTimeFilterPostcodesResult1));
        System.assert(responseTimeFilterPostcodesResult3.equals(responseTimeFilterPostcodesResult4));
        System.assert(responseTimeFilterPostcodesResult4.equals(responseTimeFilterPostcodesResult3));
        System.assert(responseTimeFilterPostcodesResult3.equals(responseTimeFilterPostcodesResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult3 = new OASResponseTimeFilterPostcodesResult();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult4 = new OASResponseTimeFilterPostcodesResult();

        System.assert(responseTimeFilterPostcodesResult1.equals(responseTimeFilterPostcodesResult2));
        System.assert(responseTimeFilterPostcodesResult2.equals(responseTimeFilterPostcodesResult1));
        System.assert(responseTimeFilterPostcodesResult3.equals(responseTimeFilterPostcodesResult4));
        System.assert(responseTimeFilterPostcodesResult4.equals(responseTimeFilterPostcodesResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = new OASResponseTimeFilterPostcodesResult();

        System.assertEquals(false, responseTimeFilterPostcodesResult1.equals('foo'));
        System.assertEquals(false, responseTimeFilterPostcodesResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = new OASResponseTimeFilterPostcodesResult();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult3;

        System.assertEquals(false, responseTimeFilterPostcodesResult1.equals(responseTimeFilterPostcodesResult3));
        System.assertEquals(false, responseTimeFilterPostcodesResult2.equals(responseTimeFilterPostcodesResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = new OASResponseTimeFilterPostcodesResult();

        System.assertEquals(responseTimeFilterPostcodesResult1.hashCode(), responseTimeFilterPostcodesResult1.hashCode());
        System.assertEquals(responseTimeFilterPostcodesResult2.hashCode(), responseTimeFilterPostcodesResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult1 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult2 = OASResponseTimeFilterPostcodesResult.getExample();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult3 = new OASResponseTimeFilterPostcodesResult();
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult4 = new OASResponseTimeFilterPostcodesResult();

        System.assert(responseTimeFilterPostcodesResult1.equals(responseTimeFilterPostcodesResult2));
        System.assert(responseTimeFilterPostcodesResult3.equals(responseTimeFilterPostcodesResult4));
        System.assertEquals(responseTimeFilterPostcodesResult1.hashCode(), responseTimeFilterPostcodesResult2.hashCode());
        System.assertEquals(responseTimeFilterPostcodesResult3.hashCode(), responseTimeFilterPostcodesResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult = new OASResponseTimeFilterPostcodesResult();
        Map<String, String> x-property-mappings = responseTimeFilterPostcodesResult.getx-property-mappings();
        System.assertEquals('searchId', x-property-mappings.get('search_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterPostcodesResult responseTimeFilterPostcodesResult = new OASResponseTimeFilterPostcodesResult();
        System.assertEquals(new List<OASResponseTimeFilterPostcode>(), responseTimeFilterPostcodesResult.postcodes);
        System.assertEquals(null, responseTimeFilterPostcodesResult.searchId);
    }
}
