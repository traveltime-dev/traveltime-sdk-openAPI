//
// ResponseSupportedLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseSupportedLocation: Codable, Hashable {

    public var id: String
    public var mapName: String

    public init(id: String, mapName: String) {
        self.id = id
        self.mapName = mapName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case mapName = "map_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(mapName, forKey: .mapName)
    }
}
