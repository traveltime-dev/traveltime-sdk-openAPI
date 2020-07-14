@isTest
private class OASResponseMapInfoFeaturesPublicTranTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = responseMapInfoFeaturesPublicTransport1;
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport3 = new OASResponseMapInfoFeaturesPublicTran();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport4 = responseMapInfoFeaturesPublicTransport3;

        System.assert(responseMapInfoFeaturesPublicTransport1.equals(responseMapInfoFeaturesPublicTransport2));
        System.assert(responseMapInfoFeaturesPublicTransport2.equals(responseMapInfoFeaturesPublicTransport1));
        System.assert(responseMapInfoFeaturesPublicTransport1.equals(responseMapInfoFeaturesPublicTransport1));
        System.assert(responseMapInfoFeaturesPublicTransport3.equals(responseMapInfoFeaturesPublicTransport4));
        System.assert(responseMapInfoFeaturesPublicTransport4.equals(responseMapInfoFeaturesPublicTransport3));
        System.assert(responseMapInfoFeaturesPublicTransport3.equals(responseMapInfoFeaturesPublicTransport3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport3 = new OASResponseMapInfoFeaturesPublicTran();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport4 = new OASResponseMapInfoFeaturesPublicTran();

        System.assert(responseMapInfoFeaturesPublicTransport1.equals(responseMapInfoFeaturesPublicTransport2));
        System.assert(responseMapInfoFeaturesPublicTransport2.equals(responseMapInfoFeaturesPublicTransport1));
        System.assert(responseMapInfoFeaturesPublicTransport3.equals(responseMapInfoFeaturesPublicTransport4));
        System.assert(responseMapInfoFeaturesPublicTransport4.equals(responseMapInfoFeaturesPublicTransport3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = new OASResponseMapInfoFeaturesPublicTran();

        System.assertEquals(false, responseMapInfoFeaturesPublicTransport1.equals('foo'));
        System.assertEquals(false, responseMapInfoFeaturesPublicTransport2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = new OASResponseMapInfoFeaturesPublicTran();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport3;

        System.assertEquals(false, responseMapInfoFeaturesPublicTransport1.equals(responseMapInfoFeaturesPublicTransport3));
        System.assertEquals(false, responseMapInfoFeaturesPublicTransport2.equals(responseMapInfoFeaturesPublicTransport3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = new OASResponseMapInfoFeaturesPublicTran();

        System.assertEquals(responseMapInfoFeaturesPublicTransport1.hashCode(), responseMapInfoFeaturesPublicTransport1.hashCode());
        System.assertEquals(responseMapInfoFeaturesPublicTransport2.hashCode(), responseMapInfoFeaturesPublicTransport2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport1 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport2 = OASResponseMapInfoFeaturesPublicTran.getExample();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport3 = new OASResponseMapInfoFeaturesPublicTran();
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport4 = new OASResponseMapInfoFeaturesPublicTran();

        System.assert(responseMapInfoFeaturesPublicTransport1.equals(responseMapInfoFeaturesPublicTransport2));
        System.assert(responseMapInfoFeaturesPublicTransport3.equals(responseMapInfoFeaturesPublicTransport4));
        System.assertEquals(responseMapInfoFeaturesPublicTransport1.hashCode(), responseMapInfoFeaturesPublicTransport2.hashCode());
        System.assertEquals(responseMapInfoFeaturesPublicTransport3.hashCode(), responseMapInfoFeaturesPublicTransport4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseMapInfoFeaturesPublicTran responseMapInfoFeaturesPublicTransport = new OASResponseMapInfoFeaturesPublicTran();
        Map<String, String> x-property-mappings = responseMapInfoFeaturesPublicTransport.getx-property-mappings();
        System.assertEquals('dateStart', x-property-mappings.get('date_start'));
        System.assertEquals('dateEnd', x-property-mappings.get('date_end'));
    }
}
