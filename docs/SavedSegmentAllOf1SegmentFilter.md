# EgoiRubyClient::SavedSegmentAllOf1SegmentFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_filter_array** | [**Array&lt;SavedSegmentAllOf1SegmentFilterSegmentFilterArray&gt;**](SavedSegmentAllOf1SegmentFilterSegmentFilterArray.md) | Array of filters | [optional] |
| **boolean_operator** | **String** | Boolean operator for all segment conditions | [optional][default to &#39;and&#39;] |
| **invert** | **Boolean** | If true inverts the search result | [optional][default to false] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SavedSegmentAllOf1SegmentFilter.new(
  segment_filter_array: null,
  boolean_operator: null,
  invert: null
)
```

