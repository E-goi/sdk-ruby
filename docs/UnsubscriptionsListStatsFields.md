# EgoiRubyClient::UnsubscriptionsListStatsFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsubscription_method** | **Boolean** | True to include unsubscription method, false otherwise |  |
| **unsubscription_src** | **Boolean** | True to include unsubscription source, false otherwise |  |
| **unsubscription_date** | **Boolean** | True to include unsubscription date, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::UnsubscriptionsListStatsFields.new(
  unsubscription_method: null,
  unsubscription_src: null,
  unsubscription_date: null
)
```

