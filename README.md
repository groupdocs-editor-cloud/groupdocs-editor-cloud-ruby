# GroupDocs.Editor Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Editor Cloud API

GroupDocs.Editor Cloud allows you to edit documents across wide range of supported document types:
   * Microsoft Word documents - DOC, DOCX, DOCM, DOT, DOTM, DOTX, RTF, FlatOpc, WordML, TXT;
   * Microsoft Excel spreadsheets - XLS, XLSX, XLSM, XLT, XLTX, XLTM, XLSB, SpreadsheetML, CSV, TSV;
   * Microsoft PowerPoint presentations - PPT, PPTX, PPTM, POT, PPS etc.;
   * Open Document formats - ODT, OTT, ODS, ODP, OTP;
   * Markup - HTML, MHTML, XML.
## Installation

A gem of groupdocs_editor_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_editor_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```
gem "groupdocs_editor_cloud", "~> 21.7"
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'groupdocs_editor_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api = GroupDocsEditorCloud::InfoApi.from_keys(app_sid, app_key)

# Retrieve supported file-formats
response = api.get_supported_file_formats

# Print out supported file-formats
puts("Supported file-formats:")
response.formats.each do |format|
  puts("#{format.file_format} (#{format.extension})") 
end
```

## Licensing
GroupDocs.Editor Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/editor)
+ [**Documentation**](https://docs.groupdocs.cloud/display/editorcloud/Home)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/editor)
+ [**Blog**](https://blog.groupdocs.cloud/category/editor)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/editor).