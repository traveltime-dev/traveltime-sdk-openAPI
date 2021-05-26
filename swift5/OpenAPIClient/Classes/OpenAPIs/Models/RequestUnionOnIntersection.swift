//
// RequestUnionOnIntersection.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RequestUnionOnIntersection: Codable, Hashable {

    public var id: String
    public var searchIds: [String]

    public init(id: String, searchIds: [String]) {
        self.id = id
        self.searchIds = searchIds
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case searchIds = "search_ids"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(searchIds, forKey: .searchIds)
    }
}
