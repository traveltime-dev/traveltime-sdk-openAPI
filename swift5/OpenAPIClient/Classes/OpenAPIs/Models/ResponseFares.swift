//
// ResponseFares.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ResponseFares: Codable { 


    public var breakdown: [ResponseFaresBreakdownItem]
    public var ticketsTotal: [ResponseFareTicket]

    public init(breakdown: [ResponseFaresBreakdownItem], ticketsTotal: [ResponseFareTicket]) {
        self.breakdown = breakdown
        self.ticketsTotal = ticketsTotal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case breakdown
        case ticketsTotal = "tickets_total"
    }

}