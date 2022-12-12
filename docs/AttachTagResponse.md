# EgoiRubyClient::AttachTagResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **Integer** |  | [optional][readonly] |
| **success** | **Array&lt;String&gt;** | Array of contacts where the tag was successfully attached | [optional] |
| **error** | **Array&lt;String&gt;** | Array of contacts where the tag was not successfully attached | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AttachTagResponse.new(
  tag_id: 1,
  success: null,
  error: null
)
```

