@isTest
private class OASResponseFaresFastTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = responseFaresFast1;
        OASResponseFaresFast responseFaresFast3 = new OASResponseFaresFast();
        OASResponseFaresFast responseFaresFast4 = responseFaresFast3;

        System.assert(responseFaresFast1.equals(responseFaresFast2));
        System.assert(responseFaresFast2.equals(responseFaresFast1));
        System.assert(responseFaresFast1.equals(responseFaresFast1));
        System.assert(responseFaresFast3.equals(responseFaresFast4));
        System.assert(responseFaresFast4.equals(responseFaresFast3));
        System.assert(responseFaresFast3.equals(responseFaresFast3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast3 = new OASResponseFaresFast();
        OASResponseFaresFast responseFaresFast4 = new OASResponseFaresFast();

        System.assert(responseFaresFast1.equals(responseFaresFast2));
        System.assert(responseFaresFast2.equals(responseFaresFast1));
        System.assert(responseFaresFast3.equals(responseFaresFast4));
        System.assert(responseFaresFast4.equals(responseFaresFast3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = new OASResponseFaresFast();

        System.assertEquals(false, responseFaresFast1.equals('foo'));
        System.assertEquals(false, responseFaresFast2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = new OASResponseFaresFast();
        OASResponseFaresFast responseFaresFast3;

        System.assertEquals(false, responseFaresFast1.equals(responseFaresFast3));
        System.assertEquals(false, responseFaresFast2.equals(responseFaresFast3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = new OASResponseFaresFast();

        System.assertEquals(responseFaresFast1.hashCode(), responseFaresFast1.hashCode());
        System.assertEquals(responseFaresFast2.hashCode(), responseFaresFast2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseFaresFast responseFaresFast1 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast2 = OASResponseFaresFast.getExample();
        OASResponseFaresFast responseFaresFast3 = new OASResponseFaresFast();
        OASResponseFaresFast responseFaresFast4 = new OASResponseFaresFast();

        System.assert(responseFaresFast1.equals(responseFaresFast2));
        System.assert(responseFaresFast3.equals(responseFaresFast4));
        System.assertEquals(responseFaresFast1.hashCode(), responseFaresFast2.hashCode());
        System.assertEquals(responseFaresFast3.hashCode(), responseFaresFast4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseFaresFast responseFaresFast = new OASResponseFaresFast();
        Map<String, String> x-property-mappings = responseFaresFast.getx-property-mappings();
        System.assertEquals('ticketsTotal', x-property-mappings.get('tickets_total'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        OASResponseFaresFast responseFaresFast = new OASResponseFaresFast();
        System.assertEquals(new List<OASResponseFareTicket>(), responseFaresFast.ticketsTotal);
    }
}
