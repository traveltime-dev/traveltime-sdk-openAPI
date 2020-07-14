@isTest
private class OASResponseRoutesPropertiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = responseRoutesProperties1;
        OASResponseRoutesProperties responseRoutesProperties3 = new OASResponseRoutesProperties();
        OASResponseRoutesProperties responseRoutesProperties4 = responseRoutesProperties3;

        System.assert(responseRoutesProperties1.equals(responseRoutesProperties2));
        System.assert(responseRoutesProperties2.equals(responseRoutesProperties1));
        System.assert(responseRoutesProperties1.equals(responseRoutesProperties1));
        System.assert(responseRoutesProperties3.equals(responseRoutesProperties4));
        System.assert(responseRoutesProperties4.equals(responseRoutesProperties3));
        System.assert(responseRoutesProperties3.equals(responseRoutesProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties3 = new OASResponseRoutesProperties();
        OASResponseRoutesProperties responseRoutesProperties4 = new OASResponseRoutesProperties();

        System.assert(responseRoutesProperties1.equals(responseRoutesProperties2));
        System.assert(responseRoutesProperties2.equals(responseRoutesProperties1));
        System.assert(responseRoutesProperties3.equals(responseRoutesProperties4));
        System.assert(responseRoutesProperties4.equals(responseRoutesProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = new OASResponseRoutesProperties();

        System.assertEquals(false, responseRoutesProperties1.equals('foo'));
        System.assertEquals(false, responseRoutesProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = new OASResponseRoutesProperties();
        OASResponseRoutesProperties responseRoutesProperties3;

        System.assertEquals(false, responseRoutesProperties1.equals(responseRoutesProperties3));
        System.assertEquals(false, responseRoutesProperties2.equals(responseRoutesProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = new OASResponseRoutesProperties();

        System.assertEquals(responseRoutesProperties1.hashCode(), responseRoutesProperties1.hashCode());
        System.assertEquals(responseRoutesProperties2.hashCode(), responseRoutesProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseRoutesProperties responseRoutesProperties1 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties2 = OASResponseRoutesProperties.getExample();
        OASResponseRoutesProperties responseRoutesProperties3 = new OASResponseRoutesProperties();
        OASResponseRoutesProperties responseRoutesProperties4 = new OASResponseRoutesProperties();

        System.assert(responseRoutesProperties1.equals(responseRoutesProperties2));
        System.assert(responseRoutesProperties3.equals(responseRoutesProperties4));
        System.assertEquals(responseRoutesProperties1.hashCode(), responseRoutesProperties2.hashCode());
        System.assertEquals(responseRoutesProperties3.hashCode(), responseRoutesProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseRoutesProperties responseRoutesProperties = new OASResponseRoutesProperties();
        Map<String, String> x-property-mappings = responseRoutesProperties.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
    }
}
