//
// ResponseTimeFilterResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ResponseTimeFilterResult: Codable, Hashable {

    public var searchId: String
    public var locations: [ResponseTimeFilterLocation]
    public var unreachable: [String]

    public init(searchId: String, locations: [ResponseTimeFilterLocation], unreachable: [String]) {
        self.searchId = searchId
        self.locations = locations
        self.unreachable = unreachable
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchId = "search_id"
        case locations
        case unreachable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(searchId, forKey: .searchId)
        try container.encode(locations, forKey: .locations)
        try container.encode(unreachable, forKey: .unreachable)
    }



}
