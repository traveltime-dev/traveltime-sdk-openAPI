/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import ResponseBox from './ResponseBox';

/**
 * The ResponseBoundingBox model module.
 * @module model/ResponseBoundingBox
 * @version 1.2.3
 */
class ResponseBoundingBox {
    /**
     * Constructs a new <code>ResponseBoundingBox</code>.
     * @alias module:model/ResponseBoundingBox
     * @param envelope {module:model/ResponseBox} 
     * @param boxes {Array.<module:model/ResponseBox>} 
     */
    constructor(envelope, boxes) { 
        
        ResponseBoundingBox.initialize(this, envelope, boxes);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, envelope, boxes) { 
        obj['envelope'] = envelope;
        obj['boxes'] = boxes;
    }

    /**
     * Constructs a <code>ResponseBoundingBox</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseBoundingBox} obj Optional instance to populate.
     * @return {module:model/ResponseBoundingBox} The populated <code>ResponseBoundingBox</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseBoundingBox();

            if (data.hasOwnProperty('envelope')) {
                obj['envelope'] = ResponseBox.constructFromObject(data['envelope']);
            }
            if (data.hasOwnProperty('boxes')) {
                obj['boxes'] = ApiClient.convertToType(data['boxes'], [ResponseBox]);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/ResponseBox} envelope
 */
ResponseBoundingBox.prototype['envelope'] = undefined;

/**
 * @member {Array.<module:model/ResponseBox>} boxes
 */
ResponseBoundingBox.prototype['boxes'] = undefined;






export default ResponseBoundingBox;

