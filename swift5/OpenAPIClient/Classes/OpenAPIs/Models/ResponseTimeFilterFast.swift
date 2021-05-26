//
// ResponseTimeFilterFast.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResponseTimeFilterFast: Codable, Hashable {

    public var results: [ResponseTimeFilterFastResult]

    public init(results: [ResponseTimeFilterFastResult]) {
        self.results = results
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case results
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(results, forKey: .results)
    }
}
