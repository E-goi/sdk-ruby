# EgoiRubyClient::SegmentCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total returned segments | [optional] |
| **items** | [**Array&lt;Segment&gt;**](Segment.md) | Returned segments | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::SegmentCollection.new(
  total_items: 1,
  items: null
)
```

