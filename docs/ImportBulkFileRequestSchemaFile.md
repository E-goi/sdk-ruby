# EgoiRubyClient::ImportBulkFileRequestSchemaFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Url from wich we will download the csv file:  *       Note: Only &#39;http&#39; or &#39;https&#39; protocols are supported |  |
| **field_mapping** | [**Array&lt;ContactFieldMappingFileBulkSchema&gt;**](ContactFieldMappingFileBulkSchema.md) | Contact Import File Field Mapping |  |
| **separator** | **String** | Csv column separator (defaults to \&quot;) | [optional] |
| **delimiter** | **String** | Csv column delimiter (defaults to ,) | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ImportBulkFileRequestSchemaFile.new(
  url: https://e-goi.com/file.csv,
  field_mapping: null,
  separator: &quot;,
  delimiter: ,
)
```

