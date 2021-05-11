@isTest
private class OASResponseFareTicketTest {
    @isTest
    private static void equalsSameInstance() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = responseFareTicket1;
        OASResponseFareTicket responseFareTicket3 = new OASResponseFareTicket();
        OASResponseFareTicket responseFareTicket4 = responseFareTicket3;

        System.assert(responseFareTicket1.equals(responseFareTicket2));
        System.assert(responseFareTicket2.equals(responseFareTicket1));
        System.assert(responseFareTicket1.equals(responseFareTicket1));
        System.assert(responseFareTicket3.equals(responseFareTicket4));
        System.assert(responseFareTicket4.equals(responseFareTicket3));
        System.assert(responseFareTicket3.equals(responseFareTicket3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket3 = new OASResponseFareTicket();
        OASResponseFareTicket responseFareTicket4 = new OASResponseFareTicket();

        System.assert(responseFareTicket1.equals(responseFareTicket2));
        System.assert(responseFareTicket2.equals(responseFareTicket1));
        System.assert(responseFareTicket3.equals(responseFareTicket4));
        System.assert(responseFareTicket4.equals(responseFareTicket3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = new OASResponseFareTicket();

        System.assertEquals(false, responseFareTicket1.equals('foo'));
        System.assertEquals(false, responseFareTicket2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = new OASResponseFareTicket();
        OASResponseFareTicket responseFareTicket3;

        System.assertEquals(false, responseFareTicket1.equals(responseFareTicket3));
        System.assertEquals(false, responseFareTicket2.equals(responseFareTicket3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = new OASResponseFareTicket();

        System.assertEquals(responseFareTicket1.hashCode(), responseFareTicket1.hashCode());
        System.assertEquals(responseFareTicket2.hashCode(), responseFareTicket2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASResponseFareTicket responseFareTicket1 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket2 = OASResponseFareTicket.getExample();
        OASResponseFareTicket responseFareTicket3 = new OASResponseFareTicket();
        OASResponseFareTicket responseFareTicket4 = new OASResponseFareTicket();

        System.assert(responseFareTicket1.equals(responseFareTicket2));
        System.assert(responseFareTicket3.equals(responseFareTicket4));
        System.assertEquals(responseFareTicket1.hashCode(), responseFareTicket2.hashCode());
        System.assertEquals(responseFareTicket3.hashCode(), responseFareTicket4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        OASResponseFareTicket responseFareTicket = new OASResponseFareTicket();
        Map<String, String> x-property-mappings = responseFareTicket.getx-property-mappings();
        System.assertEquals('r_currency', x-property-mappings.get('currency'));
    }
}
