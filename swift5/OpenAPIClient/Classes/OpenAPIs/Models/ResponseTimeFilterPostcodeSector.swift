//
// ResponseTimeFilterPostcodeSector.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseTimeFilterPostcodeSector: Codable, Hashable {

    public var code: String
    public var properties: ResponseTimeFilterPostcodeSectorProperties

    public init(code: String, properties: ResponseTimeFilterPostcodeSectorProperties) {
        self.code = code
        self.properties = properties
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encode(properties, forKey: .properties)
    }
}
