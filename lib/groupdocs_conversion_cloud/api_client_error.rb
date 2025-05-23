# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="api_error.rb">
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
# -----------------------------------------------------------------------------------

module GroupDocsConversionCloud
  #
  # ApiClientError class for error handling
  #
  class ApiClientError < StandardError
    attr_reader :code
    attr_reader :message

    # Usage examples:
    #   ApiClientError.new
    #   ApiClientError.new(:code => 500, :response_body => "")
    def initialize(arg = nil)      
      if arg.is_a? Hash        
        if arg.key?(:response_body) then
          data = JSON.parse(arg[:response_body], :symbolize_names => true)
          if !data.nil? then
            if !data[:error].nil? then
              error = data[:error]
              if error.kind_of?(String) then
                @message = error
              else
                @message = error[:message]
              end
            else
              message = data[:message]
              if !message.nil? && message.kind_of?(String) then
                @message = message
                @code = data[:code]
              else
                @message = data
              end              
            end
          end
        end

        if arg.key?(:arg) then
          @code = arg[:Code]
        end
        
      else
        super arg
      end
    end
  end
end

