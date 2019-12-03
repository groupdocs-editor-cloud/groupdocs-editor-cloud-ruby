 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="xml_load_options.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
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
  # Allows to specify custom options for loading XML (eXtensible Markup Language) documents
  class XmlLoadOptions

    # File info
    attr_accessor :file_info

    # The full output path
    attr_accessor :output_path

    # Character encoding of the text document, which will be applied for its opening. By default is null - internal document encoding will be applied.             
    attr_accessor :encoding

    # Allows to enable or disable mechanism for fixing corrupted XML structure. By default is disabled (false).             
    attr_accessor :fix_incorrect_structure

    # Allows to enable URI recognition algorithm
    attr_accessor :recognize_uris

    # Allows to enable recognition algorithm for email addresses in attribute values
    attr_accessor :recognize_emails

    # Allows to enable the truncation of trailing whitespaces in the inner-tag text. By default is disabled (false) - trailing whitespaces will be preserved.             
    attr_accessor :trim_trailing_whitespaces

    # Allows to specify quote type (single or double quotes) for attribute values. Double quotes are default.             
    attr_accessor :attribute_values_quote_type
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
        :'encoding' => :'Encoding',
        :'fix_incorrect_structure' => :'FixIncorrectStructure',
        :'recognize_uris' => :'RecognizeUris',
        :'recognize_emails' => :'RecognizeEmails',
        :'trim_trailing_whitespaces' => :'TrimTrailingWhitespaces',
        :'attribute_values_quote_type' => :'AttributeValuesQuoteType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_info' => :'FileInfo',
        :'output_path' => :'String',
        :'encoding' => :'String',
        :'fix_incorrect_structure' => :'BOOLEAN',
        :'recognize_uris' => :'BOOLEAN',
        :'recognize_emails' => :'BOOLEAN',
        :'trim_trailing_whitespaces' => :'BOOLEAN',
        :'attribute_values_quote_type' => :'String'
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

      if attributes.key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

      if attributes.key?(:'FixIncorrectStructure')
        self.fix_incorrect_structure = attributes[:'FixIncorrectStructure']
      end

      if attributes.key?(:'RecognizeUris')
        self.recognize_uris = attributes[:'RecognizeUris']
      end

      if attributes.key?(:'RecognizeEmails')
        self.recognize_emails = attributes[:'RecognizeEmails']
      end

      if attributes.key?(:'TrimTrailingWhitespaces')
        self.trim_trailing_whitespaces = attributes[:'TrimTrailingWhitespaces']
      end

      if attributes.key?(:'AttributeValuesQuoteType')
        self.attribute_values_quote_type = attributes[:'AttributeValuesQuoteType']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @fix_incorrect_structure.nil?
        invalid_properties.push("invalid value for 'fix_incorrect_structure', fix_incorrect_structure cannot be nil.")
      end

      if @recognize_uris.nil?
        invalid_properties.push("invalid value for 'recognize_uris', recognize_uris cannot be nil.")
      end

      if @recognize_emails.nil?
        invalid_properties.push("invalid value for 'recognize_emails', recognize_emails cannot be nil.")
      end

      if @trim_trailing_whitespaces.nil?
        invalid_properties.push("invalid value for 'trim_trailing_whitespaces', trim_trailing_whitespaces cannot be nil.")
      end

      if @attribute_values_quote_type.nil?
        invalid_properties.push("invalid value for 'attribute_values_quote_type', attribute_values_quote_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @fix_incorrect_structure.nil?
      return false if @recognize_uris.nil?
      return false if @recognize_emails.nil?
      return false if @trim_trailing_whitespaces.nil?
      return false if @attribute_values_quote_type.nil?
      attribute_values_quote_type_validator = EnumAttributeValidator.new('String', ["DoubleQuote", "SingleQuote"])
      return false unless attribute_values_quote_type_validator.valid?(@attribute_values_quote_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attribute_values_quote_type Object to be assigned
    def attribute_values_quote_type=(attribute_values_quote_type)
      validator = EnumAttributeValidator.new('String', ["DoubleQuote", "SingleQuote"])
      if attribute_values_quote_type.to_i == 0
        unless validator.valid?(attribute_values_quote_type)
          raise ArgumentError, "invalid value for 'attribute_values_quote_type', must be one of #{validator.allowable_values}."
        end
        @attribute_values_quote_type = attribute_values_quote_type
      else
        @attribute_values_quote_type = validator.allowable_values[attribute_values_quote_type.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          file_info == other.file_info &&
          output_path == other.output_path &&
          encoding == other.encoding &&
          fix_incorrect_structure == other.fix_incorrect_structure &&
          recognize_uris == other.recognize_uris &&
          recognize_emails == other.recognize_emails &&
          trim_trailing_whitespaces == other.trim_trailing_whitespaces &&
          attribute_values_quote_type == other.attribute_values_quote_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_info, output_path, encoding, fix_incorrect_structure, recognize_uris, recognize_emails, trim_trailing_whitespaces, attribute_values_quote_type].hash
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
