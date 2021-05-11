//
// RequestTimeFilterPostcodeDistrictsDepartureSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct RequestTimeFilterPostcodeDistrictsDepartureSearch: Codable, Hashable {

    public var id: String
    public var transportation: RequestTransportation
    public var travelTime: Int
    public var departureTime: Date
    public var reachablePostcodesThreshold: Double
    public var properties: [RequestTimeFilterPostcodeDistrictsProperty]
    public var range: RequestRangeFull?

    public init(id: String, transportation: RequestTransportation, travelTime: Int, departureTime: Date, reachablePostcodesThreshold: Double, properties: [RequestTimeFilterPostcodeDistrictsProperty], range: RequestRangeFull? = nil) {
        self.id = id
        self.transportation = transportation
        self.travelTime = travelTime
        self.departureTime = departureTime
        self.reachablePostcodesThreshold = reachablePostcodesThreshold
        self.properties = properties
        self.range = range
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case transportation
        case travelTime = "travel_time"
        case departureTime = "departure_time"
        case reachablePostcodesThreshold = "reachable_postcodes_threshold"
        case properties
        case range
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(transportation, forKey: .transportation)
        try container.encode(travelTime, forKey: .travelTime)
        try container.encode(departureTime, forKey: .departureTime)
        try container.encode(reachablePostcodesThreshold, forKey: .reachablePostcodesThreshold)
        try container.encode(properties, forKey: .properties)
        try container.encodeIfPresent(range, forKey: .range)
    }



}
