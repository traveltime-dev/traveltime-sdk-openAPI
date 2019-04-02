//
// RequestLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class RequestLocation: JSONEncodable {
    public var id: String?
    public var coords: Coords?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["coords"] = self.coords?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}