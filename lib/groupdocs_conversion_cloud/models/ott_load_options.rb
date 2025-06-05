 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="ott_load_options.rb">
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
  # Ott load options
  class OttLoadOptions

    # The format of input file, (\"docx\", for example). This field must be filled with correct input file format when using ConvertDirect method, which accept input file as binary stream, and, because of that, API can correctly handle LoadOptions. In regular conversion, the input file format taken from the input file name and this field ignored.
    attr_accessor :format

    # Default font for Words document. The following font will be used if a font is missing.
    attr_accessor :default_font

    # Substitute specific fonts when converting Words document.
    attr_accessor :font_substitutes

    # Set password to unprotect protected document
    attr_accessor :password

    # Hide markup and track changes for Word documents
    attr_accessor :hide_word_tracked_changes

    # Specifies the default level in the document outline at which to display Word bookmarks. Default is 0. Valid range is 0 to 9.
    attr_accessor :bookmarks_outline_level

    # Specifies how many levels of headings (paragraphs formatted with the Heading styles) to include in the document outline. Default is 0. Valid range is 0 to 9.
    attr_accessor :headings_outline_levels

    # Specifies how many levels in the document outline to show expanded when the file is viewed. Default is 0. Valid range is 0 to 9. Note that this options will not work when saving to XPS.
    attr_accessor :expanded_outline_levels

    # Clear custom document properties. Default is false.
    attr_accessor :clear_custom_document_properties

    # Clear built-in document properties. Default is false.
    attr_accessor :clear_built_in_document_properties

    # Option to control how many levels in depth to perform conversion. Default: 1.
    attr_accessor :depth

    # Option to control whether the owned documents in the documents container must be converted
    attr_accessor :convert_owned

    # Option to control whether the documents container itself must be converted If this property is true the documents container will be the first converted document. Default is true.
    attr_accessor :convert_owner

    # Gets or sets value determining whether automatic hyphenation is turned on for the document. Default value for this property is false.
    attr_accessor :auto_hyphenation

    # Gets or sets value determining whether words written in all capital letters are hyphenated. Default value for this property is true.
    attr_accessor :hyphenate_caps

    # Enable or disable generation of page numbering in converted document. Default: false
    attr_accessor :page_numbering

    # Determines whether the document structure should be preserved when converting to PDF (default is false).
    attr_accessor :preserve_document_structure

    # If true all external resource will not be loading. Default is true.
    attr_accessor :skip_external_resources

    # Specifies whether to use a text shaper for better kerning display. Default is false.
    attr_accessor :use_text_shaper

    # Specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text. Default is false.
    attr_accessor :preserve_form_fields

    # Specifies how comments should be displayed in the output document. Default is Balloon.
    attr_accessor :comment_display_mode

    # Keep original value of date field. Default: false
    attr_accessor :keep_date_field_original_value

    # Update fields after loading. Default: false
    attr_accessor :update_fields

    # Update page layout after loading. Default: false
    attr_accessor :update_page_layout

    # If EmbedTrueTypeFonts is true, GroupDocs.Conversion Cloud embed true type fonts in the output document. Default: true
    attr_accessor :embed_true_type_fonts

    # Automatically substitutes missing fonts based on FontInfo in the document. Default: false.
    attr_accessor :font_info_substitution_enabled

    # Automatically substitutes missing fonts based on FontConfig in the system. Default: false.
    attr_accessor :font_config_substitution_enabled

    # Automatically substitutes missing fonts based on the font name. Default: false.
    attr_accessor :font_name_substitution_enabled

    # Show full commenter name in comments. Default is false.
    attr_accessor :show_full_commenter_name
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
        :'password' => :'Password',
        :'hide_word_tracked_changes' => :'HideWordTrackedChanges',
        :'bookmarks_outline_level' => :'BookmarksOutlineLevel',
        :'headings_outline_levels' => :'HeadingsOutlineLevels',
        :'expanded_outline_levels' => :'ExpandedOutlineLevels',
        :'clear_custom_document_properties' => :'ClearCustomDocumentProperties',
        :'clear_built_in_document_properties' => :'ClearBuiltInDocumentProperties',
        :'depth' => :'Depth',
        :'convert_owned' => :'ConvertOwned',
        :'convert_owner' => :'ConvertOwner',
        :'auto_hyphenation' => :'AutoHyphenation',
        :'hyphenate_caps' => :'HyphenateCaps',
        :'page_numbering' => :'PageNumbering',
        :'preserve_document_structure' => :'PreserveDocumentStructure',
        :'skip_external_resources' => :'SkipExternalResources',
        :'use_text_shaper' => :'UseTextShaper',
        :'preserve_form_fields' => :'PreserveFormFields',
        :'comment_display_mode' => :'CommentDisplayMode',
        :'keep_date_field_original_value' => :'KeepDateFieldOriginalValue',
        :'update_fields' => :'UpdateFields',
        :'update_page_layout' => :'UpdatePageLayout',
        :'embed_true_type_fonts' => :'EmbedTrueTypeFonts',
        :'font_info_substitution_enabled' => :'FontInfoSubstitutionEnabled',
        :'font_config_substitution_enabled' => :'FontConfigSubstitutionEnabled',
        :'font_name_substitution_enabled' => :'FontNameSubstitutionEnabled',
        :'show_full_commenter_name' => :'ShowFullCommenterName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'default_font' => :'String',
        :'font_substitutes' => :'Hash<String, String>',
        :'password' => :'String',
        :'hide_word_tracked_changes' => :'BOOLEAN',
        :'bookmarks_outline_level' => :'Integer',
        :'headings_outline_levels' => :'Integer',
        :'expanded_outline_levels' => :'Integer',
        :'clear_custom_document_properties' => :'BOOLEAN',
        :'clear_built_in_document_properties' => :'BOOLEAN',
        :'depth' => :'Integer',
        :'convert_owned' => :'BOOLEAN',
        :'convert_owner' => :'BOOLEAN',
        :'auto_hyphenation' => :'BOOLEAN',
        :'hyphenate_caps' => :'BOOLEAN',
        :'page_numbering' => :'BOOLEAN',
        :'preserve_document_structure' => :'BOOLEAN',
        :'skip_external_resources' => :'BOOLEAN',
        :'use_text_shaper' => :'BOOLEAN',
        :'preserve_form_fields' => :'BOOLEAN',
        :'comment_display_mode' => :'String',
        :'keep_date_field_original_value' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN',
        :'update_page_layout' => :'BOOLEAN',
        :'embed_true_type_fonts' => :'BOOLEAN',
        :'font_info_substitution_enabled' => :'BOOLEAN',
        :'font_config_substitution_enabled' => :'BOOLEAN',
        :'font_name_substitution_enabled' => :'BOOLEAN',
        :'show_full_commenter_name' => :'BOOLEAN'
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

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'HideWordTrackedChanges')
        self.hide_word_tracked_changes = attributes[:'HideWordTrackedChanges']
      end

      if attributes.key?(:'BookmarksOutlineLevel')
        self.bookmarks_outline_level = attributes[:'BookmarksOutlineLevel']
      end

      if attributes.key?(:'HeadingsOutlineLevels')
        self.headings_outline_levels = attributes[:'HeadingsOutlineLevels']
      end

      if attributes.key?(:'ExpandedOutlineLevels')
        self.expanded_outline_levels = attributes[:'ExpandedOutlineLevels']
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

      if attributes.key?(:'AutoHyphenation')
        self.auto_hyphenation = attributes[:'AutoHyphenation']
      end

      if attributes.key?(:'HyphenateCaps')
        self.hyphenate_caps = attributes[:'HyphenateCaps']
      end

      if attributes.key?(:'PageNumbering')
        self.page_numbering = attributes[:'PageNumbering']
      end

      if attributes.key?(:'PreserveDocumentStructure')
        self.preserve_document_structure = attributes[:'PreserveDocumentStructure']
      end

      if attributes.key?(:'SkipExternalResources')
        self.skip_external_resources = attributes[:'SkipExternalResources']
      end

      if attributes.key?(:'UseTextShaper')
        self.use_text_shaper = attributes[:'UseTextShaper']
      end

      if attributes.key?(:'PreserveFormFields')
        self.preserve_form_fields = attributes[:'PreserveFormFields']
      end

      if attributes.key?(:'CommentDisplayMode')
        self.comment_display_mode = attributes[:'CommentDisplayMode']
      end

      if attributes.key?(:'KeepDateFieldOriginalValue')
        self.keep_date_field_original_value = attributes[:'KeepDateFieldOriginalValue']
      end

      if attributes.key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

      if attributes.key?(:'UpdatePageLayout')
        self.update_page_layout = attributes[:'UpdatePageLayout']
      end

      if attributes.key?(:'EmbedTrueTypeFonts')
        self.embed_true_type_fonts = attributes[:'EmbedTrueTypeFonts']
      end

      if attributes.key?(:'FontInfoSubstitutionEnabled')
        self.font_info_substitution_enabled = attributes[:'FontInfoSubstitutionEnabled']
      end

      if attributes.key?(:'FontConfigSubstitutionEnabled')
        self.font_config_substitution_enabled = attributes[:'FontConfigSubstitutionEnabled']
      end

      if attributes.key?(:'FontNameSubstitutionEnabled')
        self.font_name_substitution_enabled = attributes[:'FontNameSubstitutionEnabled']
      end

      if attributes.key?(:'ShowFullCommenterName')
        self.show_full_commenter_name = attributes[:'ShowFullCommenterName']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @hide_word_tracked_changes.nil?
        invalid_properties.push("invalid value for 'hide_word_tracked_changes', hide_word_tracked_changes cannot be nil.")
      end

      if @bookmarks_outline_level.nil?
        invalid_properties.push("invalid value for 'bookmarks_outline_level', bookmarks_outline_level cannot be nil.")
      end

      if @headings_outline_levels.nil?
        invalid_properties.push("invalid value for 'headings_outline_levels', headings_outline_levels cannot be nil.")
      end

      if @expanded_outline_levels.nil?
        invalid_properties.push("invalid value for 'expanded_outline_levels', expanded_outline_levels cannot be nil.")
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

      if @auto_hyphenation.nil?
        invalid_properties.push("invalid value for 'auto_hyphenation', auto_hyphenation cannot be nil.")
      end

      if @hyphenate_caps.nil?
        invalid_properties.push("invalid value for 'hyphenate_caps', hyphenate_caps cannot be nil.")
      end

      if @page_numbering.nil?
        invalid_properties.push("invalid value for 'page_numbering', page_numbering cannot be nil.")
      end

      if @preserve_document_structure.nil?
        invalid_properties.push("invalid value for 'preserve_document_structure', preserve_document_structure cannot be nil.")
      end

      if @skip_external_resources.nil?
        invalid_properties.push("invalid value for 'skip_external_resources', skip_external_resources cannot be nil.")
      end

      if @use_text_shaper.nil?
        invalid_properties.push("invalid value for 'use_text_shaper', use_text_shaper cannot be nil.")
      end

      if @preserve_form_fields.nil?
        invalid_properties.push("invalid value for 'preserve_form_fields', preserve_form_fields cannot be nil.")
      end

      if @comment_display_mode.nil?
        invalid_properties.push("invalid value for 'comment_display_mode', comment_display_mode cannot be nil.")
      end

      if @keep_date_field_original_value.nil?
        invalid_properties.push("invalid value for 'keep_date_field_original_value', keep_date_field_original_value cannot be nil.")
      end

      if @update_fields.nil?
        invalid_properties.push("invalid value for 'update_fields', update_fields cannot be nil.")
      end

      if @update_page_layout.nil?
        invalid_properties.push("invalid value for 'update_page_layout', update_page_layout cannot be nil.")
      end

      if @embed_true_type_fonts.nil?
        invalid_properties.push("invalid value for 'embed_true_type_fonts', embed_true_type_fonts cannot be nil.")
      end

      if @font_info_substitution_enabled.nil?
        invalid_properties.push("invalid value for 'font_info_substitution_enabled', font_info_substitution_enabled cannot be nil.")
      end

      if @font_config_substitution_enabled.nil?
        invalid_properties.push("invalid value for 'font_config_substitution_enabled', font_config_substitution_enabled cannot be nil.")
      end

      if @font_name_substitution_enabled.nil?
        invalid_properties.push("invalid value for 'font_name_substitution_enabled', font_name_substitution_enabled cannot be nil.")
      end

      if @show_full_commenter_name.nil?
        invalid_properties.push("invalid value for 'show_full_commenter_name', show_full_commenter_name cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @hide_word_tracked_changes.nil?
      return false if @bookmarks_outline_level.nil?
      return false if @headings_outline_levels.nil?
      return false if @expanded_outline_levels.nil?
      return false if @clear_custom_document_properties.nil?
      return false if @clear_built_in_document_properties.nil?
      return false if @depth.nil?
      return false if @convert_owned.nil?
      return false if @convert_owner.nil?
      return false if @auto_hyphenation.nil?
      return false if @hyphenate_caps.nil?
      return false if @page_numbering.nil?
      return false if @preserve_document_structure.nil?
      return false if @skip_external_resources.nil?
      return false if @use_text_shaper.nil?
      return false if @preserve_form_fields.nil?
      return false if @comment_display_mode.nil?
      comment_display_mode_validator = EnumAttributeValidator.new('String', ["Hidden", "Balloon", "Annotation"])
      return false unless comment_display_mode_validator.valid?(@comment_display_mode)
      return false if @keep_date_field_original_value.nil?
      return false if @update_fields.nil?
      return false if @update_page_layout.nil?
      return false if @embed_true_type_fonts.nil?
      return false if @font_info_substitution_enabled.nil?
      return false if @font_config_substitution_enabled.nil?
      return false if @font_name_substitution_enabled.nil?
      return false if @show_full_commenter_name.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comment_display_mode Object to be assigned
    def comment_display_mode=(comment_display_mode)
      validator = EnumAttributeValidator.new('String', ["Hidden", "Balloon", "Annotation"])
      if comment_display_mode.to_i == 0
        unless validator.valid?(comment_display_mode)
          raise ArgumentError, "invalid value for 'comment_display_mode', must be one of #{validator.allowable_values}."
        end
        @comment_display_mode = comment_display_mode
      else
        @comment_display_mode = validator.allowable_values[comment_display_mode.to_i]
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
          password == other.password &&
          hide_word_tracked_changes == other.hide_word_tracked_changes &&
          bookmarks_outline_level == other.bookmarks_outline_level &&
          headings_outline_levels == other.headings_outline_levels &&
          expanded_outline_levels == other.expanded_outline_levels &&
          clear_custom_document_properties == other.clear_custom_document_properties &&
          clear_built_in_document_properties == other.clear_built_in_document_properties &&
          depth == other.depth &&
          convert_owned == other.convert_owned &&
          convert_owner == other.convert_owner &&
          auto_hyphenation == other.auto_hyphenation &&
          hyphenate_caps == other.hyphenate_caps &&
          page_numbering == other.page_numbering &&
          preserve_document_structure == other.preserve_document_structure &&
          skip_external_resources == other.skip_external_resources &&
          use_text_shaper == other.use_text_shaper &&
          preserve_form_fields == other.preserve_form_fields &&
          comment_display_mode == other.comment_display_mode &&
          keep_date_field_original_value == other.keep_date_field_original_value &&
          update_fields == other.update_fields &&
          update_page_layout == other.update_page_layout &&
          embed_true_type_fonts == other.embed_true_type_fonts &&
          font_info_substitution_enabled == other.font_info_substitution_enabled &&
          font_config_substitution_enabled == other.font_config_substitution_enabled &&
          font_name_substitution_enabled == other.font_name_substitution_enabled &&
          show_full_commenter_name == other.show_full_commenter_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, default_font, font_substitutes, password, hide_word_tracked_changes, bookmarks_outline_level, headings_outline_levels, expanded_outline_levels, clear_custom_document_properties, clear_built_in_document_properties, depth, convert_owned, convert_owner, auto_hyphenation, hyphenate_caps, page_numbering, preserve_document_structure, skip_external_resources, use_text_shaper, preserve_form_fields, comment_display_mode, keep_date_field_original_value, update_fields, update_page_layout, embed_true_type_fonts, font_info_substitution_enabled, font_config_substitution_enabled, font_name_substitution_enabled, show_full_commenter_name].hash
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
