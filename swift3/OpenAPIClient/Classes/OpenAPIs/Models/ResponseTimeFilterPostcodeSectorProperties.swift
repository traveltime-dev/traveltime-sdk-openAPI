//
// ResponseTimeFilterPostcodeSectorProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class ResponseTimeFilterPostcodeSectorProperties: JSONEncodable {

    public var travelTimeReachable: ResponseTravelTimeStatistics?
    public var travelTimeAll: ResponseTravelTimeStatistics?
    public var coverage: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["travel_time_reachable"] = self.travelTimeReachable?.encodeToJSON()
        nillableDictionary["travel_time_all"] = self.travelTimeAll?.encodeToJSON()
        nillableDictionary["coverage"] = self.coverage

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
