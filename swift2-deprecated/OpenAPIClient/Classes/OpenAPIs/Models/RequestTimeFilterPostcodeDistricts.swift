//
// RequestTimeFilterPostcodeDistricts.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public class RequestTimeFilterPostcodeDistricts: JSONEncodable {
    public var departureSearches: [RequestTimeFilterPostcodeDistrictsDepartureSearch]?
    public var arrivalSearches: [RequestTimeFilterPostcodeDistrictsArrivalSearch]?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["departure_searches"] = self.departureSearches?.encodeToJSON()
        nillableDictionary["arrival_searches"] = self.arrivalSearches?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}