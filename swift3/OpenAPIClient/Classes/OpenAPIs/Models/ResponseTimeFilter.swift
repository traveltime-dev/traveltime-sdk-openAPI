//
// ResponseTimeFilter.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseTimeFilter: JSONEncodable {

    public var results: [ResponseTimeFilterResult]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["results"] = self.results?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
