# EgoiRubyClient::AdvancedReportsCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_items** | **Integer** | Total advanced reports | [optional] |
| **items** | [**Array&lt;AdvancedReport&gt;**](AdvancedReport.md) | Returned advanced reports | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReportsCollection.new(
  total_items: 1,
  items: null
)
```

