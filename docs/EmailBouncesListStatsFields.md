# EgoiRubyClient::EmailBouncesListStatsFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bounce_date** | **Boolean** | True to include bounce date, false otherwise |  |
| **bounce_type** | **Boolean** | True to include bounce type, false otherwise |  |
| **bounce_detail** | **Boolean** | True to include bounce detail, false otherwise |  |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::EmailBouncesListStatsFields.new(
  bounce_date: null,
  bounce_type: null,
  bounce_detail: null
)
```

