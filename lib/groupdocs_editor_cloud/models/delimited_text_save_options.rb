 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="delimited_text_save_options.rb">
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
  # Contains options for generating and saving text-based Spreadsheet documents (CSV, Tab-based etc.), that use a separator (delimiter)
  class DelimitedTextSaveOptions

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

    # Allows to specify a string separator (delimiter) for text-based Spreadsheet documents
    attr_accessor :separator

    # Allows to set an encoding for the text-based Spreadsheet document. By default (and if not specified) is UTF-8.
    attr_accessor :encoding

    # Indicates whether leading blank rows and columns should be trimmed like what MS Excel does
    attr_accessor :trim_leading_blank_row_and_column

    # Indicates whether separators should be output for blank row. Default value is false which means the content for blank row will be empty.
    attr_accessor :keep_separators_for_blank_row

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_info' => :'FileInfo',
        :'output_path' => :'OutputPath',
        :'html_path' => :'HtmlPath',
        :'resources_path' => :'ResourcesPath',
        :'format' => :'Format',
        :'separator' => :'Separator',
        :'encoding' => :'Encoding',
        :'trim_leading_blank_row_and_column' => :'TrimLeadingBlankRowAndColumn',
        :'keep_separators_for_blank_row' => :'KeepSeparatorsForBlankRow'
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
        :'separator' => :'String',
        :'encoding' => :'String',
        :'trim_leading_blank_row_and_column' => :'BOOLEAN',
        :'keep_separators_for_blank_row' => :'BOOLEAN'
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

      if attributes.key?(:'Separator')
        self.separator = attributes[:'Separator']
      end

      if attributes.key?(:'Encoding')
        self.encoding = attributes[:'Encoding']
      end

      if attributes.key?(:'TrimLeadingBlankRowAndColumn')
        self.trim_leading_blank_row_and_column = attributes[:'TrimLeadingBlankRowAndColumn']
      end

      if attributes.key?(:'KeepSeparatorsForBlankRow')
        self.keep_separators_for_blank_row = attributes[:'KeepSeparatorsForBlankRow']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @trim_leading_blank_row_and_column.nil?
        invalid_properties.push("invalid value for 'trim_leading_blank_row_and_column', trim_leading_blank_row_and_column cannot be nil.")
      end

      if @keep_separators_for_blank_row.nil?
        invalid_properties.push("invalid value for 'keep_separators_for_blank_row', keep_separators_for_blank_row cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @trim_leading_blank_row_and_column.nil?
      return false if @keep_separators_for_blank_row.nil?
      return true
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
          separator == other.separator &&
          encoding == other.encoding &&
          trim_leading_blank_row_and_column == other.trim_leading_blank_row_and_column &&
          keep_separators_for_blank_row == other.keep_separators_for_blank_row
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [file_info, output_path, html_path, resources_path, format, separator, encoding, trim_leading_blank_row_and_column, keep_separators_for_blank_row].hash
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
