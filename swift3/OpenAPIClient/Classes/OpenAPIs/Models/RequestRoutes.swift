//
// RequestRoutes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class RequestRoutes: JSONEncodable {

    public var locations: [RequestLocation]?
    public var departureSearches: [RequestRoutesDepartureSearch]?
    public var arrivalSearches: [RequestRoutesArrivalSearch]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["locations"] = self.locations?.encodeToJSON()
        nillableDictionary["departure_searches"] = self.departureSearches?.encodeToJSON()
        nillableDictionary["arrival_searches"] = self.arrivalSearches?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
