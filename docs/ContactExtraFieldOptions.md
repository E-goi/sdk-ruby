# EgoiRubyClient::ContactExtraFieldOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_id** | **Integer** |  | [optional] |
| **format** | **String** | Extra field format | [optional][readonly] |
| **value** | **Array&lt;Integer&gt;** | Extra field options Id&#39;s &lt;a href&#x3D;&#39;/api/v3/#tag/Fields/operation/getAllFieldOptions&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to getAllFieldOptions documentation]&lt;/a&gt; | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::ContactExtraFieldOptions.new(
  field_id: 1,
  format: null,
  value: [1,2]
)
```

