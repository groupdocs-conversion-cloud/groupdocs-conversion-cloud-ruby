 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="ppsx_load_options.rb">
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
  # Ppsx load options
  class PpsxLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Determines whether the document structure should be preserved when converting     to PDF (default is false).
    attr_accessor :preserve_document_structure

    # Value indicating whether custom document properties should be cleared.
    attr_accessor :clear_custom_document_properties

    # Value indicating whether built in document properties should be cleared.
    attr_accessor :clear_built_in_document_properties

    # Implements GroupDocs.Conversion.Contracts.IDocumentsContainerLoadOptions.Depth     Default: 1
    attr_accessor :depth

    # Implements GroupDocs.Conversion.Contracts.IDocumentsContainerLoadOptions.ConvertOwned     Default is false
    attr_accessor :convert_owned

    # Implements GroupDocs.Conversion.Contracts.IDocumentsContainerLoadOptions.ConvertOwner     Default is true
    attr_accessor :convert_owner

    # Show hidden slides.
    attr_accessor :show_hidden_slides

    # Default font for rendering the presentation. The following font will be used if a presentation font is missing.
    attr_accessor :default_font

    # Substitute specific fonts when converting Slides document.
    attr_accessor :font_substitutes

    # Set password to unprotect protected document
    attr_accessor :password

    # Represents the way comments are printed with the slide. Default is None.
    attr_accessor :comments_position

    # Represents the way notes are printed with the slide. Default is None.
    attr_accessor :notes_position
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
        :'preserve_document_structure' => :'PreserveDocumentStructure',
        :'clear_custom_document_properties' => :'ClearCustomDocumentProperties',
        :'clear_built_in_document_properties' => :'ClearBuiltInDocumentProperties',
        :'depth' => :'Depth',
        :'convert_owned' => :'ConvertOwned',
        :'convert_owner' => :'ConvertOwner',
        :'show_hidden_slides' => :'ShowHiddenSlides',
        :'default_font' => :'DefaultFont',
        :'font_substitutes' => :'FontSubstitutes',
        :'password' => :'Password',
        :'comments_position' => :'CommentsPosition',
        :'notes_position' => :'NotesPosition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'preserve_document_structure' => :'BOOLEAN',
        :'clear_custom_document_properties' => :'BOOLEAN',
        :'clear_built_in_document_properties' => :'BOOLEAN',
        :'depth' => :'Integer',
        :'convert_owned' => :'BOOLEAN',
        :'convert_owner' => :'BOOLEAN',
        :'show_hidden_slides' => :'BOOLEAN',
        :'default_font' => :'String',
        :'font_substitutes' => :'Hash<String, String>',
        :'password' => :'String',
        :'comments_position' => :'String',
        :'notes_position' => :'String'
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

      if attributes.key?(:'PreserveDocumentStructure')
        self.preserve_document_structure = attributes[:'PreserveDocumentStructure']
      end

      if attributes.key?(:'ClearCustomDocumentProperties')
        self.clear_custom_document_properties = attributes[:'ClearCustomDocumentProperties']
      end

      if attributes.key?(:'ClearBuiltInDocumentProperties')
        self.clear_built_in_document_properties = attributes[:'ClearBuiltInDocumentProperties']
      end

      if attributes.key?(:'Depth')
        self.depth = attributes[:'Depth']
      end

      if attributes.key?(:'ConvertOwned')
        self.convert_owned = attributes[:'ConvertOwned']
      end

      if attributes.key?(:'ConvertOwner')
        self.convert_owner = attributes[:'ConvertOwner']
      end

      if attributes.key?(:'ShowHiddenSlides')
        self.show_hidden_slides = attributes[:'ShowHiddenSlides']
      end

      if attributes.key?(:'DefaultFont')
        self.default_font = attributes[:'DefaultFont']
      end

      if attributes.key?(:'FontSubstitutes')
        if (value = attributes[:'FontSubstitutes']).is_a?(Hash)
          self.font_substitutes = value
        end
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'CommentsPosition')
        self.comments_position = attributes[:'CommentsPosition']
      end

      if attributes.key?(:'NotesPosition')
        self.notes_position = attributes[:'NotesPosition']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @preserve_document_structure.nil?
        invalid_properties.push("invalid value for 'preserve_document_structure', preserve_document_structure cannot be nil.")
      end

      if @clear_custom_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_custom_document_properties', clear_custom_document_properties cannot be nil.")
      end

      if @clear_built_in_document_properties.nil?
        invalid_properties.push("invalid value for 'clear_built_in_document_properties', clear_built_in_document_properties cannot be nil.")
      end

      if @depth.nil?
        invalid_properties.push("invalid value for 'depth', depth cannot be nil.")
      end

      if @convert_owned.nil?
        invalid_properties.push("invalid value for 'convert_owned', convert_owned cannot be nil.")
      end

      if @convert_owner.nil?
        invalid_properties.push("invalid value for 'convert_owner', convert_owner cannot be nil.")
      end

      if @show_hidden_slides.nil?
        invalid_properties.push("invalid value for 'show_hidden_slides', show_hidden_slides cannot be nil.")
      end

      if @comments_position.nil?
        invalid_properties.push("invalid value for 'comments_position', comments_position cannot be nil.")
      end

      if @notes_position.nil?
        invalid_properties.push("invalid value for 'notes_position', notes_position cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @preserve_document_structure.nil?
      return false if @clear_custom_document_properties.nil?
      return false if @clear_built_in_document_properties.nil?
      return false if @depth.nil?
      return false if @convert_owned.nil?
      return false if @convert_owner.nil?
      return false if @show_hidden_slides.nil?
      return false if @comments_position.nil?
      comments_position_validator = EnumAttributeValidator.new('String', ["None", "Bottom", "Right"])
      return false unless comments_position_validator.valid?(@comments_position)
      return false if @notes_position.nil?
      notes_position_validator = EnumAttributeValidator.new('String', ["None", "BottomTruncated", "BottomFull"])
      return false unless notes_position_validator.valid?(@notes_position)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comments_position Object to be assigned
    def comments_position=(comments_position)
      validator = EnumAttributeValidator.new('String', ["None", "Bottom", "Right"])
      if comments_position.to_i == 0
        unless validator.valid?(comments_position)
          raise ArgumentError, "invalid value for 'comments_position', must be one of #{validator.allowable_values}."
        end
        @comments_position = comments_position
      else
        @comments_position = validator.allowable_values[comments_position.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notes_position Object to be assigned
    def notes_position=(notes_position)
      validator = EnumAttributeValidator.new('String', ["None", "BottomTruncated", "BottomFull"])
      if notes_position.to_i == 0
        unless validator.valid?(notes_position)
          raise ArgumentError, "invalid value for 'notes_position', must be one of #{validator.allowable_values}."
        end
        @notes_position = notes_position
      else
        @notes_position = validator.allowable_values[notes_position.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          format == other.format &&
          preserve_document_structure == other.preserve_document_structure &&
          clear_custom_document_properties == other.clear_custom_document_properties &&
          clear_built_in_document_properties == other.clear_built_in_document_properties &&
          depth == other.depth &&
          convert_owned == other.convert_owned &&
          convert_owner == other.convert_owner &&
          show_hidden_slides == other.show_hidden_slides &&
          default_font == other.default_font &&
          font_substitutes == other.font_substitutes &&
          password == other.password &&
          comments_position == other.comments_position &&
          notes_position == other.notes_position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, preserve_document_structure, clear_custom_document_properties, clear_built_in_document_properties, depth, convert_owned, convert_owner, show_hidden_slides, default_font, font_substitutes, password, comments_position, notes_position].hash
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
