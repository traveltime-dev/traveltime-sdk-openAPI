@isTest
private class OASCoordsTest {
    @isTest
    private static void equalsSameInstance() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = coords1;
        OASCoords coords3 = new OASCoords();
        OASCoords coords4 = coords3;

        System.assert(coords1.equals(coords2));
        System.assert(coords2.equals(coords1));
        System.assert(coords1.equals(coords1));
        System.assert(coords3.equals(coords4));
        System.assert(coords4.equals(coords3));
        System.assert(coords3.equals(coords3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = OASCoords.getExample();
        OASCoords coords3 = new OASCoords();
        OASCoords coords4 = new OASCoords();

        System.assert(coords1.equals(coords2));
        System.assert(coords2.equals(coords1));
        System.assert(coords3.equals(coords4));
        System.assert(coords4.equals(coords3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = new OASCoords();

        System.assertEquals(false, coords1.equals('foo'));
        System.assertEquals(false, coords2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = new OASCoords();
        OASCoords coords3;

        System.assertEquals(false, coords1.equals(coords3));
        System.assertEquals(false, coords2.equals(coords3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = new OASCoords();

        System.assertEquals(coords1.hashCode(), coords1.hashCode());
        System.assertEquals(coords2.hashCode(), coords2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        OASCoords coords1 = OASCoords.getExample();
        OASCoords coords2 = OASCoords.getExample();
        OASCoords coords3 = new OASCoords();
        OASCoords coords4 = new OASCoords();

        System.assert(coords1.equals(coords2));
        System.assert(coords3.equals(coords4));
        System.assertEquals(coords1.hashCode(), coords2.hashCode());
        System.assertEquals(coords3.hashCode(), coords4.hashCode());
    }
}
