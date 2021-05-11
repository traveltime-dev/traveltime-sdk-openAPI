//
// ResponseFareTicket.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct ResponseFareTicket: Codable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case single = "single"
        case week = "week"
        case month = "month"
        case year = "year"
    }
    public var type: ModelType
    public var price: Double
    public var currency: String

    public init(type: ModelType, price: Double, currency: String) {
        self.type = type
        self.price = price
        self.currency = currency
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case price
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(price, forKey: .price)
        try container.encode(currency, forKey: .currency)
    }



}
