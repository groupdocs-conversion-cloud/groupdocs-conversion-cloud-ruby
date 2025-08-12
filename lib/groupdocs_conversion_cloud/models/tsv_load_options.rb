 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="tsv_load_options.rb">
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
  # Tsv load options
  class TsvLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Clear custom document properties. Default is false.
    attr_accessor :clear_custom_document_properties

    # Clear built-in document properties. Default is false.
    attr_accessor :clear_built_in_document_properties

    # Split a worksheet into pages by rows. Default is 0, no pagination.
    attr_accessor :rows_per_page

    # Split a worksheet into pages by columns. Default is 0, no pagination.
    attr_accessor :columns_per_page

    # Autofits all rows when converting
    attr_accessor :auto_fit_rows

    # If AllColumnsInOnePagePerSheet is true, all column content of one sheet will output to only one page in result. The width of paper size of pagesetup will be invalid, and the other settings of pagesetup will still take effect.             
    attr_accessor :all_columns_in_one_page_per_sheet

    # System culture info at the time file is loaded
    attr_accessor :culture_info

    # Whether check restriction of excel file when user modify cells related objects. For example, excel does not allow inputting string value longer than 32K. When you input a value longer than 32K, if this property is true, you will get an Exception. If this property is false, we will accept your input string value as the cell's value so that later you can output the complete string value for other file formats such as CSV. However, if you have set such kind of value that is invalid for excel file format, you should not save the workbook as excel file format later. Otherwise there may be unexpected error for the generated excel file.             
    attr_accessor :check_excel_restriction

    # Set password to unprotect protected document
    attr_accessor :password

    # Skips empty rows and columns when converting. Default is True.
    attr_accessor :skip_empty_rows_and_columns

    # Convert specific range when converting to other than cells format. Example: \"D1:F8\"
    attr_accessor :convert_range

    # If True and converting to Pdf the conversion is optimized for better file size than print quality.             
    attr_accessor :optimize_pdf_size

    # If OnePagePerSheet is true the content of the sheet will be converted to one page in the PDF document. Default value is true.
    attr_accessor :one_page_per_sheet

    # Show hidden sheets when converting Excel files
    attr_accessor :show_hidden_sheets

    # Show grid lines when converting Excel files
    attr_accessor :show_grid_lines

    # Substitute specific fonts when converting Cells document.
    attr_accessor :font_substitutes

    # Default font for Cells document. The following font will be used if a font is missing.
    attr_accessor :default_font

    # List of sheet indexes to convert. The indexes must be zero-based
    attr_accessor :sheet_indexes

    # List of sheet names to convert
    attr_accessor :sheets

    # Represents the way comments are printed with the sheet. Default is PrintNoComments.
    attr_accessor :print_comments

    # Reset font folders before loading document
    attr_accessor :reset_font_folders
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
        :'clear_custom_document_properties' => :'ClearCustomDocumentProperties',
        :'clear_built_in_document_properties' => :'ClearBuiltInDocumentProperties',
        :'rows_per_page' => :'RowsPerPage',
        :'columns_per_page' => :'ColumnsPerPage',
        :'auto_fit_rows' => :'AutoFitRows',
        :'all_columns_in_one_page_per_sheet' => :'AllColumnsInOnePagePerSheet',
        :'culture_info' => :'CultureInfo',
        :'check_excel_restriction' => :'CheckExcelRestriction',
        :'password' => :'Password',
        :'skip_empty_rows_and_columns' => :'SkipEmptyRowsAndColumns',
        :'convert_range' => :'ConvertRange',
        :'optimize_pdf_size' => :'OptimizePdfSize',
        :'one_page_per_sheet' => :'OnePagePerSheet',
        :'show_hidden_sheets' => :'ShowHiddenSheets',
        :'show_grid_lines' => :'ShowGridLines',
        :'font_substitutes' => :'FontSubstitutes',
        :'default_font' => :'DefaultFont',
        :'sheet_indexes' => :'SheetIndexes',
        :'sheets' => :'Sheets',
        :'print_comments' => :'PrintComments',
        :'reset_font_folders' => :'ResetFontFolders'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'clear_custom_document_properties' => :'BOOLEAN',
        :'clear_built_in_document_properties' => :'BOOLEAN',
        :'rows_per_page' => :'Integer',
        :'columns_per_page' => :'Integer',
        :'auto_fit_rows' => :'BOOLEAN',
        :'all_columns_in_one_page_per_sheet' => :'BOOLEAN',
        :'culture_info' => :'String',
        :'check_excel_restriction' => :'BOOLEAN',
        :'password' => :'String',
        :'skip_empty_rows_and_columns' => :'BOOLEAN',
        :'convert_range' => :'String',
        :'optimize_pdf_size' => :'BOOLEAN',
        :'one_page_per_sheet' => :'BOOLEAN',
        :'show_hidden_sheets' => :'BOOLEAN',
        :'show_grid_lines' => :'BOOLEAN',
        :'font_substitutes' => :'Hash<String, String>',
        :'default_font' => :'String',
        :'sheet_indexes' => :'Array<Integer>',
        :'sheets' => :'Array<String>',
        :'print_comments' => :'String',
        :'reset_font_folders' => :'BOOLEAN'
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

      if attributes.key?(:'ClearCustomDocumentProperties')
        self.clear_custom_document_properties = attributes[:'ClearCustomDocumentProperties']
      end

      if attributes.key?(:'ClearBuiltInDocumentProperties')
        self.clear_built_in_document_properties = attributes[:'ClearBuiltInDocumentProperties']
      end

      if attributes.key?(:'RowsPerPage')
        self.rows_per_page = attributes[:'RowsPerPage']
      end

      if attributes.key?(:'ColumnsPerPage')
        self.columns_per_page = attributes[:'ColumnsPerPage']
      end

      if attributes.key?(:'AutoFitRows')
        self.auto_fit_rows = attributes[:'AutoFitRows']
      end

      if attributes.key?(:'AllColumnsInOnePagePerSheet')
        self.all_columns_in_one_page_per_sheet = attributes[:'AllColumnsInOnePagePerSheet']
      end

      if attributes.key?(:'CultureInfo')
        self.culture_info = attributes[:'CultureInfo']
      end

      if attributes.key?(:'CheckExcelRestriction')
        self.check_excel_restriction = attributes[:'CheckExcelRestriction']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'SkipEmptyRowsAndColumns')
        self.skip_empty_rows_and_columns = attributes[:'SkipEmptyRowsAndColumns']
      end

      if attributes.key?(:'ConvertRange')
        self.convert_range = attributes[:'ConvertRange']
      end

      if attributes.key?(:'OptimizePdfSize')
        self.optimize_pdf_size = attributes[:'OptimizePdfSize']
      end

      if attributes.key?(:'OnePagePerSheet')
        self.one_page_per_sheet = attributes[:'OnePagePerSheet']
      end

      if attributes.key?(:'ShowHiddenSheets')
        self.show_hidden_sheets = attributes[:'ShowHiddenSheets']
      end

      if attributes.key?(:'ShowGridLines')
        self.show_grid_lines = attributes[:'ShowGridLines']
      end

      if attributes.key?(:'FontSubstitutes')
        if (value = attributes[:'FontSubstitutes']).is_a?(Hash)
          self.font_substitutes = value
        end
      end

      if attributes.key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.key?(:'SheetIndexes')
        if (value = attributes[:'SheetIndexes']).is_a?(Array)
          self.sheet_indexes = value
        end
      end

      if attributes.key?(:'Sheets')
        if (value = attributes[:'Sheets']).is_a?(Array)
          self.sheets = value
        end
      end

      if attributes.key?(:'PrintComments')
        self.print_comments = attributes[:'PrintComments']
      end

      if attributes.key?(:'ResetFontFolders')
        self.reset_font_folders = attributes[:'ResetFontFolders']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @clear_custom_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_custom_document_properties', clear_custom_document_properties cannot be nil.")
      end

      if @clear_built_in_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_built_in_document_properties', clear_built_in_document_properties cannot be nil.")
      end

      if @rows_per_page.nil?
        invalid_properties.push("invalid value for 'rows_per_page', rows_per_page cannot be nil.")
      end

      if @columns_per_page.nil?
        invalid_properties.push("invalid value for 'columns_per_page', columns_per_page cannot be nil.")
      end

      if @auto_fit_rows.nil?
        invalid_properties.push("invalid value for 'auto_fit_rows', auto_fit_rows cannot be nil.")
      end

      if @all_columns_in_one_page_per_sheet.nil?
        invalid_properties.push("invalid value for 'all_columns_in_one_page_per_sheet', all_columns_in_one_page_per_sheet cannot be nil.")
      end

      if @check_excel_restriction.nil?
        invalid_properties.push("invalid value for 'check_excel_restriction', check_excel_restriction cannot be nil.")
      end

      if @skip_empty_rows_and_columns.nil?
        invalid_properties.push("invalid value for 'skip_empty_rows_and_columns', skip_empty_rows_and_columns cannot be nil.")
      end

      if @optimize_pdf_size.nil?
        invalid_properties.push("invalid value for 'optimize_pdf_size', optimize_pdf_size cannot be nil.")
      end

      if @one_page_per_sheet.nil?
        invalid_properties.push("invalid value for 'one_page_per_sheet', one_page_per_sheet cannot be nil.")
      end

      if @show_hidden_sheets.nil?
        invalid_properties.push("invalid value for 'show_hidden_sheets', show_hidden_sheets cannot be nil.")
      end

      if @show_grid_lines.nil?
        invalid_properties.push("invalid value for 'show_grid_lines', show_grid_lines cannot be nil.")
      end

      if @print_comments.nil?
        invalid_properties.push("invalid value for 'print_comments', print_comments cannot be nil.")
      end

      if @reset_font_folders.nil?
        invalid_properties.push("invalid value for 'reset_font_folders', reset_font_folders cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @clear_custom_document_properties.nil?
      return false if @clear_built_in_document_properties.nil?
      return false if @rows_per_page.nil?
      return false if @columns_per_page.nil?
      return false if @auto_fit_rows.nil?
      return false if @all_columns_in_one_page_per_sheet.nil?
      return false if @check_excel_restriction.nil?
      return false if @skip_empty_rows_and_columns.nil?
      return false if @optimize_pdf_size.nil?
      return false if @one_page_per_sheet.nil?
      return false if @show_hidden_sheets.nil?
      return false if @show_grid_lines.nil?
      return false if @print_comments.nil?
      print_comments_validator = EnumAttributeValidator.new('String', ["PrintInPlace", "PrintNoComments", "PrintSheetEnd", "PrintWithThreadedComments"])
      return false unless print_comments_validator.valid?(@print_comments)
      return false if @reset_font_folders.nil?
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
          clear_custom_document_properties == other.clear_custom_document_properties &&
          clear_built_in_document_properties == other.clear_built_in_document_properties &&
          rows_per_page == other.rows_per_page &&
          columns_per_page == other.columns_per_page &&
          auto_fit_rows == other.auto_fit_rows &&
          all_columns_in_one_page_per_sheet == other.all_columns_in_one_page_per_sheet &&
          culture_info == other.culture_info &&
          check_excel_restriction == other.check_excel_restriction &&
          password == other.password &&
          skip_empty_rows_and_columns == other.skip_empty_rows_and_columns &&
          convert_range == other.convert_range &&
          optimize_pdf_size == other.optimize_pdf_size &&
          one_page_per_sheet == other.one_page_per_sheet &&
          show_hidden_sheets == other.show_hidden_sheets &&
          show_grid_lines == other.show_grid_lines &&
          font_substitutes == other.font_substitutes &&
          default_font == other.default_font &&
          sheet_indexes == other.sheet_indexes &&
          sheets == other.sheets &&
          print_comments == other.print_comments &&
          reset_font_folders == other.reset_font_folders
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, clear_custom_document_properties, clear_built_in_document_properties, rows_per_page, columns_per_page, auto_fit_rows, all_columns_in_one_page_per_sheet, culture_info, check_excel_restriction, password, skip_empty_rows_and_columns, convert_range, optimize_pdf_size, one_page_per_sheet, show_hidden_sheets, show_grid_lines, font_substitutes, default_font, sheet_indexes, sheets, print_comments, reset_font_folders].hash
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
