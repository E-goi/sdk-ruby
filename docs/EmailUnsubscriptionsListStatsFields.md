# EgoiRubyClient::EmailUnsubscriptionsListStatsFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsubscription_method** | **Boolean** | True to include unsubscription method, false otherwise |  |
| **unsubscription_motive** | **Boolean** | True to include unsubscription motive, false otherwise |  |
| **unsubscription_date** | **Boolean** | True to include unsubscription date, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailUnsubscriptionsListStatsFields.new(
  unsubscription_method: null,
  unsubscription_motive: null,
  unsubscription_date: null
)
```

