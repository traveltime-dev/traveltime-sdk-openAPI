//
// RequestTimeFilterProperty.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum RequestTimeFilterProperty: String, Codable, CaseIterable {
    case travelTime = "travel_time"
    case distance = "distance"
    case distanceBreakdown = "distance_breakdown"
    case fares = "fares"
    case route = "route"
}
