 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="psd_convert_options.rb">
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
  # Psd convert options
  class PsdConvertOptions

    # Bits count per color channel
    attr_accessor :channel_bits_count

    # Color channels count
    attr_accessor :channels_count

    # Psd color mode
    attr_accessor :color_mode

    # Psd compression method
    attr_accessor :compression_method

    # Psd file version
    attr_accessor :version
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
        :'channel_bits_count' => :'ChannelBitsCount',
        :'channels_count' => :'ChannelsCount',
        :'color_mode' => :'ColorMode',
        :'compression_method' => :'CompressionMethod',
        :'version' => :'Version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'channel_bits_count' => :'Integer',
        :'channels_count' => :'Integer',
        :'color_mode' => :'String',
        :'compression_method' => :'String',
        :'version' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'ChannelBitsCount')
        self.channel_bits_count = attributes[:'ChannelBitsCount']
      end

      if attributes.key?(:'ChannelsCount')
        self.channels_count = attributes[:'ChannelsCount']
      end

      if attributes.key?(:'ColorMode')
        self.color_mode = attributes[:'ColorMode']
      end

      if attributes.key?(:'CompressionMethod')
        self.compression_method = attributes[:'CompressionMethod']
      end

      if attributes.key?(:'Version')
        self.version = attributes[:'Version']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @channel_bits_count.nil?
        invalid_properties.push("invalid value for 'channel_bits_count', channel_bits_count cannot be nil.")
      end

      if @channels_count.nil?
        invalid_properties.push("invalid value for 'channels_count', channels_count cannot be nil.")
      end

      if @color_mode.nil?
        invalid_properties.push("invalid value for 'color_mode', color_mode cannot be nil.")
      end

      if @compression_method.nil?
        invalid_properties.push("invalid value for 'compression_method', compression_method cannot be nil.")
      end

      if @version.nil?
        invalid_properties.push("invalid value for 'version', version cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel_bits_count.nil?
      return false if @channels_count.nil?
      return false if @color_mode.nil?
      color_mode_validator = EnumAttributeValidator.new('String', ["Bitmap", "Grayscale", "Indexed", "Rgb", "Cmyk", "Multichannel", "Duotone", "Lab"])
      return false unless color_mode_validator.valid?(@color_mode)
      return false if @compression_method.nil?
      compression_method_validator = EnumAttributeValidator.new('String', ["Raw", "Rle", "ZipWithoutPrediction", "ZipWithPrediction"])
      return false unless compression_method_validator.valid?(@compression_method)
      return false if @version.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] color_mode Object to be assigned
    def color_mode=(color_mode)
      validator = EnumAttributeValidator.new('String', ["Bitmap", "Grayscale", "Indexed", "Rgb", "Cmyk", "Multichannel", "Duotone", "Lab"])
      if color_mode.to_i == 0
        unless validator.valid?(color_mode)
          raise ArgumentError, "invalid value for 'color_mode', must be one of #{validator.allowable_values}."
        end
        @color_mode = color_mode
      else
        @color_mode = validator.allowable_values[color_mode.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compression_method Object to be assigned
    def compression_method=(compression_method)
      validator = EnumAttributeValidator.new('String', ["Raw", "Rle", "ZipWithoutPrediction", "ZipWithPrediction"])
      if compression_method.to_i == 0
        unless validator.valid?(compression_method)
          raise ArgumentError, "invalid value for 'compression_method', must be one of #{validator.allowable_values}."
        end
        @compression_method = compression_method
      else
        @compression_method = validator.allowable_values[compression_method.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          channel_bits_count == other.channel_bits_count &&
          channels_count == other.channels_count &&
          color_mode == other.color_mode &&
          compression_method == other.compression_method &&
          version == other.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [channel_bits_count, channels_count, color_mode, compression_method, version].hash
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
