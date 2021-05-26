//
// ResponseTimeFilterFastLocation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseTimeFilterFastLocation: Codable, Hashable {

    public var id: String
    public var properties: [ResponseTimeFilterFastProperties]

    public init(id: String, properties: [ResponseTimeFilterFastProperties]) {
        self.id = id
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(properties, forKey: .properties)
    }
}
