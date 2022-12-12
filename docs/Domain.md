# EgoiRubyClient::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **domain** | **String** | Domain | [optional] |
| **list_id** | **String** | List id | [optional] |
| **status** | **String** | Domain status | [optional][readonly] |

## Example

```ruby
require 'egoi-ruby-client'

instance = EgoiRubyClient::Domain.new(
  domain: e-goi.com,
  list_id: 1,
  status: null
)
```

