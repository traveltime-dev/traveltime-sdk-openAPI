//
// ResponseTimeFilterLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseTimeFilterLocation: JSONEncodable {

    public var id: String?
    public var properties: [ResponseTimeFilterProperties]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["properties"] = self.properties?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
