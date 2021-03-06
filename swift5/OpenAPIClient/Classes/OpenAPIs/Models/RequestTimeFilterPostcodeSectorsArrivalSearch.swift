//
// RequestTimeFilterPostcodeSectorsArrivalSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RequestTimeFilterPostcodeSectorsArrivalSearch: Codable, Hashable {

    public var id: String
    public var transportation: RequestTransportation
    public var travelTime: Int
    public var arrivalTime: Date
    public var reachablePostcodesThreshold: Double
    public var properties: [RequestTimeFilterPostcodeSectorsProperty]
    public var range: RequestRangeFull?

    public init(id: String, transportation: RequestTransportation, travelTime: Int, arrivalTime: Date, reachablePostcodesThreshold: Double, properties: [RequestTimeFilterPostcodeSectorsProperty], range: RequestRangeFull? = nil) {
        self.id = id
        self.transportation = transportation
        self.travelTime = travelTime
        self.arrivalTime = arrivalTime
        self.reachablePostcodesThreshold = reachablePostcodesThreshold
        self.properties = properties
        self.range = range
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case transportation
        case travelTime = "travel_time"
        case arrivalTime = "arrival_time"
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
        try container.encode(arrivalTime, forKey: .arrivalTime)
        try container.encode(reachablePostcodesThreshold, forKey: .reachablePostcodesThreshold)
        try container.encode(properties, forKey: .properties)
        try container.encodeIfPresent(range, forKey: .range)
    }
}
