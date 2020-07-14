@isTest
private class OASResponseTimeFilterFastPropertiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = responseTimeFilterFastProperties1;
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties3 = new OASResponseTimeFilterFastProperties();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties4 = responseTimeFilterFastProperties3;

        System.assert(responseTimeFilterFastProperties1.equals(responseTimeFilterFastProperties2));
        System.assert(responseTimeFilterFastProperties2.equals(responseTimeFilterFastProperties1));
        System.assert(responseTimeFilterFastProperties1.equals(responseTimeFilterFastProperties1));
        System.assert(responseTimeFilterFastProperties3.equals(responseTimeFilterFastProperties4));
        System.assert(responseTimeFilterFastProperties4.equals(responseTimeFilterFastProperties3));
        System.assert(responseTimeFilterFastProperties3.equals(responseTimeFilterFastProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties3 = new OASResponseTimeFilterFastProperties();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties4 = new OASResponseTimeFilterFastProperties();

        System.assert(responseTimeFilterFastProperties1.equals(responseTimeFilterFastProperties2));
        System.assert(responseTimeFilterFastProperties2.equals(responseTimeFilterFastProperties1));
        System.assert(responseTimeFilterFastProperties3.equals(responseTimeFilterFastProperties4));
        System.assert(responseTimeFilterFastProperties4.equals(responseTimeFilterFastProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = new OASResponseTimeFilterFastProperties();

        System.assertEquals(false, responseTimeFilterFastProperties1.equals('foo'));
        System.assertEquals(false, responseTimeFilterFastProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = new OASResponseTimeFilterFastProperties();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties3;

        System.assertEquals(false, responseTimeFilterFastProperties1.equals(responseTimeFilterFastProperties3));
        System.assertEquals(false, responseTimeFilterFastProperties2.equals(responseTimeFilterFastProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = new OASResponseTimeFilterFastProperties();

        System.assertEquals(responseTimeFilterFastProperties1.hashCode(), responseTimeFilterFastProperties1.hashCode());
        System.assertEquals(responseTimeFilterFastProperties2.hashCode(), responseTimeFilterFastProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties1 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties2 = OASResponseTimeFilterFastProperties.getExample();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties3 = new OASResponseTimeFilterFastProperties();
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties4 = new OASResponseTimeFilterFastProperties();

        System.assert(responseTimeFilterFastProperties1.equals(responseTimeFilterFastProperties2));
        System.assert(responseTimeFilterFastProperties3.equals(responseTimeFilterFastProperties4));
        System.assertEquals(responseTimeFilterFastProperties1.hashCode(), responseTimeFilterFastProperties2.hashCode());
        System.assertEquals(responseTimeFilterFastProperties3.hashCode(), responseTimeFilterFastProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeFilterFastProperties responseTimeFilterFastProperties = new OASResponseTimeFilterFastProperties();
        Map<String, String> x-property-mappings = responseTimeFilterFastProperties.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
    }
}
