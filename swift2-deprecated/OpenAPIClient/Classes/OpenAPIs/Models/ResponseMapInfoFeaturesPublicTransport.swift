//
// ResponseMapInfoFeaturesPublicTransport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class ResponseMapInfoFeaturesPublicTransport: JSONEncodable {
    public var dateStart: NSDate?
    public var dateEnd: NSDate?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["date_start"] = self.dateStart?.encodeToJSON()
        nillableDictionary["date_end"] = self.dateEnd?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}