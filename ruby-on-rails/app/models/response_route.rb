=begin
TravelTime API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.2.3
Contact: support@igeolise.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end


class ResponseRoute < ApplicationRecord
  validates_presence_of :departure_time
  validates_presence_of :arrival_time
  validates_presence_of :parts

  serialize :parts, Array
end
