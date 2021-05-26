//
// ResponseMapInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseMapInfo: Codable, Hashable {

    public var maps: [ResponseMapInfoMap]

    public init(maps: [ResponseMapInfoMap]) {
        self.maps = maps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(maps, forKey: .maps)
    }
}
