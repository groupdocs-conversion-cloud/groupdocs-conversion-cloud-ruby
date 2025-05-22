 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="xlsb_load_options.rb">
 #   Copyright (c) Aspose Pty Ltd
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

module GroupDocsConversionCloud
  # Xlsb load options
  class XlsbLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Default font for Cells document. The following font will be used if a font is missing.
    attr_accessor :default_font

    # Substitute specific fonts when converting Cells document.
    attr_accessor :font_substitutes

    # Show grid lines when converting Excel files
    attr_accessor :show_grid_lines

    # Show hidden sheets when converting Excel files
    attr_accessor :show_hidden_sheets

    # If OnePagePerSheet is true the content of the sheet will be converted to one page in the PDF document. Default value is true.
    attr_accessor :one_page_per_sheet

    # Convert specific range when converting to other than cells format. Example: \"D1:F8\"
    attr_accessor :convert_range

    # Skips empty rows and columns when converting. Default is True.
    attr_accessor :skip_empty_rows_and_columns

    # Set password to unprotect protected document
    attr_accessor :password

    # Represents the way comments are printed with the sheet. Default is PrintNoComments.
    attr_accessor :print_comments
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
        :'format' => :'Format',
        :'default_font' => :'DefaultFont',
        :'font_substitutes' => :'FontSubstitutes',
        :'show_grid_lines' => :'ShowGridLines',
        :'show_hidden_sheets' => :'ShowHiddenSheets',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'convert_range' => :'ConvertRange',
        :'skip_empty_rows_and_columns' => :'SkipEmptyRowsAndColumns',
        :'password' => :'Password',
        :'print_comments' => :'PrintComments'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'default_font' => :'String',
        :'font_substitutes' => :'Hash<String, String>',
        :'show_grid_lines' => :'BOOLEAN',
        :'show_hidden_sheets' => :'BOOLEAN',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'convert_range' => :'String',
        :'skip_empty_rows_and_columns' => :'BOOLEAN',
        :'password' => :'String',
        :'print_comments' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Format')
        self.format = attributes[:'Format']
      end

      if attributes.key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.key?(:'FontSubstitutes')
        if (value = attributes[:'FontSubstitutes']).is_a?(Hash)
          self.font_substitutes = value
        end
      end

      if attributes.key?(:'ShowGridLines')
        self.show_grid_lines = attributes[:'ShowGridLines']
      end

      if attributes.key?(:'ShowHiddenSheets')
        self.show_hidden_sheets = attributes[:'ShowHiddenSheets']
      end

      if attributes.key?(:'OnePagePerSheet')
        self.one_page_per_sheet = attributes[:'OnePagePerSheet']
      end

      if attributes.key?(:'ConvertRange')
        self.convert_range = attributes[:'ConvertRange']
      end

      if attributes.key?(:'SkipEmptyRowsAndColumns')
        self.skip_empty_rows_and_columns = attributes[:'SkipEmptyRowsAndColumns']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'PrintComments')
        self.print_comments = attributes[:'PrintComments']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @show_grid_lines.nil?
        invalid_properties.push("invalid value for 'show_grid_lines', show_grid_lines cannot be nil.")
      end

      if @show_hidden_sheets.nil?
        invalid_properties.push("invalid value for 'show_hidden_sheets', show_hidden_sheets cannot be nil.")
      end

      if @one_page_per_sheet.nil?
        invalid_properties.push("invalid value for 'one_page_per_sheet', one_page_per_sheet cannot be nil.")
      end

      if @skip_empty_rows_and_columns.nil?
        invalid_properties.push("invalid value for 'skip_empty_rows_and_columns', skip_empty_rows_and_columns cannot be nil.")
      end

      if @print_comments.nil?
        invalid_properties.push("invalid value for 'print_comments', print_comments cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @show_grid_lines.nil?
      return false if @show_hidden_sheets.nil?
      return false if @one_page_per_sheet.nil?
      return false if @skip_empty_rows_and_columns.nil?
      return false if @print_comments.nil?
      print_comments_validator = EnumAttributeValidator.new('String', ["PrintInPlace", "PrintNoComments", "PrintSheetEnd", "PrintWithThreadedComments"])
      return false unless print_comments_validator.valid?(@print_comments)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] print_comments Object to be assigned
    def print_comments=(print_comments)
      validator = EnumAttributeValidator.new('String', ["PrintInPlace", "PrintNoComments", "PrintSheetEnd", "PrintWithThreadedComments"])
      if print_comments.to_i == 0
        unless validator.valid?(print_comments)
          raise ArgumentError, "invalid value for 'print_comments', must be one of #{validator.allowable_values}."
        end
        @print_comments = print_comments
      else
        @print_comments = validator.allowable_values[print_comments.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          default_font == other.default_font &&
          font_substitutes == other.font_substitutes &&
          show_grid_lines == other.show_grid_lines &&
          show_hidden_sheets == other.show_hidden_sheets &&
          one_page_per_sheet == other.one_page_per_sheet &&
          convert_range == other.convert_range &&
          skip_empty_rows_and_columns == other.skip_empty_rows_and_columns &&
          password == other.password &&
          print_comments == other.print_comments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, default_font, font_substitutes, show_grid_lines, show_hidden_sheets, one_page_per_sheet, convert_range, skip_empty_rows_and_columns, password, print_comments].hash
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
        temp_model = GroupDocsConversionCloud.const_get(type).new
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
