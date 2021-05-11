//
// RequestTimeMapDepartureSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct RequestTimeMapDepartureSearch: Codable, Hashable {

    public var id: String
    public var coords: Coords
    public var transportation: RequestTransportation
    public var travelTime: Int
    public var departureTime: Date
    public var properties: [RequestTimeMapProperty]?
    public var range: RequestRangeNoMaxResults?

    public init(id: String, coords: Coords, transportation: RequestTransportation, travelTime: Int, departureTime: Date, properties: [RequestTimeMapProperty]? = nil, range: RequestRangeNoMaxResults? = nil) {
        self.id = id
        self.coords = coords
        self.transportation = transportation
        self.travelTime = travelTime
        self.departureTime = departureTime
        self.properties = properties
        self.range = range
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case coords
        case transportation
        case travelTime = "travel_time"
        case departureTime = "departure_time"
        case properties
        case range
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(coords, forKey: .coords)
        try container.encode(transportation, forKey: .transportation)
        try container.encode(travelTime, forKey: .travelTime)
        try container.encode(departureTime, forKey: .departureTime)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(range, forKey: .range)
    }



}
