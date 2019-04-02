//
// ResponseShape.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseShape: JSONEncodable {

    public var shell: [Coords]?
    public var holes: [[Coords]]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["shell"] = self.shell?.encodeToJSON()
        nillableDictionary["holes"] = self.holes?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
