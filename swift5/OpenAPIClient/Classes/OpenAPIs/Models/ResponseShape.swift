//
// ResponseShape.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseShape: Codable, Hashable {

    public var shell: [Coords]
    public var holes: [[Coords]]

    public init(shell: [Coords], holes: [[Coords]]) {
        self.shell = shell
        self.holes = holes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case shell
        case holes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(shell, forKey: .shell)
        try container.encode(holes, forKey: .holes)
    }
}
