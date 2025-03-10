 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="web_convert_options.rb">
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
  # Options for to Html conversion
  class WebConvertOptions

    # Start conversion from FromPage page
    attr_accessor :from_page

    # Number of pages to convert
    attr_accessor :pages_count

    # Convert specific pages. The list contains the page indexes of the pages to be converted
    attr_accessor :pages

    # Watermark specific options
    attr_accessor :watermark_options

    # If true, the input firstly is converted to PDF and after that to desired format
    attr_accessor :use_pdf

    # If true fixed layout will be used e.g. absolutely positioned html elements Default:  true
    attr_accessor :fixed_layout

    # Show page borders when converting to fixed layout. Default is True
    attr_accessor :fixed_layout_show_borders

    # Specifies the zoom level in percentage. Default is 100.
    attr_accessor :zoom

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'from_page' => :'FromPage',
        :'pages_count' => :'PagesCount',
        :'pages' => :'Pages',
        :'watermark_options' => :'WatermarkOptions',
        :'use_pdf' => :'UsePdf',
        :'fixed_layout' => :'FixedLayout',
        :'fixed_layout_show_borders' => :'FixedLayoutShowBorders',
        :'zoom' => :'Zoom'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'from_page' => :'Integer',
        :'pages_count' => :'Integer',
        :'pages' => :'Array<Integer>',
        :'watermark_options' => :'WatermarkOptions',
        :'use_pdf' => :'BOOLEAN',
        :'fixed_layout' => :'BOOLEAN',
        :'fixed_layout_show_borders' => :'BOOLEAN',
        :'zoom' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FromPage')
        self.from_page = attributes[:'FromPage']
      end

      if attributes.key?(:'PagesCount')
        self.pages_count = attributes[:'PagesCount']
      end

      if attributes.key?(:'Pages')
        if (value = attributes[:'Pages']).is_a?(Array)
          self.pages = value
        end
      end

      if attributes.key?(:'WatermarkOptions')
        self.watermark_options = attributes[:'WatermarkOptions']
      end

      if attributes.key?(:'UsePdf')
        self.use_pdf = attributes[:'UsePdf']
      end

      if attributes.key?(:'FixedLayout')
        self.fixed_layout = attributes[:'FixedLayout']
      end

      if attributes.key?(:'FixedLayoutShowBorders')
        self.fixed_layout_show_borders = attributes[:'FixedLayoutShowBorders']
      end

      if attributes.key?(:'Zoom')
        self.zoom = attributes[:'Zoom']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @from_page.nil?
        invalid_properties.push("invalid value for 'from_page', from_page cannot be nil.")
      end

      if @pages_count.nil?
        invalid_properties.push("invalid value for 'pages_count', pages_count cannot be nil.")
      end

      if @use_pdf.nil?
        invalid_properties.push("invalid value for 'use_pdf', use_pdf cannot be nil.")
      end

      if @fixed_layout.nil?
        invalid_properties.push("invalid value for 'fixed_layout', fixed_layout cannot be nil.")
      end

      if @fixed_layout_show_borders.nil?
        invalid_properties.push("invalid value for 'fixed_layout_show_borders', fixed_layout_show_borders cannot be nil.")
      end

      if @zoom.nil?
        invalid_properties.push("invalid value for 'zoom', zoom cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @from_page.nil?
      return false if @pages_count.nil?
      return false if @use_pdf.nil?
      return false if @fixed_layout.nil?
      return false if @fixed_layout_show_borders.nil?
      return false if @zoom.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          from_page == other.from_page &&
          pages_count == other.pages_count &&
          pages == other.pages &&
          watermark_options == other.watermark_options &&
          use_pdf == other.use_pdf &&
          fixed_layout == other.fixed_layout &&
          fixed_layout_show_borders == other.fixed_layout_show_borders &&
          zoom == other.zoom
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [from_page, pages_count, pages, watermark_options, use_pdf, fixed_layout, fixed_layout_show_borders, zoom].hash
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
