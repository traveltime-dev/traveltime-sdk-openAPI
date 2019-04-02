//
// ResponseTimeFilterPostcodesProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct ResponseTimeFilterPostcodesProperties: Codable {

    public var travelTime: Int?
    public var distance: Int?

    public init(travelTime: Int?, distance: Int?) {
        self.travelTime = travelTime
        self.distance = distance
    }

    public enum CodingKeys: String, CodingKey { 
        case travelTime = "travel_time"
        case distance
    }


}
