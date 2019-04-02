/*
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by the OAS code generator program.
 * https://github.com/OAS-api/OAS-codegen.git
 * Do not edit the class manually.
 */

/**
 * OASResponseShape
 */
public class OASResponseShape {
    /**
     * Get shell
     * @return shell
     */
    public List<OASCoords> shell { get; set; }

    /**
     * Get holes
     * @return holes
     */
    public List<List<OASCoords>> holes { get; set; }

    public OASResponseShape() {
        shell = new List<OASCoords>();
        holes = new List<List<OASCoords>>();
    }

    public static OASResponseShape getExample() {
        OASResponseShape responseShape = new OASResponseShape();
          responseShape.shell = new List<OASCoords>{OASCoords.getExample()};
          responseShape.holes = new List<List<OASCoords>>{new List<OASCoords>{OASCoords.getExample()}};
        return responseShape;
    }

    public Boolean equals(Object obj) {
        if (obj instanceof OASResponseShape) {           
            OASResponseShape responseShape = (OASResponseShape) obj;
            return this.shell == responseShape.shell
                && this.holes == responseShape.holes;
        }
        return false;
    }

    public Integer hashCode() {
        Integer hashCode = 43;
        hashCode = (17 * hashCode) + (shell == null ? 0 : System.hashCode(shell));
        hashCode = (17 * hashCode) + (holes == null ? 0 : System.hashCode(holes));
        return hashCode;
    }
}
