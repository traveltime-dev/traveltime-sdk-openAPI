//
// RequestTimeFilterPostcodeSectors.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class RequestTimeFilterPostcodeSectors: JSONEncodable {
    public var departureSearches: [RequestTimeFilterPostcodeSectorsDepartureSearch]?
    public var arrivalSearches: [RequestTimeFilterPostcodeSectorsArrivalSearch]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["departure_searches"] = self.departureSearches?.encodeToJSON()
        nillableDictionary["arrival_searches"] = self.arrivalSearches?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}