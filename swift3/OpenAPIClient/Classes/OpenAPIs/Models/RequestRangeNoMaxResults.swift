//
// RequestRangeNoMaxResults.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class RequestRangeNoMaxResults: JSONEncodable {

    public var enabled: Bool?
    public var width: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["enabled"] = self.enabled
        nillableDictionary["width"] = self.width?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
