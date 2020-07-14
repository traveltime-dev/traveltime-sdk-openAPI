//
// RequestTimeFilterFast.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct RequestTimeFilterFast: Codable { 


    public var locations: [RequestLocation]
    public var arrivalSearches: RequestTimeFilterFastArrivalSearches

    public init(locations: [RequestLocation], arrivalSearches: RequestTimeFilterFastArrivalSearches) {
        self.locations = locations
        self.arrivalSearches = arrivalSearches
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case locations
        case arrivalSearches = "arrival_searches"
    }

}