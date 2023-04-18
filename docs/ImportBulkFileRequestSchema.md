# EgoiRubyClient::ImportBulkFileRequestSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Add new contacts only (&#39;add&#39;) or add and replace existing ones (&#39;update&#39;) |  |
| **compare_field** | **String** | Field ID which will be mapped for comparison to prevent duplicates) |  |
| **file** | [**ImportBulkFileRequestSchemaFile**](ImportBulkFileRequestSchemaFile.md) |  |  |
| **force_empty** | **Boolean** | If &#39;true&#39; accepts empty values and erases those fields | [optional][default to false] |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |
| **callback_url** | **String** | Url to receive the report &lt;a href&#x3D;&#39;/usecases/callbacks/#import-collection-of-contacts&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to callback documentation]&lt;/a&gt; | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ImportBulkFileRequestSchema.new(
  mode: null,
  compare_field: email,
  file: null,
  force_empty: null,
  notify: null,
  callback_url: null
)
```

