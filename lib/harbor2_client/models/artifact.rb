=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module Harbor2Client
  class Artifact
    # The ID of the artifact
    attr_accessor :id

    # The type of the artifact, e.g. image, chart, etc
    attr_accessor :type

    # The media type of the artifact
    attr_accessor :media_type

    # The manifest media type of the artifact
    attr_accessor :manifest_media_type

    # The ID of the project that the artifact belongs to
    attr_accessor :project_id

    # The ID of the repository that the artifact belongs to
    attr_accessor :repository_id

    # The digest of the artifact
    attr_accessor :digest

    # The size of the artifact
    attr_accessor :size

    # The digest of the icon
    attr_accessor :icon

    # The push time of the artifact
    attr_accessor :push_time

    # The latest pull time of the artifact
    attr_accessor :pull_time

    attr_accessor :extra_attrs

    attr_accessor :annotations

    attr_accessor :references

    attr_accessor :tags

    attr_accessor :addition_links

    attr_accessor :labels

    # The overview of the scan result.
    attr_accessor :scan_overview

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'type' => :'type',
        :'media_type' => :'media_type',
        :'manifest_media_type' => :'manifest_media_type',
        :'project_id' => :'project_id',
        :'repository_id' => :'repository_id',
        :'digest' => :'digest',
        :'size' => :'size',
        :'icon' => :'icon',
        :'push_time' => :'push_time',
        :'pull_time' => :'pull_time',
        :'extra_attrs' => :'extra_attrs',
        :'annotations' => :'annotations',
        :'references' => :'references',
        :'tags' => :'tags',
        :'addition_links' => :'addition_links',
        :'labels' => :'labels',
        :'scan_overview' => :'scan_overview'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'type' => :'String',
        :'media_type' => :'String',
        :'manifest_media_type' => :'String',
        :'project_id' => :'Integer',
        :'repository_id' => :'Integer',
        :'digest' => :'String',
        :'size' => :'Integer',
        :'icon' => :'String',
        :'push_time' => :'DateTime',
        :'pull_time' => :'DateTime',
        :'extra_attrs' => :'ExtraAttrs',
        :'annotations' => :'Annotations',
        :'references' => :'Array<Reference>',
        :'tags' => :'Array<Tag>',
        :'addition_links' => :'AdditionLinks',
        :'labels' => :'Array<Label>',
        :'scan_overview' => :'ScanOverview'
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

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'media_type')
        self.media_type = attributes[:'media_type']
      end

      if attributes.has_key?(:'manifest_media_type')
        self.manifest_media_type = attributes[:'manifest_media_type']
      end

      if attributes.has_key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.has_key?(:'repository_id')
        self.repository_id = attributes[:'repository_id']
      end

      if attributes.has_key?(:'digest')
        self.digest = attributes[:'digest']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'icon')
        self.icon = attributes[:'icon']
      end

      if attributes.has_key?(:'push_time')
        self.push_time = attributes[:'push_time']
      end

      if attributes.has_key?(:'pull_time')
        self.pull_time = attributes[:'pull_time']
      end

      if attributes.has_key?(:'extra_attrs')
        self.extra_attrs = attributes[:'extra_attrs']
      end

      if attributes.has_key?(:'annotations')
        self.annotations = attributes[:'annotations']
      end

      if attributes.has_key?(:'references')
        if (value = attributes[:'references']).is_a?(Array)
          self.references = value
        end
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'addition_links')
        self.addition_links = attributes[:'addition_links']
      end

      if attributes.has_key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.has_key?(:'scan_overview')
        self.scan_overview = attributes[:'scan_overview']
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
          id == o.id &&
          type == o.type &&
          media_type == o.media_type &&
          manifest_media_type == o.manifest_media_type &&
          project_id == o.project_id &&
          repository_id == o.repository_id &&
          digest == o.digest &&
          size == o.size &&
          icon == o.icon &&
          push_time == o.push_time &&
          pull_time == o.pull_time &&
          extra_attrs == o.extra_attrs &&
          annotations == o.annotations &&
          references == o.references &&
          tags == o.tags &&
          addition_links == o.addition_links &&
          labels == o.labels &&
          scan_overview == o.scan_overview
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, type, media_type, manifest_media_type, project_id, repository_id, digest, size, icon, push_time, pull_time, extra_attrs, annotations, references, tags, addition_links, labels, scan_overview].hash
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