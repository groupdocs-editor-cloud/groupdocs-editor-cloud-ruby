 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="text_load_options.rb">
 #   Copyright (c) 2003-2022 Aspose Pty Ltd
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
  # Allows to specify custom options for loading plain text (TXT) documents
  class TextLoadOptions

    # File info
    attr_accessor :file_info

    # The full output path
    attr_accessor :output_path

    # Character encoding of the text document, which will be applied for its opening
    attr_accessor :encoding

    # Allows to specify how numbered list items are recognized when document is imported from plain text format. The default value is true.
    attr_accessor :recognize_lists

    # Gets or sets preferred option of a leading space handling. By default converts leading spaces to the left indent.
    attr_accessor :leading_spaces

    # Gets or sets preferred option of a trailing space handling. By default truncates all trailing spaces.
    attr_accessor :trailing_spaces

    # Allows to enable or disable pagination in the resultant HTML document. By default is disabled (false).
    attr_accessor :enable_pagination
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
        :'recognize_lists' => :'RecognizeLists',
        :'leading_spaces' => :'LeadingSpaces',
        :'trailing_spaces' => :'TrailingSpaces',
        :'enable_pagination' => :'EnablePagination'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'file_info' => :'FileInfo',
        :'output_path' => :'String',
        :'encoding' => :'String',
        :'recognize_lists' => :'BOOLEAN',
        :'leading_spaces' => :'String',
        :'trailing_spaces' => :'String',
        :'enable_pagination' => :'BOOLEAN'
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

      if attributes.key?(:'RecognizeLists')
        self.recognize_lists = attributes[:'RecognizeLists']
      end

      if attributes.key?(:'LeadingSpaces')
        self.leading_spaces = attributes[:'LeadingSpaces']
      end

      if attributes.key?(:'TrailingSpaces')
        self.trailing_spaces = attributes[:'TrailingSpaces']
      end

      if attributes.key?(:'EnablePagination')
        self.enable_pagination = attributes[:'EnablePagination']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @recognize_lists.nil?
        invalid_properties.push("invalid value for 'recognize_lists', recognize_lists cannot be nil.")
      end

      if @leading_spaces.nil?
        invalid_properties.push("invalid value for 'leading_spaces', leading_spaces cannot be nil.")
      end

      if @trailing_spaces.nil?
        invalid_properties.push("invalid value for 'trailing_spaces', trailing_spaces cannot be nil.")
      end

      if @enable_pagination.nil?
        invalid_properties.push("invalid value for 'enable_pagination', enable_pagination cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @recognize_lists.nil?
      return false if @leading_spaces.nil?
      leading_spaces_validator = EnumAttributeValidator.new('String', ["ConvertToIndent", "Preserve", "Trim"])
      return false unless leading_spaces_validator.valid?(@leading_spaces)
      return false if @trailing_spaces.nil?
      trailing_spaces_validator = EnumAttributeValidator.new('String', ["Trim", "Preserve"])
      return false unless trailing_spaces_validator.valid?(@trailing_spaces)
      return false if @enable_pagination.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] leading_spaces Object to be assigned
    def leading_spaces=(leading_spaces)
      validator = EnumAttributeValidator.new('String', ["ConvertToIndent", "Preserve", "Trim"])
      if leading_spaces.to_i == 0
        unless validator.valid?(leading_spaces)
          raise ArgumentError, "invalid value for 'leading_spaces', must be one of #{validator.allowable_values}."
        end
        @leading_spaces = leading_spaces
      else
        @leading_spaces = validator.allowable_values[leading_spaces.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trailing_spaces Object to be assigned
    def trailing_spaces=(trailing_spaces)
      validator = EnumAttributeValidator.new('String', ["Trim", "Preserve"])
      if trailing_spaces.to_i == 0
        unless validator.valid?(trailing_spaces)
          raise ArgumentError, "invalid value for 'trailing_spaces', must be one of #{validator.allowable_values}."
        end
        @trailing_spaces = trailing_spaces
      else
        @trailing_spaces = validator.allowable_values[trailing_spaces.to_i]
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
          recognize_lists == other.recognize_lists &&
          leading_spaces == other.leading_spaces &&
          trailing_spaces == other.trailing_spaces &&
          enable_pagination == other.enable_pagination
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_info, output_path, encoding, recognize_lists, leading_spaces, trailing_spaces, enable_pagination].hash
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
