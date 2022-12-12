# EgoiRubyClient::SendPush

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **segments** | [**OSegmentsWithoutContactActionSend**](OSegmentsWithoutContactActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendPush.new(
  app_id: null,
  segments: null,
  notify: null
)
```

