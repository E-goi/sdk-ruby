# EgoiRubyClient::SendSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Use this segment type to send to specific segments |  |
| **data** | **Array&lt;String&gt;** | Array of segment IDs to send the campaign |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SendSegment.new(
  type: null,
  data: null
)
```

