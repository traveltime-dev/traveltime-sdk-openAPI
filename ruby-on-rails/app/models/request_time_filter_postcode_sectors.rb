=begin
TravelTime API

No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.2.2
Contact: support@igeolise.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end


class RequestTimeFilterPostcodeSectors < ApplicationRecord

  serialize :departure_searches, Array
  serialize :arrival_searches, Array
end
