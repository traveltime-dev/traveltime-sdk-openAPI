@isTest
private class OASResponseErrorTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = responseError1;
        OASResponseError responseError3 = new OASResponseError();
        OASResponseError responseError4 = responseError3;

        System.assert(responseError1.equals(responseError2));
        System.assert(responseError2.equals(responseError1));
        System.assert(responseError1.equals(responseError1));
        System.assert(responseError3.equals(responseError4));
        System.assert(responseError4.equals(responseError3));
        System.assert(responseError3.equals(responseError3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = OASResponseError.getExample();
        OASResponseError responseError3 = new OASResponseError();
        OASResponseError responseError4 = new OASResponseError();

        System.assert(responseError1.equals(responseError2));
        System.assert(responseError2.equals(responseError1));
        System.assert(responseError3.equals(responseError4));
        System.assert(responseError4.equals(responseError3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = new OASResponseError();

        System.assertEquals(false, responseError1.equals('foo'));
        System.assertEquals(false, responseError2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = new OASResponseError();
        OASResponseError responseError3;

        System.assertEquals(false, responseError1.equals(responseError3));
        System.assertEquals(false, responseError2.equals(responseError3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = new OASResponseError();

        System.assertEquals(responseError1.hashCode(), responseError1.hashCode());
        System.assertEquals(responseError2.hashCode(), responseError2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseError responseError1 = OASResponseError.getExample();
        OASResponseError responseError2 = OASResponseError.getExample();
        OASResponseError responseError3 = new OASResponseError();
        OASResponseError responseError4 = new OASResponseError();

        System.assert(responseError1.equals(responseError2));
        System.assert(responseError3.equals(responseError4));
        System.assertEquals(responseError1.hashCode(), responseError2.hashCode());
        System.assertEquals(responseError3.hashCode(), responseError4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseError responseError = new OASResponseError();
        Map<String, String> x-property-mappings = responseError.getx-property-mappings();
        System.assertEquals('httpStatus', x-property-mappings.get('http_status'));
        System.assertEquals('errorCode', x-property-mappings.get('error_code'));
        System.assertEquals('documentationLink', x-property-mappings.get('documentation_link'));
        System.assertEquals('additionalInfo', x-property-mappings.get('additional_info'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseError responseError = new OASResponseError();
        System.assertEquals(new Map<String, List<String>>(), responseError.additionalInfo);
        System.assertEquals(null, responseError.httpStatus);
        System.assertEquals(null, responseError.errorCode);
        System.assertEquals(null, responseError.description);
        System.assertEquals(null, responseError.documentationLink);
    }
}
