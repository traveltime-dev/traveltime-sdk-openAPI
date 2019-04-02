=begin
#TravelTime Platform API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0.0
Contact: support@igeolise.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module OpenapiClient
  class RequestTimeFilterPostcodeDistrictsProperty
    
    TRAVEL_TIME_REACHABLE = 'travel_time_reachable'.freeze
    TRAVEL_TIME_ALL = 'travel_time_all'.freeze
    COVERAGE = 'coverage'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RequestTimeFilterPostcodeDistrictsProperty.constants.select { |c| RequestTimeFilterPostcodeDistrictsProperty::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RequestTimeFilterPostcodeDistrictsProperty" if constantValues.empty?
      value
    end
  end
end