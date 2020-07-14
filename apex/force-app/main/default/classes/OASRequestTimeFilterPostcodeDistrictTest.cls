@isTest
private class OASRequestTimeFilterPostcodeDistrictTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = requestTimeFilterPostcodeDistricts1;
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts3 = new OASRequestTimeFilterPostcodeDistrict();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts4 = requestTimeFilterPostcodeDistricts3;

        System.assert(requestTimeFilterPostcodeDistricts1.equals(requestTimeFilterPostcodeDistricts2));
        System.assert(requestTimeFilterPostcodeDistricts2.equals(requestTimeFilterPostcodeDistricts1));
        System.assert(requestTimeFilterPostcodeDistricts1.equals(requestTimeFilterPostcodeDistricts1));
        System.assert(requestTimeFilterPostcodeDistricts3.equals(requestTimeFilterPostcodeDistricts4));
        System.assert(requestTimeFilterPostcodeDistricts4.equals(requestTimeFilterPostcodeDistricts3));
        System.assert(requestTimeFilterPostcodeDistricts3.equals(requestTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts3 = new OASRequestTimeFilterPostcodeDistrict();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts4 = new OASRequestTimeFilterPostcodeDistrict();

        System.assert(requestTimeFilterPostcodeDistricts1.equals(requestTimeFilterPostcodeDistricts2));
        System.assert(requestTimeFilterPostcodeDistricts2.equals(requestTimeFilterPostcodeDistricts1));
        System.assert(requestTimeFilterPostcodeDistricts3.equals(requestTimeFilterPostcodeDistricts4));
        System.assert(requestTimeFilterPostcodeDistricts4.equals(requestTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = new OASRequestTimeFilterPostcodeDistrict();

        System.assertEquals(false, requestTimeFilterPostcodeDistricts1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodeDistricts2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = new OASRequestTimeFilterPostcodeDistrict();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts3;

        System.assertEquals(false, requestTimeFilterPostcodeDistricts1.equals(requestTimeFilterPostcodeDistricts3));
        System.assertEquals(false, requestTimeFilterPostcodeDistricts2.equals(requestTimeFilterPostcodeDistricts3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = new OASRequestTimeFilterPostcodeDistrict();

        System.assertEquals(requestTimeFilterPostcodeDistricts1.hashCode(), requestTimeFilterPostcodeDistricts1.hashCode());
        System.assertEquals(requestTimeFilterPostcodeDistricts2.hashCode(), requestTimeFilterPostcodeDistricts2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts1 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts2 = OASRequestTimeFilterPostcodeDistrict.getExample();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts3 = new OASRequestTimeFilterPostcodeDistrict();
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts4 = new OASRequestTimeFilterPostcodeDistrict();

        System.assert(requestTimeFilterPostcodeDistricts1.equals(requestTimeFilterPostcodeDistricts2));
        System.assert(requestTimeFilterPostcodeDistricts3.equals(requestTimeFilterPostcodeDistricts4));
        System.assertEquals(requestTimeFilterPostcodeDistricts1.hashCode(), requestTimeFilterPostcodeDistricts2.hashCode());
        System.assertEquals(requestTimeFilterPostcodeDistricts3.hashCode(), requestTimeFilterPostcodeDistricts4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts = new OASRequestTimeFilterPostcodeDistrict();
        Map<String, String> x-property-mappings = requestTimeFilterPostcodeDistricts.getx-property-mappings();
        System.assertEquals('departureSearches', x-property-mappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', x-property-mappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodeDistrict requestTimeFilterPostcodeDistricts = new OASRequestTimeFilterPostcodeDistrict();
        System.assertEquals(new List<OASRequestTimeFilterPostcodeDistrict>(), requestTimeFilterPostcodeDistricts.departureSearches);
        System.assertEquals(new List<OASRequestTimeFilterPostcodeDistrict>(), requestTimeFilterPostcodeDistricts.arrivalSearches);
    }
}
