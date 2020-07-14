@isTest
private class OASResponseTimeMapPropertiesTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = responseTimeMapProperties1;
        OASResponseTimeMapProperties responseTimeMapProperties3 = new OASResponseTimeMapProperties();
        OASResponseTimeMapProperties responseTimeMapProperties4 = responseTimeMapProperties3;

        System.assert(responseTimeMapProperties1.equals(responseTimeMapProperties2));
        System.assert(responseTimeMapProperties2.equals(responseTimeMapProperties1));
        System.assert(responseTimeMapProperties1.equals(responseTimeMapProperties1));
        System.assert(responseTimeMapProperties3.equals(responseTimeMapProperties4));
        System.assert(responseTimeMapProperties4.equals(responseTimeMapProperties3));
        System.assert(responseTimeMapProperties3.equals(responseTimeMapProperties3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties3 = new OASResponseTimeMapProperties();
        OASResponseTimeMapProperties responseTimeMapProperties4 = new OASResponseTimeMapProperties();

        System.assert(responseTimeMapProperties1.equals(responseTimeMapProperties2));
        System.assert(responseTimeMapProperties2.equals(responseTimeMapProperties1));
        System.assert(responseTimeMapProperties3.equals(responseTimeMapProperties4));
        System.assert(responseTimeMapProperties4.equals(responseTimeMapProperties3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = new OASResponseTimeMapProperties();

        System.assertEquals(false, responseTimeMapProperties1.equals('foo'));
        System.assertEquals(false, responseTimeMapProperties2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = new OASResponseTimeMapProperties();
        OASResponseTimeMapProperties responseTimeMapProperties3;

        System.assertEquals(false, responseTimeMapProperties1.equals(responseTimeMapProperties3));
        System.assertEquals(false, responseTimeMapProperties2.equals(responseTimeMapProperties3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = new OASResponseTimeMapProperties();

        System.assertEquals(responseTimeMapProperties1.hashCode(), responseTimeMapProperties1.hashCode());
        System.assertEquals(responseTimeMapProperties2.hashCode(), responseTimeMapProperties2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseTimeMapProperties responseTimeMapProperties1 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties2 = OASResponseTimeMapProperties.getExample();
        OASResponseTimeMapProperties responseTimeMapProperties3 = new OASResponseTimeMapProperties();
        OASResponseTimeMapProperties responseTimeMapProperties4 = new OASResponseTimeMapProperties();

        System.assert(responseTimeMapProperties1.equals(responseTimeMapProperties2));
        System.assert(responseTimeMapProperties3.equals(responseTimeMapProperties4));
        System.assertEquals(responseTimeMapProperties1.hashCode(), responseTimeMapProperties2.hashCode());
        System.assertEquals(responseTimeMapProperties3.hashCode(), responseTimeMapProperties4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseTimeMapProperties responseTimeMapProperties = new OASResponseTimeMapProperties();
        Map<String, String> x-property-mappings = responseTimeMapProperties.getx-property-mappings();
        System.assertEquals('isOnlyWalking', x-property-mappings.get('is_only_walking'));
    }
}
