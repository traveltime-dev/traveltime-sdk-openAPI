=begin
#TravelTime API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.2.3
Contact: support@igeolise.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class ResponseRoutePart
    attr_accessor :id

    attr_accessor :type

    attr_accessor :mode

    attr_accessor :directions

    attr_accessor :distance

    attr_accessor :travel_time

    attr_accessor :coords

    attr_accessor :direction

    attr_accessor :road

    attr_accessor :turn

    attr_accessor :line

    attr_accessor :departure_station

    attr_accessor :arrival_station

    attr_accessor :departs_at

    attr_accessor :arrives_at

    attr_accessor :num_stops

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'mode' => :'mode',
        :'directions' => :'directions',
        :'distance' => :'distance',
        :'travel_time' => :'travel_time',
        :'coords' => :'coords',
        :'direction' => :'direction',
        :'road' => :'road',
        :'turn' => :'turn',
        :'line' => :'line',
        :'departure_station' => :'departure_station',
        :'arrival_station' => :'arrival_station',
        :'departs_at' => :'departs_at',
        :'arrives_at' => :'arrives_at',
        :'num_stops' => :'num_stops'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'mode' => :'ResponseTransportationMode',
        :'directions' => :'String',
        :'distance' => :'Integer',
        :'travel_time' => :'Integer',
        :'coords' => :'Array<Coords>',
        :'direction' => :'String',
        :'road' => :'String',
        :'turn' => :'String',
        :'line' => :'String',
        :'departure_station' => :'String',
        :'arrival_station' => :'String',
        :'departs_at' => :'String',
        :'arrives_at' => :'String',
        :'num_stops' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ResponseRoutePart` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ResponseRoutePart`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'mode')
        self.mode = attributes[:'mode']
      end

      if attributes.key?(:'directions')
        self.directions = attributes[:'directions']
      end

      if attributes.key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.key?(:'travel_time')
        self.travel_time = attributes[:'travel_time']
      end

      if attributes.key?(:'coords')
        if (value = attributes[:'coords']).is_a?(Array)
          self.coords = value
        end
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'road')
        self.road = attributes[:'road']
      end

      if attributes.key?(:'turn')
        self.turn = attributes[:'turn']
      end

      if attributes.key?(:'line')
        self.line = attributes[:'line']
      end

      if attributes.key?(:'departure_station')
        self.departure_station = attributes[:'departure_station']
      end

      if attributes.key?(:'arrival_station')
        self.arrival_station = attributes[:'arrival_station']
      end

      if attributes.key?(:'departs_at')
        self.departs_at = attributes[:'departs_at']
      end

      if attributes.key?(:'arrives_at')
        self.arrives_at = attributes[:'arrives_at']
      end

      if attributes.key?(:'num_stops')
        self.num_stops = attributes[:'num_stops']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @mode.nil?
        invalid_properties.push('invalid value for "mode", mode cannot be nil.')
      end

      if @directions.nil?
        invalid_properties.push('invalid value for "directions", directions cannot be nil.')
      end

      if @distance.nil?
        invalid_properties.push('invalid value for "distance", distance cannot be nil.')
      end

      if @travel_time.nil?
        invalid_properties.push('invalid value for "travel_time", travel_time cannot be nil.')
      end

      if @coords.nil?
        invalid_properties.push('invalid value for "coords", coords cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["basic", "start_end", "road", "public_transport"])
      return false unless type_validator.valid?(@type)
      return false if @mode.nil?
      return false if @directions.nil?
      return false if @distance.nil?
      return false if @travel_time.nil?
      return false if @coords.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["basic", "start_end", "road", "public_transport"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          mode == o.mode &&
          directions == o.directions &&
          distance == o.distance &&
          travel_time == o.travel_time &&
          coords == o.coords &&
          direction == o.direction &&
          road == o.road &&
          turn == o.turn &&
          line == o.line &&
          departure_station == o.departure_station &&
          arrival_station == o.arrival_station &&
          departs_at == o.departs_at &&
          arrives_at == o.arrives_at &&
          num_stops == o.num_stops
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, mode, directions, distance, travel_time, coords, direction, road, turn, line, departure_station, arrival_station, departs_at, arrives_at, num_stops].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
