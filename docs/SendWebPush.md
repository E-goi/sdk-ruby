# EgoiRubyClient::SendWebPush

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **site_id** | **Integer** |  |  |
| **segments** | [**OSegmentsWithoutContactActionSend**](OSegmentsWithoutContactActionSend.md) |  |  |
| **notify** | **Array&lt;Integer&gt;** | Array of IDs of the users to notify | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendWebPush.new(
  site_id: 1,
  segments: null,
  notify: null
)
```

