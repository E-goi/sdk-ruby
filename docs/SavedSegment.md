# EgoiRubyClient::SavedSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** |  | [optional][readonly] |
| **updated** | **Time** |  | [optional][readonly] |
| **type** | **String** | Type of segment | [optional][readonly] |
| **segment_filter** | [**SavedSegmentAllOf1SegmentFilter**](SavedSegmentAllOf1SegmentFilter.md) |  |  |
| **segment_id** | **String** |  |  |
| **name** | **String** | Name of the segment | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SavedSegment.new(
  created: null,
  updated: null,
  type: null,
  segment_filter: null,
  segment_id: null,
  name: null
)
```

