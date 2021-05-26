//
// RequestRoutesDepartureSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RequestRoutesDepartureSearch: Codable, Hashable {

    public var id: String
    public var departureLocationId: String
    public var arrivalLocationIds: [String]
    public var transportation: RequestTransportation
    public var departureTime: Date
    public var properties: [RequestRoutesProperty]
    public var range: RequestRangeFull?

    public init(id: String, departureLocationId: String, arrivalLocationIds: [String], transportation: RequestTransportation, departureTime: Date, properties: [RequestRoutesProperty], range: RequestRangeFull? = nil) {
        self.id = id
        self.departureLocationId = departureLocationId
        self.arrivalLocationIds = arrivalLocationIds
        self.transportation = transportation
        self.departureTime = departureTime
        self.properties = properties
        self.range = range
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case departureLocationId = "departure_location_id"
        case arrivalLocationIds = "arrival_location_ids"
        case transportation
        case departureTime = "departure_time"
        case properties
        case range
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(departureLocationId, forKey: .departureLocationId)
        try container.encode(arrivalLocationIds, forKey: .arrivalLocationIds)
        try container.encode(transportation, forKey: .transportation)
        try container.encode(departureTime, forKey: .departureTime)
        try container.encode(properties, forKey: .properties)
        try container.encodeIfPresent(range, forKey: .range)
    }
}
