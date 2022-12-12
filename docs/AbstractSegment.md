# EgoiRubyClient::AbstractSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **String** |  | [optional] |
| **name** | **String** | Name of the segment | [optional] |
| **type** | **String** | Type of segment | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AbstractSegment.new(
  segment_id: null,
  name: null,
  type: null
)
```

