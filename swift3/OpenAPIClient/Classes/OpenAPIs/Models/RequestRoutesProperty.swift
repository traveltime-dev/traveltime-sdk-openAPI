//
// RequestRoutesProperty.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public enum RequestRoutesProperty: String {
    case travelTime = "travel_time"
    case distance = "distance"
    case fares = "fares"
    case route = "route"

    func encodeToJSON() -> Any { return self.rawValue }
}