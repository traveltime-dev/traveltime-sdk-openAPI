//
// ResponseTimeMapResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ResponseTimeMapResult: Codable, Hashable {

    public var searchId: String
    public var shapes: [ResponseShape]
    public var properties: ResponseTimeMapProperties

    public init(searchId: String, shapes: [ResponseShape], properties: ResponseTimeMapProperties) {
        self.searchId = searchId
        self.shapes = shapes
        self.properties = properties
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchId = "search_id"
        case shapes
        case properties
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(searchId, forKey: .searchId)
        try container.encode(shapes, forKey: .shapes)
        try container.encode(properties, forKey: .properties)
    }



}
