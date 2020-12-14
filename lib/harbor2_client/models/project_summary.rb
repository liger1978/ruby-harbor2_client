=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module Harbor2Client
  class ProjectSummary
    # The number of the repositories under this project.
    attr_accessor :repo_count

    # The total number of charts under this project.
    attr_accessor :chart_count

    # The total number of project admin members.
    attr_accessor :project_admin_count

    # The total number of maintainer members.
    attr_accessor :maintainer_count

    # The total number of developer members.
    attr_accessor :developer_count

    # The total number of guest members.
    attr_accessor :guest_count

    # The total number of limited guest members.
    attr_accessor :limited_guest_count

    attr_accessor :quota

    attr_accessor :registry

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'repo_count' => :'repo_count',
        :'chart_count' => :'chart_count',
        :'project_admin_count' => :'project_admin_count',
        :'maintainer_count' => :'maintainer_count',
        :'developer_count' => :'developer_count',
        :'guest_count' => :'guest_count',
        :'limited_guest_count' => :'limited_guest_count',
        :'quota' => :'quota',
        :'registry' => :'registry'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'repo_count' => :'Integer',
        :'chart_count' => :'Integer',
        :'project_admin_count' => :'Integer',
        :'maintainer_count' => :'Integer',
        :'developer_count' => :'Integer',
        :'guest_count' => :'Integer',
        :'limited_guest_count' => :'Integer',
        :'quota' => :'ProjectSummaryQuota',
        :'registry' => :'Registry'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'repo_count')
        self.repo_count = attributes[:'repo_count']
      end

      if attributes.has_key?(:'chart_count')
        self.chart_count = attributes[:'chart_count']
      end

      if attributes.has_key?(:'project_admin_count')
        self.project_admin_count = attributes[:'project_admin_count']
      end

      if attributes.has_key?(:'maintainer_count')
        self.maintainer_count = attributes[:'maintainer_count']
      end

      if attributes.has_key?(:'developer_count')
        self.developer_count = attributes[:'developer_count']
      end

      if attributes.has_key?(:'guest_count')
        self.guest_count = attributes[:'guest_count']
      end

      if attributes.has_key?(:'limited_guest_count')
        self.limited_guest_count = attributes[:'limited_guest_count']
      end

      if attributes.has_key?(:'quota')
        self.quota = attributes[:'quota']
      end

      if attributes.has_key?(:'registry')
        self.registry = attributes[:'registry']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          repo_count == o.repo_count &&
          chart_count == o.chart_count &&
          project_admin_count == o.project_admin_count &&
          maintainer_count == o.maintainer_count &&
          developer_count == o.developer_count &&
          guest_count == o.guest_count &&
          limited_guest_count == o.limited_guest_count &&
          quota == o.quota &&
          registry == o.registry
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [repo_count, chart_count, project_admin_count, maintainer_count, developer_count, guest_count, limited_guest_count, quota, registry].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        temp_model = Harbor2Client.const_get(type).new
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
