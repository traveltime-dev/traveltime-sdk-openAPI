//
// ResponseRoutePart.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ResponseRoutePart: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case basic = "basic"
        case startEnd = "start_end"
        case road = "road"
        case publicTransport = "public_transport"
    }
    public var id: String
    public var type: ModelType
    public var mode: ResponseTransportationMode
    public var directions: String
    public var distance: Int
    public var travelTime: Int
    public var coords: [Coords]
    public var direction: String?
    public var road: String?
    public var turn: String?
    public var line: String?
    public var departureStation: String?
    public var arrivalStation: String?
    public var departsAt: String?
    public var arrivesAt: String?
    public var numStops: Int?

    public init(id: String, type: ModelType, mode: ResponseTransportationMode, directions: String, distance: Int, travelTime: Int, coords: [Coords], direction: String? = nil, road: String? = nil, turn: String? = nil, line: String? = nil, departureStation: String? = nil, arrivalStation: String? = nil, departsAt: String? = nil, arrivesAt: String? = nil, numStops: Int? = nil) {
        self.id = id
        self.type = type
        self.mode = mode
        self.directions = directions
        self.distance = distance
        self.travelTime = travelTime
        self.coords = coords
        self.direction = direction
        self.road = road
        self.turn = turn
        self.line = line
        self.departureStation = departureStation
        self.arrivalStation = arrivalStation
        self.departsAt = departsAt
        self.arrivesAt = arrivesAt
        self.numStops = numStops
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case mode
        case directions
        case distance
        case travelTime = "travel_time"
        case coords
        case direction
        case road
        case turn
        case line
        case departureStation = "departure_station"
        case arrivalStation = "arrival_station"
        case departsAt = "departs_at"
        case arrivesAt = "arrives_at"
        case numStops = "num_stops"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(mode, forKey: .mode)
        try container.encode(directions, forKey: .directions)
        try container.encode(distance, forKey: .distance)
        try container.encode(travelTime, forKey: .travelTime)
        try container.encode(coords, forKey: .coords)
        try container.encodeIfPresent(direction, forKey: .direction)
        try container.encodeIfPresent(road, forKey: .road)
        try container.encodeIfPresent(turn, forKey: .turn)
        try container.encodeIfPresent(line, forKey: .line)
        try container.encodeIfPresent(departureStation, forKey: .departureStation)
        try container.encodeIfPresent(arrivalStation, forKey: .arrivalStation)
        try container.encodeIfPresent(departsAt, forKey: .departsAt)
        try container.encodeIfPresent(arrivesAt, forKey: .arrivesAt)
        try container.encodeIfPresent(numStops, forKey: .numStops)
    }



}
