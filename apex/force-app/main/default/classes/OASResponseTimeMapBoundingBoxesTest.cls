@isTest
private class OASResponseTimeMapBoundingBoxesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = responseTimeMapBoundingBoxes1;
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes3 = new OASResponseTimeMapBoundingBoxes();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes4 = responseTimeMapBoundingBoxes3;

        System.assert(responseTimeMapBoundingBoxes1.equals(responseTimeMapBoundingBoxes2));
        System.assert(responseTimeMapBoundingBoxes2.equals(responseTimeMapBoundingBoxes1));
        System.assert(responseTimeMapBoundingBoxes1.equals(responseTimeMapBoundingBoxes1));
        System.assert(responseTimeMapBoundingBoxes3.equals(responseTimeMapBoundingBoxes4));
        System.assert(responseTimeMapBoundingBoxes4.equals(responseTimeMapBoundingBoxes3));
        System.assert(responseTimeMapBoundingBoxes3.equals(responseTimeMapBoundingBoxes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes3 = new OASResponseTimeMapBoundingBoxes();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes4 = new OASResponseTimeMapBoundingBoxes();

        System.assert(responseTimeMapBoundingBoxes1.equals(responseTimeMapBoundingBoxes2));
        System.assert(responseTimeMapBoundingBoxes2.equals(responseTimeMapBoundingBoxes1));
        System.assert(responseTimeMapBoundingBoxes3.equals(responseTimeMapBoundingBoxes4));
        System.assert(responseTimeMapBoundingBoxes4.equals(responseTimeMapBoundingBoxes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = new OASResponseTimeMapBoundingBoxes();

        System.assertEquals(false, responseTimeMapBoundingBoxes1.equals('foo'));
        System.assertEquals(false, responseTimeMapBoundingBoxes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = new OASResponseTimeMapBoundingBoxes();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes3;

        System.assertEquals(false, responseTimeMapBoundingBoxes1.equals(responseTimeMapBoundingBoxes3));
        System.assertEquals(false, responseTimeMapBoundingBoxes2.equals(responseTimeMapBoundingBoxes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = new OASResponseTimeMapBoundingBoxes();

        System.assertEquals(responseTimeMapBoundingBoxes1.hashCode(), responseTimeMapBoundingBoxes1.hashCode());
        System.assertEquals(responseTimeMapBoundingBoxes2.hashCode(), responseTimeMapBoundingBoxes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes1 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes2 = OASResponseTimeMapBoundingBoxes.getExample();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes3 = new OASResponseTimeMapBoundingBoxes();
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes4 = new OASResponseTimeMapBoundingBoxes();

        System.assert(responseTimeMapBoundingBoxes1.equals(responseTimeMapBoundingBoxes2));
        System.assert(responseTimeMapBoundingBoxes3.equals(responseTimeMapBoundingBoxes4));
        System.assertEquals(responseTimeMapBoundingBoxes1.hashCode(), responseTimeMapBoundingBoxes2.hashCode());
        System.assertEquals(responseTimeMapBoundingBoxes3.hashCode(), responseTimeMapBoundingBoxes4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeMapBoundingBoxes responseTimeMapBoundingBoxes = new OASResponseTimeMapBoundingBoxes();
        System.assertEquals(new List<OASResponseTimeMapBoundingBoxesResul>(), responseTimeMapBoundingBoxes.results);
    }
}
