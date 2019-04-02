@isTest
private class OASResponseTimeMapWktResultTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = responseTimeMapWktResult1;
        OASResponseTimeMapWktResult responseTimeMapWktResult3 = new OASResponseTimeMapWktResult();
        OASResponseTimeMapWktResult responseTimeMapWktResult4 = responseTimeMapWktResult3;

        System.assert(responseTimeMapWktResult1.equals(responseTimeMapWktResult2));
        System.assert(responseTimeMapWktResult2.equals(responseTimeMapWktResult1));
        System.assert(responseTimeMapWktResult1.equals(responseTimeMapWktResult1));
        System.assert(responseTimeMapWktResult3.equals(responseTimeMapWktResult4));
        System.assert(responseTimeMapWktResult4.equals(responseTimeMapWktResult3));
        System.assert(responseTimeMapWktResult3.equals(responseTimeMapWktResult3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult3 = new OASResponseTimeMapWktResult();
        OASResponseTimeMapWktResult responseTimeMapWktResult4 = new OASResponseTimeMapWktResult();

        System.assert(responseTimeMapWktResult1.equals(responseTimeMapWktResult2));
        System.assert(responseTimeMapWktResult2.equals(responseTimeMapWktResult1));
        System.assert(responseTimeMapWktResult3.equals(responseTimeMapWktResult4));
        System.assert(responseTimeMapWktResult4.equals(responseTimeMapWktResult3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = new OASResponseTimeMapWktResult();

        System.assertEquals(false, responseTimeMapWktResult1.equals('foo'));
        System.assertEquals(false, responseTimeMapWktResult2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = new OASResponseTimeMapWktResult();
        OASResponseTimeMapWktResult responseTimeMapWktResult3;

        System.assertEquals(false, responseTimeMapWktResult1.equals(responseTimeMapWktResult3));
        System.assertEquals(false, responseTimeMapWktResult2.equals(responseTimeMapWktResult3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = new OASResponseTimeMapWktResult();

        System.assertEquals(responseTimeMapWktResult1.hashCode(), responseTimeMapWktResult1.hashCode());
        System.assertEquals(responseTimeMapWktResult2.hashCode(), responseTimeMapWktResult2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapWktResult responseTimeMapWktResult1 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult2 = OASResponseTimeMapWktResult.getExample();
        OASResponseTimeMapWktResult responseTimeMapWktResult3 = new OASResponseTimeMapWktResult();
        OASResponseTimeMapWktResult responseTimeMapWktResult4 = new OASResponseTimeMapWktResult();

        System.assert(responseTimeMapWktResult1.equals(responseTimeMapWktResult2));
        System.assert(responseTimeMapWktResult3.equals(responseTimeMapWktResult4));
        System.assertEquals(responseTimeMapWktResult1.hashCode(), responseTimeMapWktResult2.hashCode());
        System.assertEquals(responseTimeMapWktResult3.hashCode(), responseTimeMapWktResult4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeMapWktResult responseTimeMapWktResult = new OASResponseTimeMapWktResult();
        Map<String, String> propertyMappings = responseTimeMapWktResult.getPropertyMappings();
        System.assertEquals('searchId', propertyMappings.get('search_id'));
    }
}
