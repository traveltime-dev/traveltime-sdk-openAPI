@isTest
private class OASResponseTimeMapResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = responseTimeMapResult1;
        OASResponseTimeMapResult responseTimeMapResult3 = new OASResponseTimeMapResult();
        OASResponseTimeMapResult responseTimeMapResult4 = responseTimeMapResult3;

        System.assert(responseTimeMapResult1.equals(responseTimeMapResult2));
        System.assert(responseTimeMapResult2.equals(responseTimeMapResult1));
        System.assert(responseTimeMapResult1.equals(responseTimeMapResult1));
        System.assert(responseTimeMapResult3.equals(responseTimeMapResult4));
        System.assert(responseTimeMapResult4.equals(responseTimeMapResult3));
        System.assert(responseTimeMapResult3.equals(responseTimeMapResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult3 = new OASResponseTimeMapResult();
        OASResponseTimeMapResult responseTimeMapResult4 = new OASResponseTimeMapResult();

        System.assert(responseTimeMapResult1.equals(responseTimeMapResult2));
        System.assert(responseTimeMapResult2.equals(responseTimeMapResult1));
        System.assert(responseTimeMapResult3.equals(responseTimeMapResult4));
        System.assert(responseTimeMapResult4.equals(responseTimeMapResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = new OASResponseTimeMapResult();

        System.assertEquals(false, responseTimeMapResult1.equals('foo'));
        System.assertEquals(false, responseTimeMapResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = new OASResponseTimeMapResult();
        OASResponseTimeMapResult responseTimeMapResult3;

        System.assertEquals(false, responseTimeMapResult1.equals(responseTimeMapResult3));
        System.assertEquals(false, responseTimeMapResult2.equals(responseTimeMapResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = new OASResponseTimeMapResult();

        System.assertEquals(responseTimeMapResult1.hashCode(), responseTimeMapResult1.hashCode());
        System.assertEquals(responseTimeMapResult2.hashCode(), responseTimeMapResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapResult responseTimeMapResult1 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult2 = OASResponseTimeMapResult.getExample();
        OASResponseTimeMapResult responseTimeMapResult3 = new OASResponseTimeMapResult();
        OASResponseTimeMapResult responseTimeMapResult4 = new OASResponseTimeMapResult();

        System.assert(responseTimeMapResult1.equals(responseTimeMapResult2));
        System.assert(responseTimeMapResult3.equals(responseTimeMapResult4));
        System.assertEquals(responseTimeMapResult1.hashCode(), responseTimeMapResult2.hashCode());
        System.assertEquals(responseTimeMapResult3.hashCode(), responseTimeMapResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeMapResult responseTimeMapResult = new OASResponseTimeMapResult();
        Map<String, String> x-property-mappings = responseTimeMapResult.getx-property-mappings();
        System.assertEquals('searchId', x-property-mappings.get('search_id'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeMapResult responseTimeMapResult = new OASResponseTimeMapResult();
        System.assertEquals(new List<OASResponseShape>(), responseTimeMapResult.shapes);
        System.assertEquals(null, responseTimeMapResult.searchId);
        System.assertEquals(null, responseTimeMapResult.properties);
    }
}
