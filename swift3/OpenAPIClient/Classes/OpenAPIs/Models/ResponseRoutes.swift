//
// ResponseRoutes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseRoutes: JSONEncodable {

    public var results: [ResponseRoutesResult]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["results"] = self.results?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
