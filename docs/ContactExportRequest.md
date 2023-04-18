# EgoiRubyClient::ContactExportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **format** | **String** | File extension to export contacts |  |
| **callback_url** | **String** | Url to receive the callback &lt;a href&#x3D;&#39;/usecases/callbacks/#exports-a-list-of-contacts&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to callback documentation]&lt;/a&gt; | [optional] |
| **segments** | **Array&lt;String&gt;** | Array of segment IDs to filter contacts to export. ***Note:*** segments of type ***auto*** and  ***tag*** are not yet supported but they are expected to be supported soon! | [optional] |
| **fields** | **Array&lt;String&gt;** | Array of field IDs to be displayed in the exported file | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExportRequest.new(
  format: null,
  callback_url: null,
  segments: null,
  fields: null
)
```

