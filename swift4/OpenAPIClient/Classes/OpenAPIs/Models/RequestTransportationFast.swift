//
// RequestTransportationFast.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct RequestTransportationFast: Codable {

    public enum ModelType: String, Codable {
        case publicTransport = "public_transport"
        case driving = "driving"
        case driving+publicTransport = "driving+public_transport"
    }
    public var type: ModelType

    public init(type: ModelType) {
        self.type = type
    }


}
