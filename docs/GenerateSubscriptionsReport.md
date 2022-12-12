# EgoiRubyClient::GenerateSubscriptionsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **lists** | **Array&lt;Integer&gt;** | Array of List Id&#39;s |  |
| **columns** | [**AdvancedReportSubscriptionsColumns**](AdvancedReportSubscriptionsColumns.md) |  |  |
| **options** | [**AdvancedReportSubscriptionsOptions**](AdvancedReportSubscriptionsOptions.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateSubscriptionsReport.new(
  title: Report title,
  range: null,
  lists: null,
  columns: null,
  options: null,
  callback_url: null
)
```

