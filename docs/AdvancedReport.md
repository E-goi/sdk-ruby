# EgoiRubyClient::AdvancedReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **advanced_report_id** | **Integer** |  | [optional][readonly] |
| **title** | **String** | Advanced report title | [optional] |
| **hash** | **String** | Advanced report hash | [optional] |
| **file** | **String** | Advanced report file | [optional] |
| **status** | **String** | Advanced report status | [optional] |
| **created** | **Time** |  | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::AdvancedReport.new(
  advanced_report_id: 1,
  title: Report title,
  hash: null,
  file: null,
  status: null,
  created: null
)
```

