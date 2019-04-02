//
// RequestRoutes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class RequestRoutes: JSONEncodable {
    public var locations: [RequestLocation]?
    public var departureSearches: [RequestRoutesDepartureSearch]?
    public var arrivalSearches: [RequestRoutesArrivalSearch]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["locations"] = self.locations?.encodeToJSON()
        nillableDictionary["departure_searches"] = self.departureSearches?.encodeToJSON()
        nillableDictionary["arrival_searches"] = self.arrivalSearches?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}