//
// ResponseMapInfoMap.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseMapInfoMap: Codable, Hashable {

    public var name: String
    public var features: ResponseMapInfoFeatures

    public init(name: String, features: ResponseMapInfoFeatures) {
        self.name = name
        self.features = features
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case features
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(features, forKey: .features)
    }
}
