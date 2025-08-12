 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="pdf_load_options.rb">
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
  # Pdf document load options
  class PdfLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Clear built-in document properties
    attr_accessor :clear_built_in_document_properties

    # Clear custom document properties
    attr_accessor :clear_custom_document_properties

    # Enable or disable generation of page numbering in converted document. Default:     false
    attr_accessor :page_numbering

    # Flatten all the fields of the PDF form
    attr_accessor :flatten_all_fields

    # Hide annotations in Pdf documents
    attr_accessor :hide_pdf_annotations

    # Default font for Pdf document. The following font will be used if a font is missing.
    attr_accessor :default_font

    # Set password to unprotect protected document
    attr_accessor :password

    # Remove javascript
    attr_accessor :remove_javascript

    # Remove embedded files
    attr_accessor :remove_embedded_files

    # Substitute specific fonts when converting Words document.
    attr_accessor :font_substitutes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'Format',
        :'clear_built_in_document_properties' => :'ClearBuiltInDocumentProperties',
        :'clear_custom_document_properties' => :'ClearCustomDocumentProperties',
        :'page_numbering' => :'PageNumbering',
        :'flatten_all_fields' => :'FlattenAllFields',
        :'hide_pdf_annotations' => :'HidePdfAnnotations',
        :'default_font' => :'DefaultFont',
        :'password' => :'Password',
        :'remove_javascript' => :'RemoveJavascript',
        :'remove_embedded_files' => :'RemoveEmbeddedFiles',
        :'font_substitutes' => :'FontSubstitutes'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'clear_built_in_document_properties' => :'BOOLEAN',
        :'clear_custom_document_properties' => :'BOOLEAN',
        :'page_numbering' => :'BOOLEAN',
        :'flatten_all_fields' => :'BOOLEAN',
        :'hide_pdf_annotations' => :'BOOLEAN',
        :'default_font' => :'String',
        :'password' => :'String',
        :'remove_javascript' => :'BOOLEAN',
        :'remove_embedded_files' => :'BOOLEAN',
        :'font_substitutes' => :'Hash<String, String>'
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

      if attributes.key?(:'ClearBuiltInDocumentProperties')
        self.clear_built_in_document_properties = attributes[:'ClearBuiltInDocumentProperties']
      end

      if attributes.key?(:'ClearCustomDocumentProperties')
        self.clear_custom_document_properties = attributes[:'ClearCustomDocumentProperties']
      end

      if attributes.key?(:'PageNumbering')
        self.page_numbering = attributes[:'PageNumbering']
      end

      if attributes.key?(:'FlattenAllFields')
        self.flatten_all_fields = attributes[:'FlattenAllFields']
      end

      if attributes.key?(:'HidePdfAnnotations')
        self.hide_pdf_annotations = attributes[:'HidePdfAnnotations']
      end

      if attributes.key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'RemoveJavascript')
        self.remove_javascript = attributes[:'RemoveJavascript']
      end

      if attributes.key?(:'RemoveEmbeddedFiles')
        self.remove_embedded_files = attributes[:'RemoveEmbeddedFiles']
      end

      if attributes.key?(:'FontSubstitutes')
        if (value = attributes[:'FontSubstitutes']).is_a?(Hash)
          self.font_substitutes = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @clear_built_in_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_built_in_document_properties', clear_built_in_document_properties cannot be nil.")
      end

      if @clear_custom_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_custom_document_properties', clear_custom_document_properties cannot be nil.")
      end

      if @page_numbering.nil?
        invalid_properties.push("invalid value for 'page_numbering', page_numbering cannot be nil.")
      end

      if @flatten_all_fields.nil?
        invalid_properties.push("invalid value for 'flatten_all_fields', flatten_all_fields cannot be nil.")
      end

      if @hide_pdf_annotations.nil?
        invalid_properties.push("invalid value for 'hide_pdf_annotations', hide_pdf_annotations cannot be nil.")
      end

      if @remove_javascript.nil?
        invalid_properties.push("invalid value for 'remove_javascript', remove_javascript cannot be nil.")
      end

      if @remove_embedded_files.nil?
        invalid_properties.push("invalid value for 'remove_embedded_files', remove_embedded_files cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @clear_built_in_document_properties.nil?
      return false if @clear_custom_document_properties.nil?
      return false if @page_numbering.nil?
      return false if @flatten_all_fields.nil?
      return false if @hide_pdf_annotations.nil?
      return false if @remove_javascript.nil?
      return false if @remove_embedded_files.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          clear_built_in_document_properties == other.clear_built_in_document_properties &&
          clear_custom_document_properties == other.clear_custom_document_properties &&
          page_numbering == other.page_numbering &&
          flatten_all_fields == other.flatten_all_fields &&
          hide_pdf_annotations == other.hide_pdf_annotations &&
          default_font == other.default_font &&
          password == other.password &&
          remove_javascript == other.remove_javascript &&
          remove_embedded_files == other.remove_embedded_files &&
          font_substitutes == other.font_substitutes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, clear_built_in_document_properties, clear_custom_document_properties, page_numbering, flatten_all_fields, hide_pdf_annotations, default_font, password, remove_javascript, remove_embedded_files, font_substitutes].hash
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
