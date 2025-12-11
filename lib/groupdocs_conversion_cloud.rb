# ------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="groupdocs_conversion_cloud.rb">
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
# ------------------------------------------------------------------------------------

# Common files
require_relative 'groupdocs_conversion_cloud/api_client'
require_relative 'groupdocs_conversion_cloud/api_client_error'
require_relative 'groupdocs_conversion_cloud/version'
require_relative 'groupdocs_conversion_cloud/configuration'

# Models
require_relative 'groupdocs_conversion_cloud/models/api_error'
require_relative 'groupdocs_conversion_cloud/models/api_error_response'
require_relative 'groupdocs_conversion_cloud/models/consumption_result'
require_relative 'groupdocs_conversion_cloud/models/convert_options'
require_relative 'groupdocs_conversion_cloud/models/convert_settings'
require_relative 'groupdocs_conversion_cloud/models/disc_usage'
require_relative 'groupdocs_conversion_cloud/models/document_metadata'
require_relative 'groupdocs_conversion_cloud/models/error'
require_relative 'groupdocs_conversion_cloud/models/error_details'
require_relative 'groupdocs_conversion_cloud/models/field_label'
require_relative 'groupdocs_conversion_cloud/models/file_versions'
require_relative 'groupdocs_conversion_cloud/models/files_list'
require_relative 'groupdocs_conversion_cloud/models/files_upload_result'
require_relative 'groupdocs_conversion_cloud/models/jpg_convert_options'
require_relative 'groupdocs_conversion_cloud/models/license_info'
require_relative 'groupdocs_conversion_cloud/models/load_options'
require_relative 'groupdocs_conversion_cloud/models/object_exist'
require_relative 'groupdocs_conversion_cloud/models/operation_result'
require_relative 'groupdocs_conversion_cloud/models/psd_convert_options'
require_relative 'groupdocs_conversion_cloud/models/rtf_convert_options'
require_relative 'groupdocs_conversion_cloud/models/storage_exist'
require_relative 'groupdocs_conversion_cloud/models/storage_file'
require_relative 'groupdocs_conversion_cloud/models/stored_converted_result'
require_relative 'groupdocs_conversion_cloud/models/supported_format'
require_relative 'groupdocs_conversion_cloud/models/tiff_convert_options'
require_relative 'groupdocs_conversion_cloud/models/watermark_options'
require_relative 'groupdocs_conversion_cloud/models/webp_convert_options'
require_relative 'groupdocs_conversion_cloud/models/cad_convert_options'
require_relative 'groupdocs_conversion_cloud/models/cad_load_options'
require_relative 'groupdocs_conversion_cloud/models/compression_convert_options'
require_relative 'groupdocs_conversion_cloud/models/compression_load_options'
require_relative 'groupdocs_conversion_cloud/models/database_load_options'
require_relative 'groupdocs_conversion_cloud/models/diagram_convert_options'
require_relative 'groupdocs_conversion_cloud/models/diagram_load_options'
require_relative 'groupdocs_conversion_cloud/models/e_book_convert_options'
require_relative 'groupdocs_conversion_cloud/models/e_book_load_options'
require_relative 'groupdocs_conversion_cloud/models/email_convert_options'
require_relative 'groupdocs_conversion_cloud/models/email_load_options'
require_relative 'groupdocs_conversion_cloud/models/file_version'
require_relative 'groupdocs_conversion_cloud/models/finance_convert_options'
require_relative 'groupdocs_conversion_cloud/models/finance_load_options'
require_relative 'groupdocs_conversion_cloud/models/font_convert_options'
require_relative 'groupdocs_conversion_cloud/models/font_load_options'
require_relative 'groupdocs_conversion_cloud/models/gis_convert_options'
require_relative 'groupdocs_conversion_cloud/models/gis_load_options'
require_relative 'groupdocs_conversion_cloud/models/image_convert_options'
require_relative 'groupdocs_conversion_cloud/models/image_load_options'
require_relative 'groupdocs_conversion_cloud/models/mbox_load_options'
require_relative 'groupdocs_conversion_cloud/models/note_load_options'
require_relative 'groupdocs_conversion_cloud/models/olm_load_options'
require_relative 'groupdocs_conversion_cloud/models/pdl_convert_options'
require_relative 'groupdocs_conversion_cloud/models/pdf_convert_options'
require_relative 'groupdocs_conversion_cloud/models/pdf_load_options'
require_relative 'groupdocs_conversion_cloud/models/pdl_load_options'
require_relative 'groupdocs_conversion_cloud/models/personal_storage_load_options'
require_relative 'groupdocs_conversion_cloud/models/presentation_convert_options'
require_relative 'groupdocs_conversion_cloud/models/presentation_load_options'
require_relative 'groupdocs_conversion_cloud/models/project_management_convert_options'
require_relative 'groupdocs_conversion_cloud/models/pub_load_options'
require_relative 'groupdocs_conversion_cloud/models/spreadsheet_convert_options'
require_relative 'groupdocs_conversion_cloud/models/spreadsheet_load_options'
require_relative 'groupdocs_conversion_cloud/models/three_d_convert_options'
require_relative 'groupdocs_conversion_cloud/models/three_d_load_options'
require_relative 'groupdocs_conversion_cloud/models/txt_load_options'
require_relative 'groupdocs_conversion_cloud/models/vcf_load_options'
require_relative 'groupdocs_conversion_cloud/models/web_convert_options'
require_relative 'groupdocs_conversion_cloud/models/web_load_options'
require_relative 'groupdocs_conversion_cloud/models/word_processing_convert_options'
require_relative 'groupdocs_conversion_cloud/models/word_processing_load_options'
require_relative 'groupdocs_conversion_cloud/models/xml_load_options'
require_relative 'groupdocs_conversion_cloud/models/csv_load_options'
require_relative 'groupdocs_conversion_cloud/models/tsv_load_options'

# APIs
require_relative 'groupdocs_conversion_cloud/api/async_api'
require_relative 'groupdocs_conversion_cloud/api/convert_api'
require_relative 'groupdocs_conversion_cloud/api/file_api'
require_relative 'groupdocs_conversion_cloud/api/folder_api'
require_relative 'groupdocs_conversion_cloud/api/info_api'
require_relative 'groupdocs_conversion_cloud/api/license_api'
require_relative 'groupdocs_conversion_cloud/api/storage_api'
