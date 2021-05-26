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

/**
 * The RequestLevelOfDetail model module.
 * @module model/RequestLevelOfDetail
 * @version 1.2.3
 */
class RequestLevelOfDetail {
    /**
     * Constructs a new <code>RequestLevelOfDetail</code>.
     * @alias module:model/RequestLevelOfDetail
     * @param scaleType {module:model/RequestLevelOfDetail.ScaleTypeEnum} 
     * @param level {module:model/RequestLevelOfDetail.LevelEnum} 
     */
    constructor(scaleType, level) { 
        
        RequestLevelOfDetail.initialize(this, scaleType, level);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, scaleType, level) { 
        obj['scale_type'] = scaleType;
        obj['level'] = level;
    }

    /**
     * Constructs a <code>RequestLevelOfDetail</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/RequestLevelOfDetail} obj Optional instance to populate.
     * @return {module:model/RequestLevelOfDetail} The populated <code>RequestLevelOfDetail</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new RequestLevelOfDetail();

            if (data.hasOwnProperty('scale_type')) {
                obj['scale_type'] = ApiClient.convertToType(data['scale_type'], 'String');
            }
            if (data.hasOwnProperty('level')) {
                obj['level'] = ApiClient.convertToType(data['level'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/RequestLevelOfDetail.ScaleTypeEnum} scale_type
 */
RequestLevelOfDetail.prototype['scale_type'] = undefined;

/**
 * @member {module:model/RequestLevelOfDetail.LevelEnum} level
 */
RequestLevelOfDetail.prototype['level'] = undefined;





/**
 * Allowed values for the <code>scale_type</code> property.
 * @enum {String}
 * @readonly
 */
RequestLevelOfDetail['ScaleTypeEnum'] = {

    /**
     * value: "simple"
     * @const
     */
    "simple": "simple"
};


/**
 * Allowed values for the <code>level</code> property.
 * @enum {String}
 * @readonly
 */
RequestLevelOfDetail['LevelEnum'] = {

    /**
     * value: "lowest"
     * @const
     */
    "lowest": "lowest",

    /**
     * value: "low"
     * @const
     */
    "low": "low",

    /**
     * value: "medium"
     * @const
     */
    "medium": "medium",

    /**
     * value: "high"
     * @const
     */
    "high": "high",

    /**
     * value: "highest"
     * @const
     */
    "highest": "highest"
};



export default RequestLevelOfDetail;

