//
// ResponseTimeFilterFastProperties.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct ResponseTimeFilterFastProperties: Codable {

    public var travelTime: Int?
    public var fares: ResponseFaresFast?

    public init(travelTime: Int?, fares: ResponseFaresFast?) {
        self.travelTime = travelTime
        self.fares = fares
    }

    public enum CodingKeys: String, CodingKey { 
        case travelTime = "travel_time"
        case fares
    }


}
