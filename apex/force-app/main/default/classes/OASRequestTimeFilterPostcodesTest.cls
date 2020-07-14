@isTest
private class OASRequestTimeFilterPostcodesTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = requestTimeFilterPostcodes1;
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes3 = new OASRequestTimeFilterPostcodes();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes4 = requestTimeFilterPostcodes3;

        System.assert(requestTimeFilterPostcodes1.equals(requestTimeFilterPostcodes2));
        System.assert(requestTimeFilterPostcodes2.equals(requestTimeFilterPostcodes1));
        System.assert(requestTimeFilterPostcodes1.equals(requestTimeFilterPostcodes1));
        System.assert(requestTimeFilterPostcodes3.equals(requestTimeFilterPostcodes4));
        System.assert(requestTimeFilterPostcodes4.equals(requestTimeFilterPostcodes3));
        System.assert(requestTimeFilterPostcodes3.equals(requestTimeFilterPostcodes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes3 = new OASRequestTimeFilterPostcodes();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes4 = new OASRequestTimeFilterPostcodes();

        System.assert(requestTimeFilterPostcodes1.equals(requestTimeFilterPostcodes2));
        System.assert(requestTimeFilterPostcodes2.equals(requestTimeFilterPostcodes1));
        System.assert(requestTimeFilterPostcodes3.equals(requestTimeFilterPostcodes4));
        System.assert(requestTimeFilterPostcodes4.equals(requestTimeFilterPostcodes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = new OASRequestTimeFilterPostcodes();

        System.assertEquals(false, requestTimeFilterPostcodes1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = new OASRequestTimeFilterPostcodes();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes3;

        System.assertEquals(false, requestTimeFilterPostcodes1.equals(requestTimeFilterPostcodes3));
        System.assertEquals(false, requestTimeFilterPostcodes2.equals(requestTimeFilterPostcodes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = new OASRequestTimeFilterPostcodes();

        System.assertEquals(requestTimeFilterPostcodes1.hashCode(), requestTimeFilterPostcodes1.hashCode());
        System.assertEquals(requestTimeFilterPostcodes2.hashCode(), requestTimeFilterPostcodes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes1 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes2 = OASRequestTimeFilterPostcodes.getExample();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes3 = new OASRequestTimeFilterPostcodes();
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes4 = new OASRequestTimeFilterPostcodes();

        System.assert(requestTimeFilterPostcodes1.equals(requestTimeFilterPostcodes2));
        System.assert(requestTimeFilterPostcodes3.equals(requestTimeFilterPostcodes4));
        System.assertEquals(requestTimeFilterPostcodes1.hashCode(), requestTimeFilterPostcodes2.hashCode());
        System.assertEquals(requestTimeFilterPostcodes3.hashCode(), requestTimeFilterPostcodes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes = new OASRequestTimeFilterPostcodes();
        Map<String, String> x-property-mappings = requestTimeFilterPostcodes.getx-property-mappings();
        System.assertEquals('departureSearches', x-property-mappings.get('departure_searches'));
        System.assertEquals('arrivalSearches', x-property-mappings.get('arrival_searches'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodes requestTimeFilterPostcodes = new OASRequestTimeFilterPostcodes();
        System.assertEquals(new List<OASRequestTimeFilterPostcodesDepartu>(), requestTimeFilterPostcodes.departureSearches);
        System.assertEquals(new List<OASRequestTimeFilterPostcodesArrival>(), requestTimeFilterPostcodes.arrivalSearches);
    }
}
