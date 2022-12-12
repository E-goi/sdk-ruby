# EgoiRubyClient::TagSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of segment | [optional][readonly] |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |
| **segment_id** | **String** |  |  |
| **name** | **String** | Name of the segment | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::TagSegment.new(
  type: null,
  created: null,
  updated: null,
  segment_id: null,
  name: null
)
```

