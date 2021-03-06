//
// ResponseTimeMapWktResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseTimeMapWktResult: Codable, Hashable {

    public var searchId: String
    public var shape: String
    public var properties: ResponseTimeMapProperties

    public init(searchId: String, shape: String, properties: ResponseTimeMapProperties) {
        self.searchId = searchId
        self.shape = shape
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchId = "search_id"
        case shape
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(searchId, forKey: .searchId)
        try container.encode(shape, forKey: .shape)
        try container.encode(properties, forKey: .properties)
    }
}
