//
// RequestTimeFilterArrivalSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct RequestTimeFilterArrivalSearch: Codable, Hashable {

    public var id: String
    public var departureLocationIds: [String]
    public var arrivalLocationId: String
    public var transportation: RequestTransportation
    public var travelTime: Int
    public var arrivalTime: Date
    public var properties: [RequestTimeFilterProperty]
    public var range: RequestRangeFull?

    public init(id: String, departureLocationIds: [String], arrivalLocationId: String, transportation: RequestTransportation, travelTime: Int, arrivalTime: Date, properties: [RequestTimeFilterProperty], range: RequestRangeFull? = nil) {
        self.id = id
        self.departureLocationIds = departureLocationIds
        self.arrivalLocationId = arrivalLocationId
        self.transportation = transportation
        self.travelTime = travelTime
        self.arrivalTime = arrivalTime
        self.properties = properties
        self.range = range
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case departureLocationIds = "departure_location_ids"
        case arrivalLocationId = "arrival_location_id"
        case transportation
        case travelTime = "travel_time"
        case arrivalTime = "arrival_time"
        case properties
        case range
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(departureLocationIds, forKey: .departureLocationIds)
        try container.encode(arrivalLocationId, forKey: .arrivalLocationId)
        try container.encode(transportation, forKey: .transportation)
        try container.encode(travelTime, forKey: .travelTime)
        try container.encode(arrivalTime, forKey: .arrivalTime)
        try container.encode(properties, forKey: .properties)
        try container.encodeIfPresent(range, forKey: .range)
    }



}
