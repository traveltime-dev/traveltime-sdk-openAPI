//
// RequestTimeFilterPostcodesArrivalSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct RequestTimeFilterPostcodesArrivalSearch: Codable {

    public var _id: String
    public var transportation: RequestTransportation
    public var travelTime: Int
    public var arrivalTime: Date
    public var properties: [RequestTimeFilterPostcodesProperty]
    public var range: RequestRangeFull?

    public init(_id: String, transportation: RequestTransportation, travelTime: Int, arrivalTime: Date, properties: [RequestTimeFilterPostcodesProperty], range: RequestRangeFull?) {
        self._id = _id
        self.transportation = transportation
        self.travelTime = travelTime
        self.arrivalTime = arrivalTime
        self.properties = properties
        self.range = range
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case transportation
        case travelTime = "travel_time"
        case arrivalTime = "arrival_time"
        case properties
        case range
    }


}
