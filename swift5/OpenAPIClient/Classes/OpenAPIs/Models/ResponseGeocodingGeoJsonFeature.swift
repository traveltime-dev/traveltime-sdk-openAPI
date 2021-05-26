//
// ResponseGeocodingGeoJsonFeature.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseGeocodingGeoJsonFeature: Codable, Hashable {

    public var type: String
    public var geometry: ResponseGeocodingGeometry
    public var properties: ResponseGeocodingProperties

    public init(type: String, geometry: ResponseGeocodingGeometry, properties: ResponseGeocodingProperties) {
        self.type = type
        self.geometry = geometry
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case geometry
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(geometry, forKey: .geometry)
        try container.encode(properties, forKey: .properties)
    }
}
