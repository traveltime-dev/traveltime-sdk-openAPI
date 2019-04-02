//
// RequestTimeFilterPostcodes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct RequestTimeFilterPostcodes: Codable {

    public var departureSearches: [RequestTimeFilterPostcodesDepartureSearch]?
    public var arrivalSearches: [RequestTimeFilterPostcodesArrivalSearch]?

    public init(departureSearches: [RequestTimeFilterPostcodesDepartureSearch]?, arrivalSearches: [RequestTimeFilterPostcodesArrivalSearch]?) {
        self.departureSearches = departureSearches
        self.arrivalSearches = arrivalSearches
    }

    public enum CodingKeys: String, CodingKey { 
        case departureSearches = "departure_searches"
        case arrivalSearches = "arrival_searches"
    }


}
