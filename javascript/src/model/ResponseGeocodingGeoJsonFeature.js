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
import ResponseGeocodingGeometry from './ResponseGeocodingGeometry';
import ResponseGeocodingProperties from './ResponseGeocodingProperties';

/**
 * The ResponseGeocodingGeoJsonFeature model module.
 * @module model/ResponseGeocodingGeoJsonFeature
 * @version 1.2.3
 */
class ResponseGeocodingGeoJsonFeature {
    /**
     * Constructs a new <code>ResponseGeocodingGeoJsonFeature</code>.
     * @alias module:model/ResponseGeocodingGeoJsonFeature
     * @param type {String} 
     * @param geometry {module:model/ResponseGeocodingGeometry} 
     * @param properties {module:model/ResponseGeocodingProperties} 
     */
    constructor(type, geometry, properties) { 
        
        ResponseGeocodingGeoJsonFeature.initialize(this, type, geometry, properties);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj, type, geometry, properties) { 
        obj['type'] = type;
        obj['geometry'] = geometry;
        obj['properties'] = properties;
    }

    /**
     * Constructs a <code>ResponseGeocodingGeoJsonFeature</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/ResponseGeocodingGeoJsonFeature} obj Optional instance to populate.
     * @return {module:model/ResponseGeocodingGeoJsonFeature} The populated <code>ResponseGeocodingGeoJsonFeature</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new ResponseGeocodingGeoJsonFeature();

            if (data.hasOwnProperty('type')) {
                obj['type'] = ApiClient.convertToType(data['type'], 'String');
            }
            if (data.hasOwnProperty('geometry')) {
                obj['geometry'] = ResponseGeocodingGeometry.constructFromObject(data['geometry']);
            }
            if (data.hasOwnProperty('properties')) {
                obj['properties'] = ResponseGeocodingProperties.constructFromObject(data['properties']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} type
 */
ResponseGeocodingGeoJsonFeature.prototype['type'] = undefined;

/**
 * @member {module:model/ResponseGeocodingGeometry} geometry
 */
ResponseGeocodingGeoJsonFeature.prototype['geometry'] = undefined;

/**
 * @member {module:model/ResponseGeocodingProperties} properties
 */
ResponseGeocodingGeoJsonFeature.prototype['properties'] = undefined;






export default ResponseGeocodingGeoJsonFeature;

