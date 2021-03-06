//
// ResponseTransportationMode.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum ResponseTransportationMode: String, Codable, CaseIterable {
    case car = "car"
    case parking = "parking"
    case boarding = "boarding"
    case walk = "walk"
    case bike = "bike"
    case train = "train"
    case railNational = "rail_national"
    case railOverground = "rail_overground"
    case railUnderground = "rail_underground"
    case railDlr = "rail_dlr"
    case bus = "bus"
    case cableCar = "cable_car"
    case plane = "plane"
    case ferry = "ferry"
    case coach = "coach"
}
