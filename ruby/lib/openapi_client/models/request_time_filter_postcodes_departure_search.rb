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
  class RequestTimeFilterPostcodesDepartureSearch
    attr_accessor :id

    attr_accessor :transportation

    attr_accessor :travel_time

    attr_accessor :departure_time

    attr_accessor :properties

    attr_accessor :range

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'transportation' => :'transportation',
        :'travel_time' => :'travel_time',
        :'departure_time' => :'departure_time',
        :'properties' => :'properties',
        :'range' => :'range'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'transportation' => :'RequestTransportation',
        :'travel_time' => :'Integer',
        :'departure_time' => :'DateTime',
        :'properties' => :'Array<RequestTimeFilterPostcodesProperty>',
        :'range' => :'RequestRangeFull'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'transportation')
        self.transportation = attributes[:'transportation']
      end

      if attributes.has_key?(:'travel_time')
        self.travel_time = attributes[:'travel_time']
      end

      if attributes.has_key?(:'departure_time')
        self.departure_time = attributes[:'departure_time']
      end

      if attributes.has_key?(:'properties')
        if (value = attributes[:'properties']).is_a?(Array)
          self.properties = value
        end
      end

      if attributes.has_key?(:'range')
        self.range = attributes[:'range']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @transportation.nil?
        invalid_properties.push('invalid value for "transportation", transportation cannot be nil.')
      end

      if @travel_time.nil?
        invalid_properties.push('invalid value for "travel_time", travel_time cannot be nil.')
      end

      if @travel_time > 14400
        invalid_properties.push('invalid value for "travel_time", must be smaller than or equal to 14400.')
      end

      if @travel_time < 60
        invalid_properties.push('invalid value for "travel_time", must be greater than or equal to 60.')
      end

      if @departure_time.nil?
        invalid_properties.push('invalid value for "departure_time", departure_time cannot be nil.')
      end

      if @properties.nil?
        invalid_properties.push('invalid value for "properties", properties cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @transportation.nil?
      return false if @travel_time.nil?
      return false if @travel_time > 14400
      return false if @travel_time < 60
      return false if @departure_time.nil?
      return false if @properties.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] travel_time Value to be assigned
    def travel_time=(travel_time)
      if travel_time.nil?
        fail ArgumentError, 'travel_time cannot be nil'
      end

      if travel_time > 14400
        fail ArgumentError, 'invalid value for "travel_time", must be smaller than or equal to 14400.'
      end

      if travel_time < 60
        fail ArgumentError, 'invalid value for "travel_time", must be greater than or equal to 60.'
      end

      @travel_time = travel_time
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          transportation == o.transportation &&
          travel_time == o.travel_time &&
          departure_time == o.departure_time &&
          properties == o.properties &&
          range == o.range
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, transportation, travel_time, departure_time, properties, range].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OpenapiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end