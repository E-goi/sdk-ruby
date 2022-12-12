# EgoiRubyClient::UpdateBySegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Updates contacts in the selected segment (excluding removed contacts) |  |
| **segment_id** | **String** | Segment ID to update channel field |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UpdateBySegment.new(
  type: null,
  segment_id: null
)
```

