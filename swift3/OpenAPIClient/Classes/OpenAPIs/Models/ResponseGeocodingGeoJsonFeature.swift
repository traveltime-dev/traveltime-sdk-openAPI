//
// ResponseGeocodingGeoJsonFeature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseGeocodingGeoJsonFeature: JSONEncodable {

    public var type: String?
    public var geometry: ResponseGeocodingGeometry?
    public var properties: ResponseGeocodingProperties?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["geometry"] = self.geometry?.encodeToJSON()
        nillableDictionary["properties"] = self.properties?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
