# EgoiRubyClient::EmailReportByReaderReaderInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reader** | **String** | Reader | [optional] |
| **type** | **String** | Type | [optional] |
| **opens** | **Integer** | Total number of open messages | [optional] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailReportByReaderReaderInner.new(
  reader: E-goi,
  type: webmail,
  opens: 3
)
```

