@isTest
private class OASRequestTimeFilterPostcodesDepartuTest {
    @isTest
    private static void equalsSameInstance() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = requestTimeFilterPostcodesDepartureSearch1;
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch3 = new OASRequestTimeFilterPostcodesDepartu();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch4 = requestTimeFilterPostcodesDepartureSearch3;

        System.assert(requestTimeFilterPostcodesDepartureSearch1.equals(requestTimeFilterPostcodesDepartureSearch2));
        System.assert(requestTimeFilterPostcodesDepartureSearch2.equals(requestTimeFilterPostcodesDepartureSearch1));
        System.assert(requestTimeFilterPostcodesDepartureSearch1.equals(requestTimeFilterPostcodesDepartureSearch1));
        System.assert(requestTimeFilterPostcodesDepartureSearch3.equals(requestTimeFilterPostcodesDepartureSearch4));
        System.assert(requestTimeFilterPostcodesDepartureSearch4.equals(requestTimeFilterPostcodesDepartureSearch3));
        System.assert(requestTimeFilterPostcodesDepartureSearch3.equals(requestTimeFilterPostcodesDepartureSearch3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch3 = new OASRequestTimeFilterPostcodesDepartu();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch4 = new OASRequestTimeFilterPostcodesDepartu();

        System.assert(requestTimeFilterPostcodesDepartureSearch1.equals(requestTimeFilterPostcodesDepartureSearch2));
        System.assert(requestTimeFilterPostcodesDepartureSearch2.equals(requestTimeFilterPostcodesDepartureSearch1));
        System.assert(requestTimeFilterPostcodesDepartureSearch3.equals(requestTimeFilterPostcodesDepartureSearch4));
        System.assert(requestTimeFilterPostcodesDepartureSearch4.equals(requestTimeFilterPostcodesDepartureSearch3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = new OASRequestTimeFilterPostcodesDepartu();

        System.assertEquals(false, requestTimeFilterPostcodesDepartureSearch1.equals('foo'));
        System.assertEquals(false, requestTimeFilterPostcodesDepartureSearch2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = new OASRequestTimeFilterPostcodesDepartu();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch3;

        System.assertEquals(false, requestTimeFilterPostcodesDepartureSearch1.equals(requestTimeFilterPostcodesDepartureSearch3));
        System.assertEquals(false, requestTimeFilterPostcodesDepartureSearch2.equals(requestTimeFilterPostcodesDepartureSearch3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = new OASRequestTimeFilterPostcodesDepartu();

        System.assertEquals(requestTimeFilterPostcodesDepartureSearch1.hashCode(), requestTimeFilterPostcodesDepartureSearch1.hashCode());
        System.assertEquals(requestTimeFilterPostcodesDepartureSearch2.hashCode(), requestTimeFilterPostcodesDepartureSearch2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch1 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch2 = OASRequestTimeFilterPostcodesDepartu.getExample();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch3 = new OASRequestTimeFilterPostcodesDepartu();
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch4 = new OASRequestTimeFilterPostcodesDepartu();

        System.assert(requestTimeFilterPostcodesDepartureSearch1.equals(requestTimeFilterPostcodesDepartureSearch2));
        System.assert(requestTimeFilterPostcodesDepartureSearch3.equals(requestTimeFilterPostcodesDepartureSearch4));
        System.assertEquals(requestTimeFilterPostcodesDepartureSearch1.hashCode(), requestTimeFilterPostcodesDepartureSearch2.hashCode());
        System.assertEquals(requestTimeFilterPostcodesDepartureSearch3.hashCode(), requestTimeFilterPostcodesDepartureSearch4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch = new OASRequestTimeFilterPostcodesDepartu();
        Map<String, String> x-property-mappings = requestTimeFilterPostcodesDepartureSearch.getx-property-mappings();
        System.assertEquals('travelTime', x-property-mappings.get('travel_time'));
        System.assertEquals('departureTime', x-property-mappings.get('departure_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASRequestTimeFilterPostcodesDepartu requestTimeFilterPostcodesDepartureSearch = new OASRequestTimeFilterPostcodesDepartu();
        System.assertEquals(new List<OASRequestTimeFilterPostcodesPropert>(), requestTimeFilterPostcodesDepartureSearch.properties);
        System.assertEquals(null, requestTimeFilterPostcodesDepartureSearch.id);
        System.assertEquals(null, requestTimeFilterPostcodesDepartureSearch.transportation);
        System.assertEquals(null, requestTimeFilterPostcodesDepartureSearch.travelTime);
        System.assertEquals(null, requestTimeFilterPostcodesDepartureSearch.departureTime);
        System.assertEquals(null, requestTimeFilterPostcodesDepartureSearch.range);
    }
}
