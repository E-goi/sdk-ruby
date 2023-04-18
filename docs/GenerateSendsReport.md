# EgoiRubyClient::GenerateSendsReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Advanced report title |  |
| **range** | [**AdvancedReportRange**](AdvancedReportRange.md) |  |  |
| **lists** | **Array&lt;Integer&gt;** | Array of List Id&#39;s |  |
| **columns** | [**AdvancedReportSendsColumns**](AdvancedReportSendsColumns.md) |  |  |
| **options** | [**AdvancedReportSendsOptions**](AdvancedReportSendsOptions.md) |  |  |
| **callback_url** | **String** | URL which will receive the information of the report &lt;a href&#x3D;&#39;/usecases/callbacks/&#39; target&#x3D;&#39;_blank&#39;&gt;[Go to callback documentation]&lt;/a&gt; | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::GenerateSendsReport.new(
  title: Report title,
  range: null,
  lists: null,
  columns: null,
  options: null,
  callback_url: null
)
```

