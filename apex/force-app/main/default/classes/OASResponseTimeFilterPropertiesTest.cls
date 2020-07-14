@isTest
private class OASResponseTimeFilterPropertiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = responseTimeFilterProperties1;
        OASResponseTimeFilterProperties responseTimeFilterProperties3 = new OASResponseTimeFilterProperties();
        OASResponseTimeFilterProperties responseTimeFilterProperties4 = responseTimeFilterProperties3;

        System.assert(responseTimeFilterProperties1.equals(responseTimeFilterProperties2));
        System.assert(responseTimeFilterProperties2.equals(responseTimeFilterProperties1));
        System.assert(responseTimeFilterProperties1.equals(responseTimeFilterProperties1));
        System.assert(responseTimeFilterProperties3.equals(responseTimeFilterProperties4));
        System.assert(responseTimeFilterProperties4.equals(responseTimeFilterProperties3));
        System.assert(responseTimeFilterProperties3.equals(responseTimeFilterProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties3 = new OASResponseTimeFilterProperties();
        OASResponseTimeFilterProperties responseTimeFilterProperties4 = new OASResponseTimeFilterProperties();

        System.assert(responseTimeFilterProperties1.equals(responseTimeFilterProperties2));
        System.assert(responseTimeFilterProperties2.equals(responseTimeFilterProperties1));
        System.assert(responseTimeFilterProperties3.equals(responseTimeFilterProperties4));
        System.assert(responseTimeFilterProperties4.equals(responseTimeFilterProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = new OASResponseTimeFilterProperties();

        System.assertEquals(false, responseTimeFilterProperties1.equals('foo'));
        System.assertEquals(false, responseTimeFilterProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = new OASResponseTimeFilterProperties();
        OASResponseTimeFilterProperties responseTimeFilterProperties3;

        System.assertEquals(false, responseTimeFilterProperties1.equals(responseTimeFilterProperties3));
        System.assertEquals(false, responseTimeFilterProperties2.equals(responseTimeFilterProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = new OASResponseTimeFilterProperties();

        System.assertEquals(responseTimeFilterProperties1.hashCode(), responseTimeFilterProperties1.hashCode());
        System.assertEquals(responseTimeFilterProperties2.hashCode(), responseTimeFilterProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterProperties responseTimeFilterProperties1 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties2 = OASResponseTimeFilterProperties.getExample();
        OASResponseTimeFilterProperties responseTimeFilterProperties3 = new OASResponseTimeFilterProperties();
        OASResponseTimeFilterProperties responseTimeFilterProperties4 = new OASResponseTimeFilterProperties();

        System.assert(responseTimeFilterProperties1.equals(responseTimeFilterProperties2));
        System.assert(responseTimeFilterProperties3.equals(responseTimeFilterProperties4));
        System.assertEquals(responseTimeFilterProperties1.hashCode(), responseTimeFilterProperties2.hashCode());
        System.assertEquals(responseTimeFilterProperties3.hashCode(), responseTimeFilterProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterProperties responseTimeFilterProperties = new OASResponseTimeFilterProperties();
        Map<String, String> x-property-mappings = responseTimeFilterProperties.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('distanceBreakdown', x-property-mappings.get('distance_breakdown'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseTimeFilterProperties responseTimeFilterProperties = new OASResponseTimeFilterProperties();
        System.assertEquals(new List<OASResponseDistanceBreakdownItem>(), responseTimeFilterProperties.distanceBreakdown);
        System.assertEquals(null, responseTimeFilterProperties.travelTime);
        System.assertEquals(null, responseTimeFilterProperties.distance);
        System.assertEquals(null, responseTimeFilterProperties.fares);
        System.assertEquals(null, responseTimeFilterProperties.route);
    }
}
