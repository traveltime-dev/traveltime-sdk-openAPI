//
// ResponseTimeFilterPostcodeSector.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class ResponseTimeFilterPostcodeSector: JSONEncodable {
    public var code: ModelString?
    public var properties: ResponseTimeFilterPostcodeSectorProperties?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["code"] = self.code?.encodeToJSON()
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}