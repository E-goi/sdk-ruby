# EgoiRubyClient::SavedSegmentAllOf1SegmentFilterSegmentFilterArray

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_field** | **String** | Field internal name (retrieve fields using GET: /lists/{list_id}/fields) | [optional] |
| **segment_operator** | **String** | Segment operator used for comparison. When using a range of dates split them                                             using the following format: date1||date2 | [optional] |
| **segment_value** | **String** | Segment search value | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SavedSegmentAllOf1SegmentFilterSegmentFilterArray.new(
  segment_field: null,
  segment_operator: null,
  segment_value: null
)
```

