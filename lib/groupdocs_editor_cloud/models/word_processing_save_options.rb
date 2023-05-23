 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="word_processing_save_options.rb">
 #   Copyright (c) 2003-2023 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 #
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 #
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsEditorCloud
  # Allows to specify custom options for generating and saving WordProcessing-compliant documents
  class WordProcessingSaveOptions

    # File info
    attr_accessor :file_info

    # The full output path
    attr_accessor :output_path

    # The Html document path
    attr_accessor :html_path

    # Resources path
    attr_accessor :resources_path

    # Document format
    attr_accessor :format

    # Allows to specify document password
    attr_accessor :password

    # Allows to enable or disable pagination which will be used for saving the document. If the original document was opened and edited in pagination mode, this option also should be enabled. By default is disabled.
    attr_accessor :enable_pagination

    # Allows to set override default locale (language) for the WordProcessing document, which will be applied during its creation. When is not specified (default value), MS Word (or other program) will detect (or choose) the document locale according to its own settings or other factors.
    attr_accessor :locale

    # Allows to set override locale (language) for the WordProcessing document for the RTL (right-to-left) text, which will be applied during its creation. When is not specified (default value), MS Word (or other program) will detect (or choose) the document RTL locale according to its own settings or other factors.
    attr_accessor :locale_bi

    # Allows to override the locale (language) for the WordProcessing document for the East-Asian text, which will be applied during its creation. When is not specified (default value), MS Word (or other program) will detect (or choose) the document East-Asian locale according to its own settings or other factors.
    attr_accessor :locale_far_east

    # Write-protection type. Default value is NoProtection
    attr_accessor :protection_type

    # Write-protection password. Used when protection type is specified.
    attr_accessor :protection_password
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
        :'file_info' => :'FileInfo',
        :'output_path' => :'OutputPath',
        :'html_path' => :'HtmlPath',
        :'resources_path' => :'ResourcesPath',
        :'format' => :'Format',
        :'password' => :'Password',
        :'enable_pagination' => :'EnablePagination',
        :'locale' => :'Locale',
        :'locale_bi' => :'LocaleBi',
        :'locale_far_east' => :'LocaleFarEast',
        :'protection_type' => :'ProtectionType',
        :'protection_password' => :'ProtectionPassword'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_info' => :'FileInfo',
        :'output_path' => :'String',
        :'html_path' => :'String',
        :'resources_path' => :'String',
        :'format' => :'String',
        :'password' => :'String',
        :'enable_pagination' => :'BOOLEAN',
        :'locale' => :'String',
        :'locale_bi' => :'String',
        :'locale_far_east' => :'String',
        :'protection_type' => :'String',
        :'protection_password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FileInfo')
        self.file_info = attributes[:'FileInfo']
      end

      if attributes.key?(:'OutputPath')
        self.output_path = attributes[:'OutputPath']
      end

      if attributes.key?(:'HtmlPath')
        self.html_path = attributes[:'HtmlPath']
      end

      if attributes.key?(:'ResourcesPath')
        self.resources_path = attributes[:'ResourcesPath']
      end

      if attributes.key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'EnablePagination')
        self.enable_pagination = attributes[:'EnablePagination']
      end

      if attributes.key?(:'Locale')
        self.locale = attributes[:'Locale']
      end

      if attributes.key?(:'LocaleBi')
        self.locale_bi = attributes[:'LocaleBi']
      end

      if attributes.key?(:'LocaleFarEast')
        self.locale_far_east = attributes[:'LocaleFarEast']
      end

      if attributes.key?(:'ProtectionType')
        self.protection_type = attributes[:'ProtectionType']
      end

      if attributes.key?(:'ProtectionPassword')
        self.protection_password = attributes[:'ProtectionPassword']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @enable_pagination.nil?
        invalid_properties.push("invalid value for 'enable_pagination', enable_pagination cannot be nil.")
      end

      if @protection_type.nil?
        invalid_properties.push("invalid value for 'protection_type', protection_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @enable_pagination.nil?
      return false if @protection_type.nil?
      protection_type_validator = EnumAttributeValidator.new('String', ["NoProtection", "AllowOnlyRevisions", "AllowOnlyComments", "AllowOnlyFormFields", "ReadOnly"])
      return false unless protection_type_validator.valid?(@protection_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protection_type Object to be assigned
    def protection_type=(protection_type)
      validator = EnumAttributeValidator.new('String', ["NoProtection", "AllowOnlyRevisions", "AllowOnlyComments", "AllowOnlyFormFields", "ReadOnly"])
      if protection_type.to_i == 0
        unless validator.valid?(protection_type)
          raise ArgumentError, "invalid value for 'protection_type', must be one of #{validator.allowable_values}."
        end
        @protection_type = protection_type
      else
        @protection_type = validator.allowable_values[protection_type.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          file_info == other.file_info &&
          output_path == other.output_path &&
          html_path == other.html_path &&
          resources_path == other.resources_path &&
          format == other.format &&
          password == other.password &&
          enable_pagination == other.enable_pagination &&
          locale == other.locale &&
          locale_bi == other.locale_bi &&
          locale_far_east == other.locale_far_east &&
          protection_type == other.protection_type &&
          protection_password == other.protection_password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_info, output_path, html_path, resources_path, format, password, enable_pagination, locale, locale_bi, locale_far_east, protection_type, protection_password].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
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
        Date.parse value
      when :Date
        Date.parse value
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
      else
      # model
        temp_model = GroupDocsEditorCloud.const_get(type).new
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
