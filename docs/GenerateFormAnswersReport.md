# EgoiRubyClient::GenerateFormAnswersReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **forms** | [**Array&lt;AdvancedReportFormsInner&gt;**](AdvancedReportFormsInner.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateFormAnswersReport.new(
  title: Report title,
  range: null,
  forms: null,
  callback_url: null
)
```

