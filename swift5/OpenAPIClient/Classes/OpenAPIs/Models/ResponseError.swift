//
// ResponseError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct ResponseError: Codable { 


    public var httpStatus: Int?
    public var errorCode: Int?
    public var description: String?
    public var documentationLink: String?
    public var additionalInfo: [String:[String]]?

    public init(httpStatus: Int? = nil, errorCode: Int? = nil, description: String? = nil, documentationLink: String? = nil, additionalInfo: [String:[String]]? = nil) {
        self.httpStatus = httpStatus
        self.errorCode = errorCode
        self.description = description
        self.documentationLink = documentationLink
        self.additionalInfo = additionalInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case httpStatus = "http_status"
        case errorCode = "error_code"
        case description
        case documentationLink = "documentation_link"
        case additionalInfo = "additional_info"
    }

}