=begin
TravelTime Platform API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: 1.0.0
Contact: support@igeolise.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end


class ResponseTimeMapWktResult < ApplicationRecord
  validates_presence_of :search_id
  validates_presence_of :shape
  validates_presence_of :properties

end