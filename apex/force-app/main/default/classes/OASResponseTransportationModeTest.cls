@isTest
private class OASResponseTransportationModeTest {
    @isTest
    private static void allowableValues() {
        Set<OASResponseTransportationMode> expected = new Set<OASResponseTransportationMode>{
            OASResponseTransportationMode.CAR,
            OASResponseTransportationMode.PARKING,
            OASResponseTransportationMode.BOARDING,
            OASResponseTransportationMode.WALK,
            OASResponseTransportationMode.BIKE,
            OASResponseTransportationMode.TRAIN,
            OASResponseTransportationMode.RAIL_NATIONAL,
            OASResponseTransportationMode.RAIL_OVERGROUND,
            OASResponseTransportationMode.RAIL_UNDERGROUND,
            OASResponseTransportationMode.RAIL_DLR,
            OASResponseTransportationMode.BUS,
            OASResponseTransportationMode.CABLE_CAR,
            OASResponseTransportationMode.PLANE,
            OASResponseTransportationMode.FERRY,
            OASResponseTransportationMode.COACH
        };
        Set<OASResponseTransportationMode> actual  = new Set<OASResponseTransportationMode>(OASResponseTransportationMode.values());
        System.assertEquals(expected, actual);
    }
}
