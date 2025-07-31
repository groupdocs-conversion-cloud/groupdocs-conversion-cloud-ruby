# GroupDocs.Conversion Cloud Ruby SDK

This repository contains GroupDocs.Conversion Cloud SDK for Ruby source code. This SDK has been developed to help you get started with using our document conversion REST API, allowing to seamlessly convert your documents to any format you need. With this single API, you can convert back and forth between over 50 types of documents and images, including all Microsoft Office and OpenDocument file formats, PDF documents, HTML, CAD, raster images and many more.

## Installation

A gem of groupdocs_conversion_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_conversion_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'
```
### Create an account
Creating an account is very simple. Go to Dashboard to create a free account.
We’re using Single Sign On across our websites, therefore, if you already have an account with our services, you can use it to also access the [Dashboard](https://dashboard.groupdocs.cloud).

### Create an API client app
Before you can make any requests to GroupDocs Cloud API you need to get a Client Id and a Client Secret. This will be used to invoke GroupDocs Cloud API. You can get it by creating a new [Application](https://dashboard.groupdocs.cloud/applications).

## Convert document

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'

# Get your clientId and clientSecret at https://dashboard.groupdocs.cloud (free registration is required).
client_id = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
apiInstance = GroupDocsConversionCloud::ConvertApi.from_keys(client_id, client_secret)

# Prepare request
file = File.open("myFile.docx", "r")
request = GroupDocsConversionCloud::ConvertDocumentDirectRequest.new("pdf", file)

# Convert
result = apiInstance.convert_document_direct(request)

puts("Document converted: " + (result.length).to_s)
```

## Convert document using cloud storage

```ruby
# Load the gem
require 'groupdocs_conversion_cloud'

# Get your clientId and clientSecret at https://dashboard.groupdocs.cloud (free registration is required).
client_id = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
client_secret = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instancea of the APIs
fileApi = GroupDocsConversionCloud::FileApi.from_keys(client_id, client_secret)
convertApi = GroupDocsConversionCloud::ConvertApi.from_keys(client_id, client_secret)

# Upload file
file = File.open("myFile.docx", "r")
fileApi.upload_file(GroupDocsConversionCloud::UploadFileRequest.new("myFile.docx", file))

# Convert
settings = GroupDocsConversionCloud::ConvertSettings.new
settings.file_path = "myFile.docx"
settings.format = "pdf"
settings.output_path = "converted"

result = convertApi.convert_document(GroupDocsConversionCloud::ConvertDocumentRequest.new(settings))

puts("Document converted: " + result[0].url)

# Download converted file    
response = fileApi.download_file(GroupDocsConversionCloud::DownloadFileRequest.new("converted/myFile.pdf", nil))
puts("Expected response type is Stream: " + ($response).to_s)

```

## Licensing
GroupDocs.Conversion Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/conversion)
+ [**Documentation**](https://docs.groupdocs.cloud/display/conversioncloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/conversion)
+ [**Blog**](https://blog.groupdocs.cloud/category/conversion)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/conversion).