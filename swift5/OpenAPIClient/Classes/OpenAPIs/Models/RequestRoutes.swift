//
// RequestRoutes.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct RequestRoutes: Codable, Hashable {

    public var locations: [RequestLocation]
    public var departureSearches: [RequestRoutesDepartureSearch]?
    public var arrivalSearches: [RequestRoutesArrivalSearch]?

    public init(locations: [RequestLocation], departureSearches: [RequestRoutesDepartureSearch]? = nil, arrivalSearches: [RequestRoutesArrivalSearch]? = nil) {
        self.locations = locations
        self.departureSearches = departureSearches
        self.arrivalSearches = arrivalSearches
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locations
        case departureSearches = "departure_searches"
        case arrivalSearches = "arrival_searches"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(locations, forKey: .locations)
        try container.encodeIfPresent(departureSearches, forKey: .departureSearches)
        try container.encodeIfPresent(arrivalSearches, forKey: .arrivalSearches)
    }



}
